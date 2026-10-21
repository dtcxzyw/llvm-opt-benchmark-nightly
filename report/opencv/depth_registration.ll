Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/depth_registration?download=true
inline.NumInlined: 452
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2cv19performRegistrationItEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.ix, align 8, !tbaa !31
  store i32 -1056833531, ptr %28, align 8, !tbaa !32
  store ptr %29, ptr %i.iz, align 8, !tbaa !19
  store i64 12884901889, ptr %i.iy, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.ja, align 8, !tbaa !31
  store i32 -1056833531, ptr %30, align 8, !tbaa !32
  store ptr %31, ptr %i.jc, align 8, !tbaa !19
  store i64 12884901889, ptr %i.jb, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !32
  store ptr %2, ptr %i.je, align 8, !tbaa !19
  store i64 12884901891, ptr %i.jd, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.jf, align 8, !tbaa !17
  store i32 0, ptr %i.jg, align 4, !tbaa !16
  store i32 -2130640891, ptr %33, align 8, !tbaa !32
  store ptr %3, ptr %i.jh, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.jj, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !32
  store ptr %25, ptr %i.ji, align 8, !tbaa !19
  %i.jz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.jz, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %.pre = load ptr, ptr %25, align 8, !tbaa !45
  %.pre464 = load ptr, ptr %i.ir, align 8, !tbaa !29
  %.pre465 = load i64, ptr %i.is, align 8, !tbaa !28
  %.pre466 = mul i64 %.pre465, %indvars.iv448
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kb, %bb.v ], [ %i.ka, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.kc = load ptr, ptr %25, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.as

bb.x:                                             ; preds = %bb.p
  %i.kd = load ptr, ptr %i.il, align 8, !tbaa !47 ; 3 uses
  %i.ke = load ptr, ptr %i.ir, align 8, !tbaa !29 ; 4 uses
  %i.kf = load i64, ptr %i.is, align 8, !tbaa !28
  %i.kg = mul i64 %i.kf, %indvars.iv448           ; 4 uses
  %i.kh = icmp ult ptr %i.ju, %i.kd
  br i1 %i.kh, label %.lr.ph411.preheader, label %.loopexit

.lr.ph411.preheader:                              ; preds = %bb.x
  %i.ki = ptrtoaddr ptr %i.kd to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kg ; 6 uses
  %i.kk = xor i64 %i.jv, -1
  %i.kl = add i64 %i.kk, %i.ki                    ; 2 uses
  %i.km = lshr i64 %i.kl, 3
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check504 = icmp ult i64 %i.kl, 24
  br i1 %min.iters.check504, label %.lr.ph411.preheader520, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph411.preheader
  %n.vec506 = and i64 %i.kn, 4611686018427387900  ; 4 uses
  %i.ko = mul i64 %n.vec506, 12
  %i.kp = getelementptr i8, ptr %i.kj, i64 %i.ko
  %i.kq = shl i64 %n.vec506, 3
  %i.kr = getelementptr i8, ptr %i.ju, i64 %i.kq
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 3 uses
  %i.ks = mul i64 %index508, 12                   ; 4 uses
  %next.gep509 = getelementptr i8, ptr %i.kj, i64 %i.ks ; 3 uses
  %i.kt = getelementptr i8, ptr %i.kj, i64 %i.ks  ; 3 uses
  %next.gep510 = getelementptr i8, ptr %i.kt, i64 12
  %i.ku = getelementptr i8, ptr %i.kj, i64 %i.ks  ; 3 uses
  %next.gep511 = getelementptr i8, ptr %i.ku, i64 24
  %i.kv = getelementptr i8, ptr %i.kj, i64 %i.ks  ; 3 uses
  %next.gep512 = getelementptr i8, ptr %i.kv, i64 36
  %i.kw = shl i64 %index508, 3
  %next.gep513 = getelementptr i8, ptr %i.ju, i64 %i.kw
  %i.kx = load float, ptr %next.gep509, align 4, !tbaa !40
  %i.ky = load float, ptr %next.gep510, align 4, !tbaa !40
  %i.kz = load float, ptr %next.gep511, align 4, !tbaa !40
  %i.la = load float, ptr %next.gep512, align 4, !tbaa !40
  %i.lb = insertelement <4 x float> poison, float %i.kx, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.ky, i64 1
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 2
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 3
  %i.lf = getelementptr inbounds nuw i8, ptr %next.gep509, i64 8
  %i.lg = getelementptr i8, ptr %i.kt, i64 20
  %i.lh = getelementptr i8, ptr %i.ku, i64 32
  %i.li = getelementptr i8, ptr %i.kv, i64 44
  %i.lj = load float, ptr %i.lf, align 4, !tbaa !42
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !42
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !42
  %i.lm = load float, ptr %i.li, align 4, !tbaa !42
  %i.ln = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.lo = insertelement <4 x float> %i.ln, float %i.lk, i64 1
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 2
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 3 ; 2 uses
  %i.lr = fdiv <4 x float> %i.le, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %next.gep509, i64 4
  %i.lt = getelementptr i8, ptr %i.kt, i64 16
  %i.lu = getelementptr i8, ptr %i.ku, i64 28
  %i.lv = getelementptr i8, ptr %i.kv, i64 40
  %i.lw = load float, ptr %i.ls, align 4, !tbaa !41
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !41
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !41
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !41
  %i.ma = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.mb = insertelement <4 x float> %i.ma, float %i.lx, i64 1
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 2
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 3
  %i.me = fdiv <4 x float> %i.md, %i.lq
  %interleaved.vec514 = shufflevector <4 x float> %i.lr, <4 x float> %i.me, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec514, ptr %next.gep513, align 4, !tbaa !31
  %index.next515 = add nuw i64 %index508, 4       ; 2 uses
  %i.mf = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.mf, label %middle.block516, label %vector.body507, !llvm.loop !86

middle.block516:                                  ; preds = %vector.body507
  %cmp.n517 = icmp eq i64 %i.kn, %n.vec506
  br i1 %cmp.n517, label %.loopexit, label %.lr.ph411.preheader520

.lr.ph411.preheader520:                           ; preds = %.lr.ph411.preheader, %middle.block516
  %.096409.ph = phi ptr [ %i.kj, %.lr.ph411.preheader ], [ %i.kp, %middle.block516 ]
  %.097408.ph = phi ptr [ %i.ju, %.lr.ph411.preheader ], [ %i.kr, %middle.block516 ]
  br label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader520, %.lr.ph411
  %.096409 = phi ptr [ %i.mn, %.lr.ph411 ], [ %.096409.ph, %.lr.ph411.preheader520 ] ; 3 uses
  %.097408 = phi ptr [ %i.mm, %.lr.ph411 ], [ %.097408.ph, %.lr.ph411.preheader520 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.096409, i64 8
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !42
  %i.mi = load <2 x float>, ptr %.096409, align 4, !tbaa !31
  %i.mj = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ml = fdiv <2 x float> %i.mi, %i.mk
  store <2 x float> %i.ml, ptr %.097408, align 4, !tbaa !31
  %i.mm = getelementptr inbounds nuw i8, ptr %.097408, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.096409, i64 12
  %i.mo = icmp ult ptr %i.mm, %i.kd
  br i1 %i.mo, label %.lr.ph411, label %.loopexit, !llvm.loop !87

.loopexit:                                        ; preds = %.lr.ph411, %middle.block516, %bb.x, %bb.t
  %.pre-phi = phi i64 [ %.pre466, %bb.t ], [ %i.kg, %bb.x ], [ %i.kg, %middle.block516 ], [ %i.kg, %.lr.ph411 ]
  %i.mp = phi ptr [ %.pre464, %bb.t ], [ %i.ke, %bb.x ], [ %i.ke, %middle.block516 ], [ %i.ke, %.lr.ph411 ]
  %i.mq = phi ptr [ %.pre, %bb.t ], [ %i.ju, %bb.x ], [ %i.ju, %middle.block516 ], [ %i.ju, %.lr.ph411 ] ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.pre-phi ; 2 uses
  %i.ms = load i32, ptr %i.id, align 4, !tbaa !35 ; 2 uses
  %i.mt = sext i32 %i.ms to i64
  %.idx = mul nsw i64 %i.mt, 12
  %i.mu = getelementptr inbounds i8, ptr %i.mr, i64 %.idx
  %i.mv = icmp sgt i32 %i.ms, 0
  br i1 %i.mv, label %.lr.ph418, label %._crit_edge419

.lr.ph418:                                        ; preds = %.loopexit, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread
  %.094416 = phi ptr [ %i.pl, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.mr, %.loopexit ] ; 2 uses
  %.095415 = phi ptr [ %i.pk, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.mq, %.loopexit ] ; 3 uses
  %i.mw = load float, ptr %.095415, align 4       ; 2 uses
  %i.mx = fcmp ord float %i.mw, 0.000000e+00
  br i1 %i.mx, label %bb.y, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.y:                                             ; preds = %.lr.ph418
  %.095.sroa_idx = getelementptr inbounds nuw i8, ptr %.095415, i64 4
  %i.my = load float, ptr %.095.sroa_idx, align 4
  %i.mz = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.na = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.mz) ; 6 uses
  %i.nb = insertelement <4 x float> poison, float %i.my, i64 0
  %i.nc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.nb) ; 13 uses
  %i.nd = icmp slt i32 %i.na, %.sroa.0381.0.extract.trunc
  %i.ne = or i32 %i.nc, %i.na
  %i.nf = icmp sgt i32 %i.ne, -1
  %or.cond385.not395 = and i1 %i.nd, %i.nf
  %i.ng = icmp slt i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond386 = and i1 %i.ng, %or.cond385.not395
  br i1 %or.cond386, label %bb.z, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.nh = getelementptr inbounds nuw i8, ptr %.094416, i64 8
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !42
  %i.nj = fmul float %i.in, %i.ni
  %i.nk = fpext float %i.nj to double
  %i.nl = fadd double %i.nk, 5.000000e-01
  %i.nm = fptoui double %i.nl to i16
  %i.nn = freeze i16 %i.nm                        ; 14 uses
  %i.no = load i32, ptr %i.jk, align 4, !tbaa !51
  %.fr424 = freeze i32 %i.no
  %i.np = icmp slt i32 %.fr424, 2                 ; 2 uses
  %i.nq = load ptr, ptr %i.jl, align 8, !tbaa !29 ; 7 uses
  %i.nr = load i64, ptr %i.jm, align 8
  %i.ns = zext nneg i32 %i.nc to i64
  %i.nt = mul i64 %i.nr, %i.ns
  %.sink.idx.i = select i1 %i.np, i64 0, i64 %i.nt
  %.sink.i159 = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sink.idx.i
  %i.nu = zext nneg i32 %i.na to i64              ; 3 uses
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %.sink.i159, i64 %i.nu ; 2 uses
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !93
  %i.nx = add i16 %i.nw, -1
  %or.cond387.not = icmp ult i16 %i.nx, %i.nn
  br i1 %or.cond387.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i16 %i.nn, ptr %i.nv, align 2, !tbaa !93
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ny = add nsw i32 %i.na, -1                   ; 4 uses
  %i.nz = add nsw i32 %i.nc, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.na, 0
  %i.oa = icmp sle i32 %i.na, %.sroa.0381.0.extract.trunc
  %or.cond388.us = and i1 %.not.i160.us, %i.oa    ; 4 uses
  br i1 %i.np, label %bb.ad, label %.split.us.preheader.a

.split.us.preheader.a:                            ; preds = %bb.ac
  br i1 %or.cond388.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %or.cond388.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ob = zext nneg i32 %i.ny to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.ob ; 2 uses
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !93
  %i.oe = add i16 %i.od, -1
  %or.cond390.not.us = icmp ult i16 %i.oe, %i.nn
  br i1 %or.cond390.not.us, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i16 %i.nn, ptr %i.oc, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.ad, %bb.af, %bb.ae
  %.not8.i161.us.1 = icmp sgt i32 %i.nc, 0
  %i.of = icmp sle i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond389.us.1 = and i1 %.not8.i161.us.1, %i.of
  br i1 %or.cond389.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.nu ; 2 uses
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !93
  %i.oi = add i16 %i.oh, -1
  %or.cond390.not.us.1 = icmp ult i16 %i.oi, %i.nn
  br i1 %or.cond390.not.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i16 %i.nn, ptr %i.og, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1: ; preds = %bb.ah, %bb.ag, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  br i1 %or.cond388.us, label %bb.ai, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ai:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1
  %.not8.i161.us.2 = icmp sgt i32 %i.nc, 0
  %i.oj = icmp sle i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond389.us.2 = and i1 %.not8.i161.us.2, %i.oj
  br i1 %or.cond389.us.2, label %bb.aj, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ok = zext nneg i32 %i.ny to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.ok ; 2 uses
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !93
  %i.on = add i16 %i.om, -1
  %or.cond390.not.us.2 = icmp ult i16 %i.on, %i.nn
  br i1 %or.cond390.not.us.2, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.nn, ptr %i.ol, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.al:                                            ; preds = %.split.us.preheader.a
  %i.oo = load i64, ptr %i.jm, align 8
  %i.op = zext nneg i32 %i.nc to i64
  %i.oq = mul i64 %i.oo, %i.op
  %.sink.i164 = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.oq
  %i.or = zext nneg i32 %i.ny to i64
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %.sink.i164, i64 %i.or ; 2 uses
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !93
  %i.ou = add i16 %i.ot, -1
  %or.cond390.not = icmp ult i16 %i.ou, %i.nn
  br i1 %or.cond390.not, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i16 %i.nn, ptr %i.os, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread: ; preds = %bb.am, %.split.us.preheader.a, %bb.al
  %.not8.i161.1 = icmp sgt i32 %i.nc, 0
  %i.ov = icmp sle i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond389.1 = and i1 %.not8.i161.1, %i.ov
  br i1 %or.cond389.1, label %bb.an, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

bb.an:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  %i.ow = load i64, ptr %i.jm, align 8
  %i.ox = zext nneg i32 %i.nz to i64
  %i.oy = mul i64 %i.ow, %i.ox
  %.sink.i164.1 = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.oy
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %.sink.i164.1, i64 %i.nu ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !93
  %i.pb = add i16 %i.pa, -1
  %or.cond390.not.1 = icmp ult i16 %i.pb, %i.nn
  br i1 %or.cond390.not.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i16 %i.nn, ptr %i.oz, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1: ; preds = %bb.ao, %bb.an, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  br i1 %or.cond388.us, label %bb.ap, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ap:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1
  %.not8.i161.2 = icmp sgt i32 %i.nc, 0
  %i.pc = icmp sle i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond389.2 = and i1 %.not8.i161.2, %i.pc
  br i1 %or.cond389.2, label %bb.aq, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.pd = load i64, ptr %i.jm, align 8
  %i.pe = zext nneg i32 %i.nz to i64
  %i.pf = mul i64 %i.pd, %i.pe
  %.sink.i164.2 = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.pf
  %i.pg = zext nneg i32 %i.ny to i64
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %.sink.i164.2, i64 %i.pg ; 2 uses
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !93
  %i.pj = add i16 %i.pi, -1
  %or.cond390.not.2 = icmp ult i16 %i.pj, %i.nn
  br i1 %or.cond390.not.2, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i16 %i.nn, ptr %i.ph, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread: ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1, %bb.ap, %bb.aq, %bb.ar, %bb.ak, %bb.aj, %bb.ai, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1, %bb.y, %bb.ab, %.lr.ph418
  %i.pk = getelementptr inbounds nuw i8, ptr %.095415, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %.094416, i64 12 ; 2 uses
  %i.pm = icmp ult ptr %i.pl, %i.mu
  br i1 %i.pm, label %.lr.ph418, label %._crit_edge419, !llvm.loop !88

._crit_edge419:                                   ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, %.loopexit
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %i.pn = load i32, ptr %i.io, align 8, !tbaa !34
  %i.po = sext i32 %i.pn to i64
  %i.pp = icmp slt i64 %indvars.iv.next449, %i.po
  br i1 %i.pp, label %bb.p, label %._crit_edge423, !llvm.loop !89

bb.as:                                            ; preds = %bb.w
  %i.pq = load ptr, ptr %i.im, align 8, !tbaa !46
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = ptrtoint ptr %i.kc to i64
  %i.pt = sub i64 %i.pr, %i.ps
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.pt) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166: ; preds = %bb.as, %bb.w, %bb.o
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %i.jt, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.w ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, %.body
  %.pn144.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166 ], [ %.pn.pn.pn.pn, %.body ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0460)
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19performRegistrationIfEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 %5, i1 noundef zeroext %6, float noundef %7, ptr noundef nonnull align 8 dereferenceable(208) %8) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Range", align 4         ; 5 uses
  %10 = alloca %"class.cv::Range", align 8        ; 4 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %12 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %13 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %14 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %15 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %17 = alloca %"class.cv::Mat_", align 8         ; 9 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %.sroa.0461 = alloca [15 x float], align 4      ; 9 uses
  %19 = alloca %"class.cv::Matx.0", align 16      ; 27 uses
  %20 = alloca %"class.cv::Mat_.3", align 8       ; 14 uses
  %21 = alloca %"class.cv::Mat_.3", align 8       ; 11 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %25 = alloca %"class.std::vector", align 8      ; 10 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::Mat_.3", align 8       ; 7 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %29 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %31 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %.sroa.0382.0.extract.trunc = trunc i64 %5 to i32 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %5, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %.sroa.3.0.extract.trunc, i32 noundef %.sroa.0382.0.extract.trunc, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store double +qnan, ptr %16, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN2cv4Mat_IfEC2ENS_5Size_IiEERKf.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %bb.c, %bb.at, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.j, %bb.c ], [ %.pn144.pn.pn.pn.pn, %bb.at ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  br label %common.resume

_ZN2cv4Mat_IfEC2ENS_5Size_IiEERKf.exit:           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.d = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %.preheader397 unwind label %bb.c ; 0 uses

.preheader397:                                    ; preds = %_ZN2cv4Mat_IfEC2ENS_5Size_IiEERKf.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !16
  store i32 -2130640891, ptr %18, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %3, ptr %i.g, align 8, !tbaa !19
  %i.h = call noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0461)
  %.sroa.0461.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.0461.12..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa !31
  %scevgep427.1 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0461.16.scevgep.1.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461.16.scevgep.1.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep427.1, i64 12, i1 false), !tbaa !31
  %scevgep427.2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0461.32.scevgep.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461.32.scevgep.2.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep427.2, i64 12, i1 false), !tbaa !31
  %i.i = icmp sgt i32 %i.h, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %19, i8 0, i64 64, i1 false), !tbaa !31
  br i1 %i.i, label %bb.d, label %.preheader

bb.c:                                             ; preds = %_ZN2cv4Mat_IfEC2ENS_5Size_IiEERKf.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %common.resume

bb.d:                                             ; preds = %.preheader397
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13, !noalias !111
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !tbaa !31, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13, !noalias !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %14, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.0461, i64 60, i1 false), !tbaa.struct !33, !noalias !111
  %.sroa.9462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 60
  store float 1.000000e+00, ptr %.sroa.9462.0..sroa_idx, align 4, !tbaa !14, !noalias !111
  store float 1.000000e+00, ptr %15, align 16, !tbaa !31, !noalias !111
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 20
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !31, !noalias !111
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 40
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !31, !noalias !111
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 60
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !31, !noalias !111
  %i.o = call noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef nonnull %14, i64 noundef 16, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(64) %15, i64 noundef 16, i32 noundef 4), !noalias !111
  %.not393 = icmp eq i32 %i.o, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13, !noalias !111
  br i1 %.not393, label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.20317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.36333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.52349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.p = load <4 x float>, ptr %15, align 16
  %i.q = load <4 x float>, ptr %.sroa.20317.0..sroa_idx, align 16
  %i.r = load <4 x float>, ptr %.sroa.36333.0..sroa_idx, align 16
  %i.s = load <4 x float>, ptr %.sroa.52349.0..sroa_idx, align 16
  br label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit

_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit:             ; preds = %bb.d, %bb.e
  %i.t = phi <4 x float> [ %i.s, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.u = phi <4 x float> [ %i.r, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.v = phi <4 x float> [ %i.q, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.w = phi <4 x float> [ %i.p, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13, !noalias !111
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = load <4 x float>, ptr %4, align 4, !tbaa !31 ; 4 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.ad = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.v, <4 x float> %i.ac)
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ag = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.u, <4 x float> %i.ae)
  %i.ah = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ai = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.t, <4 x float> %i.ag)
  store <4 x float> %i.ai, ptr %19, align 16
  %.sroa.7369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.aj = load <4 x float>, ptr %i.x, align 4, !tbaa !31 ; 4 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.am = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.an = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.v, <4 x float> %i.al)
  %i.ao = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.u, <4 x float> %i.an)
  %i.aq = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ar = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.t, <4 x float> %i.ap)
  store <4 x float> %i.ar, ptr %.sroa.7369.0..sroa_idx, align 16
  %.sroa.11373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.as = load <4 x float>, ptr %i.y, align 4, !tbaa !31 ; 4 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.av = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.v, <4 x float> %i.au)
  %i.ax = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ay = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.u, <4 x float> %i.aw)
  %i.az = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.t, <4 x float> %i.ay)
  store <4 x float> %i.ba, ptr %.sroa.11373.0..sroa_idx, align 16
end_hunk_0
begin_hunk_1_@_ZN2cv19performRegistrationIfEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.ki, align 8, !tbaa !31
  store i32 -1056833531, ptr %28, align 8, !tbaa !32
  store ptr %29, ptr %i.kk, align 8, !tbaa !19
  store i64 12884901889, ptr %i.kj, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.kl, align 8, !tbaa !31
  store i32 -1056833531, ptr %30, align 8, !tbaa !32
  store ptr %31, ptr %i.kn, align 8, !tbaa !19
  store i64 12884901889, ptr %i.km, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !32
  store ptr %2, ptr %i.kp, align 8, !tbaa !19
  store i64 12884901891, ptr %i.ko, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.kq, align 8, !tbaa !17
  store i32 0, ptr %i.kr, align 4, !tbaa !16
  store i32 -2130640891, ptr %33, align 8, !tbaa !32
  store ptr %3, ptr %i.ks, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.ku, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !32
  store ptr %25, ptr %i.kt, align 8, !tbaa !19
  %i.lk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.lk, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %.pre = load ptr, ptr %25, align 8, !tbaa !45
  %.pre465 = load ptr, ptr %i.kc, align 8, !tbaa !29
  %.pre466 = load i64, ptr %i.kd, align 8, !tbaa !28
  %.pre467 = mul i64 %.pre466, %indvars.iv449
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lm, %bb.v ], [ %i.ll, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.ln = load ptr, ptr %25, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.as

bb.x:                                             ; preds = %bb.p
  %i.lo = load ptr, ptr %i.jw, align 8, !tbaa !47 ; 3 uses
  %i.lp = load ptr, ptr %i.kc, align 8, !tbaa !29 ; 4 uses
  %i.lq = load i64, ptr %i.kd, align 8, !tbaa !28
  %i.lr = mul i64 %i.lq, %indvars.iv449           ; 4 uses
  %i.ls = icmp ult ptr %i.lf, %i.lo
  br i1 %i.ls, label %.lr.ph412.preheader, label %.loopexit

.lr.ph412.preheader:                              ; preds = %bb.x
  %i.lt = ptrtoaddr ptr %i.lo to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lr ; 6 uses
  %i.lv = xor i64 %i.lg, -1
  %i.lw = add i64 %i.lv, %i.lt                    ; 2 uses
  %i.lx = lshr i64 %i.lw, 3
  %i.ly = add nuw nsw i64 %i.lx, 1                ; 2 uses
  %min.iters.check502 = icmp ult i64 %i.lw, 24
  br i1 %min.iters.check502, label %.lr.ph412.preheader518, label %vector.ph503

vector.ph503:                                     ; preds = %.lr.ph412.preheader
  %n.vec504 = and i64 %i.ly, 4611686018427387900  ; 4 uses
  %i.lz = mul i64 %n.vec504, 12
  %i.ma = getelementptr i8, ptr %i.lu, i64 %i.lz
  %i.mb = shl i64 %n.vec504, 3
  %i.mc = getelementptr i8, ptr %i.lf, i64 %i.mb
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next513, %vector.body505 ] ; 3 uses
  %i.md = mul i64 %index506, 12                   ; 4 uses
  %next.gep507 = getelementptr i8, ptr %i.lu, i64 %i.md ; 3 uses
  %i.me = getelementptr i8, ptr %i.lu, i64 %i.md  ; 3 uses
  %next.gep508 = getelementptr i8, ptr %i.me, i64 12
  %i.mf = getelementptr i8, ptr %i.lu, i64 %i.md  ; 3 uses
  %next.gep509 = getelementptr i8, ptr %i.mf, i64 24
  %i.mg = getelementptr i8, ptr %i.lu, i64 %i.md  ; 3 uses
  %next.gep510 = getelementptr i8, ptr %i.mg, i64 36
  %i.mh = shl i64 %index506, 3
  %next.gep511 = getelementptr i8, ptr %i.lf, i64 %i.mh
  %i.mi = load float, ptr %next.gep507, align 4, !tbaa !40
  %i.mj = load float, ptr %next.gep508, align 4, !tbaa !40
  %i.mk = load float, ptr %next.gep509, align 4, !tbaa !40
  %i.ml = load float, ptr %next.gep510, align 4, !tbaa !40
  %i.mm = insertelement <4 x float> poison, float %i.mi, i64 0
  %i.mn = insertelement <4 x float> %i.mm, float %i.mj, i64 1
  %i.mo = insertelement <4 x float> %i.mn, float %i.mk, i64 2
  %i.mp = insertelement <4 x float> %i.mo, float %i.ml, i64 3
  %i.mq = getelementptr inbounds nuw i8, ptr %next.gep507, i64 8
  %i.mr = getelementptr i8, ptr %i.me, i64 20
  %i.ms = getelementptr i8, ptr %i.mf, i64 32
  %i.mt = getelementptr i8, ptr %i.mg, i64 44
  %i.mu = load float, ptr %i.mq, align 4, !tbaa !42
  %i.mv = load float, ptr %i.mr, align 4, !tbaa !42
  %i.mw = load float, ptr %i.ms, align 4, !tbaa !42
  %i.mx = load float, ptr %i.mt, align 4, !tbaa !42
  %i.my = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.mz = insertelement <4 x float> %i.my, float %i.mv, i64 1
  %i.na = insertelement <4 x float> %i.mz, float %i.mw, i64 2
  %i.nb = insertelement <4 x float> %i.na, float %i.mx, i64 3 ; 2 uses
  %i.nc = fdiv <4 x float> %i.mp, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %next.gep507, i64 4
  %i.ne = getelementptr i8, ptr %i.me, i64 16
  %i.nf = getelementptr i8, ptr %i.mf, i64 28
  %i.ng = getelementptr i8, ptr %i.mg, i64 40
  %i.nh = load float, ptr %i.nd, align 4, !tbaa !41
  %i.ni = load float, ptr %i.ne, align 4, !tbaa !41
  %i.nj = load float, ptr %i.nf, align 4, !tbaa !41
  %i.nk = load float, ptr %i.ng, align 4, !tbaa !41
  %i.nl = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nm = insertelement <4 x float> %i.nl, float %i.ni, i64 1
  %i.nn = insertelement <4 x float> %i.nm, float %i.nj, i64 2
  %i.no = insertelement <4 x float> %i.nn, float %i.nk, i64 3
  %i.np = fdiv <4 x float> %i.no, %i.nb
  %interleaved.vec512 = shufflevector <4 x float> %i.nc, <4 x float> %i.np, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec512, ptr %next.gep511, align 4, !tbaa !31
  %index.next513 = add nuw i64 %index506, 4       ; 2 uses
  %i.nq = icmp eq i64 %index.next513, %n.vec504
  br i1 %i.nq, label %middle.block514, label %vector.body505, !llvm.loop !107

middle.block514:                                  ; preds = %vector.body505
  %cmp.n515 = icmp eq i64 %i.ly, %n.vec504
  br i1 %cmp.n515, label %.loopexit, label %.lr.ph412.preheader518

.lr.ph412.preheader518:                           ; preds = %.lr.ph412.preheader, %middle.block514
  %.096410.ph = phi ptr [ %i.lu, %.lr.ph412.preheader ], [ %i.ma, %middle.block514 ]
  %.097409.ph = phi ptr [ %i.lf, %.lr.ph412.preheader ], [ %i.mc, %middle.block514 ]
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %.lr.ph412.preheader518, %.lr.ph412
  %.096410 = phi ptr [ %i.ny, %.lr.ph412 ], [ %.096410.ph, %.lr.ph412.preheader518 ] ; 3 uses
  %.097409 = phi ptr [ %i.nx, %.lr.ph412 ], [ %.097409.ph, %.lr.ph412.preheader518 ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.096410, i64 8
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !42
  %i.nt = load <2 x float>, ptr %.096410, align 4, !tbaa !31
  %i.nu = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.nv = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nw = fdiv <2 x float> %i.nt, %i.nv
  store <2 x float> %i.nw, ptr %.097409, align 4, !tbaa !31
  %i.nx = getelementptr inbounds nuw i8, ptr %.097409, i64 8 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.096410, i64 12
  %i.nz = icmp ult ptr %i.nx, %i.lo
  br i1 %i.nz, label %.lr.ph412, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %.lr.ph412, %middle.block514, %bb.x, %bb.t
  %.pre-phi = phi i64 [ %.pre467, %bb.t ], [ %i.lr, %bb.x ], [ %i.lr, %middle.block514 ], [ %i.lr, %.lr.ph412 ]
  %i.oa = phi ptr [ %.pre465, %bb.t ], [ %i.lp, %bb.x ], [ %i.lp, %middle.block514 ], [ %i.lp, %.lr.ph412 ]
  %i.ob = phi ptr [ %.pre, %bb.t ], [ %i.lf, %bb.x ], [ %i.lf, %middle.block514 ], [ %i.lf, %.lr.ph412 ] ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.pre-phi ; 2 uses
  %i.od = load i32, ptr %i.jo, align 4, !tbaa !35 ; 2 uses
  %i.oe = sext i32 %i.od to i64
  %.idx = mul nsw i64 %i.oe, 12
  %i.of = getelementptr inbounds i8, ptr %i.oc, i64 %.idx
  %i.og = icmp sgt i32 %i.od, 0
  br i1 %i.og, label %.lr.ph419, label %._crit_edge420

.lr.ph419:                                        ; preds = %.loopexit, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread
  %.094417 = phi ptr [ %i.qz, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.oc, %.loopexit ] ; 2 uses
  %.095416 = phi ptr [ %i.qy, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.ob, %.loopexit ] ; 3 uses
  %i.oh = load float, ptr %.095416, align 4       ; 2 uses
  %i.oi = fcmp ord float %i.oh, 0.000000e+00
  br i1 %i.oi, label %bb.y, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.y:                                             ; preds = %.lr.ph419
  %.095.sroa_idx = getelementptr inbounds nuw i8, ptr %.095416, i64 4
  %i.oj = load float, ptr %.095.sroa_idx, align 4
  %i.ok = insertelement <4 x float> poison, float %i.oh, i64 0
  %i.ol = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ok) ; 6 uses
  %i.om = insertelement <4 x float> poison, float %i.oj, i64 0
  %i.on = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.om) ; 13 uses
  %i.oo = icmp slt i32 %i.ol, %.sroa.0382.0.extract.trunc
  %i.op = or i32 %i.on, %i.ol
  %i.oq = icmp sgt i32 %i.op, -1
  %or.cond386.not396 = and i1 %i.oo, %i.oq
  %i.or = icmp slt i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond387 = and i1 %i.or, %or.cond386.not396
  br i1 %or.cond387, label %bb.z, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.os = getelementptr inbounds nuw i8, ptr %.094417, i64 8
  %i.ot = load float, ptr %i.os, align 4, !tbaa !42
  %i.ou = fmul float %i.jy, %i.ot                 ; 14 uses
  %i.ov = load i32, ptr %i.kv, align 4, !tbaa !51
  %.fr425 = freeze i32 %i.ov
  %i.ow = icmp slt i32 %.fr425, 2                 ; 2 uses
  %i.ox = load ptr, ptr %i.kw, align 8, !tbaa !29 ; 7 uses
  %i.oy = load i64, ptr %i.kx, align 8
  %i.oz = zext nneg i32 %i.on to i64
  %i.pa = mul i64 %i.oy, %i.oz
  %.sink.idx.i = select i1 %i.ow, i64 0, i64 %i.pa
  %.sink.i159 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.sink.idx.i
  %i.pb = zext nneg i32 %i.ol to i64              ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i159, i64 %i.pb ; 2 uses
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !31 ; 2 uses
  %i.pe = fcmp uno float %i.pd, 0.000000e+00
  %i.pf = fcmp ogt float %i.pd, %i.ou
  %or.cond388 = select i1 %i.pe, i1 true, i1 %i.pf
  br i1 %or.cond388, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store float %i.ou, ptr %i.pc, align 4, !tbaa !31
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.pg = add nsw i32 %i.ol, -1                   ; 4 uses
  %i.ph = add nsw i32 %i.on, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.ol, 0
  %i.pi = icmp sle i32 %i.ol, %.sroa.0382.0.extract.trunc
  %or.cond389.us = and i1 %.not.i160.us, %i.pi    ; 4 uses
  br i1 %i.ow, label %bb.ad, label %.split.us.preheader.a

.split.us.preheader.a:                            ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.ae:                                            ; preds = %bb.ad
  %i.pj = zext nneg i32 %i.pg to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pj ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !31 ; 2 uses
  %i.pm = fcmp uno float %i.pl, 0.000000e+00
  %i.pn = fcmp ogt float %i.pl, %i.ou
  %or.cond391.us = select i1 %i.pm, i1 true, i1 %i.pn
  br i1 %or.cond391.us, label %bb.af, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.af:                                            ; preds = %bb.ae
  store float %i.ou, ptr %i.pk, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.ad, %bb.af, %bb.ae
  %.not8.i161.us.1 = icmp sgt i32 %i.on, 0
  %i.po = icmp sle i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond390.us.1 = and i1 %.not8.i161.us.1, %i.po
  br i1 %or.cond390.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pb ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !31 ; 2 uses
  %i.pr = fcmp uno float %i.pq, 0.000000e+00
  %i.ps = fcmp ogt float %i.pq, %i.ou
  %or.cond391.us.1 = select i1 %i.pr, i1 true, i1 %i.ps
  br i1 %or.cond391.us.1, label %bb.ah, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ah:                                            ; preds = %bb.ag
  store float %i.ou, ptr %i.pp, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1: ; preds = %bb.ah, %bb.ag, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  br i1 %or.cond389.us, label %bb.ai, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ai:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1
  %.not8.i161.us.2 = icmp sgt i32 %i.on, 0
  %i.pt = icmp sle i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond390.us.2 = and i1 %.not8.i161.us.2, %i.pt
  br i1 %or.cond390.us.2, label %bb.aj, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.pu = zext nneg i32 %i.pg to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pu ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !31 ; 2 uses
  %i.px = fcmp uno float %i.pw, 0.000000e+00
  %i.py = fcmp ogt float %i.pw, %i.ou
  %or.cond391.us.2 = select i1 %i.px, i1 true, i1 %i.py
  br i1 %or.cond391.us.2, label %bb.ak, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ak:                                            ; preds = %bb.aj
  store float %i.ou, ptr %i.pv, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.al:                                            ; preds = %.split.us.preheader.a
  %i.pz = load i64, ptr %i.kx, align 8
  %i.qa = zext nneg i32 %i.on to i64
  %i.qb = mul i64 %i.pz, %i.qa
  %.sink.i164 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.qb
  %i.qc = zext nneg i32 %i.pg to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i164, i64 %i.qc ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !31 ; 2 uses
  %i.qf = fcmp uno float %i.qe, 0.000000e+00
  %i.qg = fcmp ogt float %i.qe, %i.ou
  %or.cond391 = select i1 %i.qf, i1 true, i1 %i.qg
  br i1 %or.cond391, label %bb.am, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

bb.am:                                            ; preds = %bb.al
  store float %i.ou, ptr %i.qd, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread: ; preds = %bb.am, %.split.us.preheader.a, %bb.al
  %.not8.i161.1 = icmp sgt i32 %i.on, 0
  %i.qh = icmp sle i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond390.1 = and i1 %.not8.i161.1, %i.qh
  br i1 %or.cond390.1, label %bb.an, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

bb.an:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  %i.qi = load i64, ptr %i.kx, align 8
  %i.qj = zext nneg i32 %i.ph to i64
  %i.qk = mul i64 %i.qi, %i.qj
  %.sink.i164.1 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.qk
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.sink.i164.1, i64 %i.pb ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !31 ; 2 uses
  %i.qn = fcmp uno float %i.qm, 0.000000e+00
  %i.qo = fcmp ogt float %i.qm, %i.ou
  %or.cond391.1 = select i1 %i.qn, i1 true, i1 %i.qo
  br i1 %or.cond391.1, label %bb.ao, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

bb.ao:                                            ; preds = %bb.an
  store float %i.ou, ptr %i.ql, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1: ; preds = %bb.ao, %bb.an, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  br i1 %or.cond389.us, label %bb.ap, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ap:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1
  %.not8.i161.2 = icmp sgt i32 %i.on, 0
  %i.qp = icmp sle i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond390.2 = and i1 %.not8.i161.2, %i.qp
  br i1 %or.cond390.2, label %bb.aq, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.qq = load i64, ptr %i.kx, align 8
  %i.qr = zext nneg i32 %i.ph to i64
  %i.qs = mul i64 %i.qq, %i.qr
  %.sink.i164.2 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.qs
  %i.qt = zext nneg i32 %i.pg to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.sink.i164.2, i64 %i.qt ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !31 ; 2 uses
  %i.qw = fcmp uno float %i.qv, 0.000000e+00
  %i.qx = fcmp ogt float %i.qv, %i.ou
  %or.cond391.2 = select i1 %i.qw, i1 true, i1 %i.qx
  br i1 %or.cond391.2, label %bb.ar, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ar:                                            ; preds = %bb.aq
  store float %i.ou, ptr %i.qu, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread: ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1, %bb.ap, %bb.aq, %bb.ar, %bb.ak, %bb.aj, %bb.ai, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1, %bb.y, %bb.ab, %.lr.ph419
  %i.qy = getelementptr inbounds nuw i8, ptr %.095416, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %.094417, i64 12 ; 2 uses
  %i.ra = icmp ult ptr %i.qz, %i.of
  br i1 %i.ra, label %.lr.ph419, label %._crit_edge420, !llvm.loop !109

._crit_edge420:                                   ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, %.loopexit
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.rb = load i32, ptr %i.jz, align 8, !tbaa !34
  %i.rc = sext i32 %i.rb to i64
  %i.rd = icmp slt i64 %indvars.iv.next450, %i.rc
  br i1 %i.rd, label %bb.p, label %._crit_edge424, !llvm.loop !110

bb.as:                                            ; preds = %bb.w
  %i.re = load ptr, ptr %i.jx, align 8, !tbaa !46
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.ln to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef %i.rh) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166: ; preds = %bb.as, %bb.w, %bb.o
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %i.le, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.w ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, %.body
  %.pn144.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166 ], [ %.pn.pn.pn.pn, %.body ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0461)
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19performRegistrationIdEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 %5, i1 noundef zeroext %6, float noundef %7, ptr noundef nonnull align 8 dereferenceable(208) %8) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Range", align 4         ; 5 uses
  %10 = alloca %"class.cv::Range", align 8        ; 4 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %12 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %13 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %14 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %15 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %17 = alloca %"class.cv::Mat_.2", align 8       ; 9 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %.sroa.0461 = alloca [15 x float], align 4      ; 9 uses
  %19 = alloca %"class.cv::Matx.0", align 16      ; 27 uses
  %20 = alloca %"class.cv::Mat_.3", align 8       ; 14 uses
  %21 = alloca %"class.cv::Mat_.3", align 8       ; 11 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %25 = alloca %"class.std::vector", align 8      ; 10 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::Mat_.3", align 8       ; 7 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %29 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %31 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %.sroa.0382.0.extract.trunc = trunc i64 %5 to i32 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %5, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %.sroa.3.0.extract.trunc, i32 noundef %.sroa.0382.0.extract.trunc, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store double +qnan, ptr %16, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN2cv4Mat_IdEC2ENS_5Size_IiEERKd.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %bb.c, %bb.at, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.j, %bb.c ], [ %.pn144.pn.pn.pn.pn, %bb.at ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  br label %common.resume

_ZN2cv4Mat_IdEC2ENS_5Size_IiEERKd.exit:           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.d = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %.preheader397 unwind label %bb.c ; 0 uses

.preheader397:                                    ; preds = %_ZN2cv4Mat_IdEC2ENS_5Size_IiEERKd.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !16
  store i32 -2130640891, ptr %18, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %3, ptr %i.g, align 8, !tbaa !19
  %i.h = call noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0461)
  %.sroa.0461.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.0461.12..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa !31
  %scevgep427.1 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0461.16.scevgep.1.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461.16.scevgep.1.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep427.1, i64 12, i1 false), !tbaa !31
  %scevgep427.2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0461.32.scevgep.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461.32.scevgep.2.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep427.2, i64 12, i1 false), !tbaa !31
  %i.i = icmp sgt i32 %i.h, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %19, i8 0, i64 64, i1 false), !tbaa !31
  br i1 %i.i, label %bb.d, label %.preheader

bb.c:                                             ; preds = %_ZN2cv4Mat_IdEC2ENS_5Size_IiEERKd.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %common.resume

bb.d:                                             ; preds = %.preheader397
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13, !noalias !129
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !tbaa !31, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13, !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %14, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.0461, i64 60, i1 false), !tbaa.struct !33, !noalias !129
  %.sroa.9462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 60
  store float 1.000000e+00, ptr %.sroa.9462.0..sroa_idx, align 4, !tbaa !14, !noalias !129
  store float 1.000000e+00, ptr %15, align 16, !tbaa !31, !noalias !129
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 20
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !31, !noalias !129
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 40
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !31, !noalias !129
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 60
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !31, !noalias !129
  %i.o = call noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef nonnull %14, i64 noundef 16, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(64) %15, i64 noundef 16, i32 noundef 4), !noalias !129
  %.not393 = icmp eq i32 %i.o, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13, !noalias !129
  br i1 %.not393, label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.20317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.36333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.52349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.p = load <4 x float>, ptr %15, align 16
  %i.q = load <4 x float>, ptr %.sroa.20317.0..sroa_idx, align 16
  %i.r = load <4 x float>, ptr %.sroa.36333.0..sroa_idx, align 16
  %i.s = load <4 x float>, ptr %.sroa.52349.0..sroa_idx, align 16
  br label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit

_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit:             ; preds = %bb.d, %bb.e
  %i.t = phi <4 x float> [ %i.s, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.u = phi <4 x float> [ %i.r, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.v = phi <4 x float> [ %i.q, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.w = phi <4 x float> [ %i.p, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13, !noalias !129
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = load <4 x float>, ptr %4, align 4, !tbaa !31 ; 4 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.ad = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.v, <4 x float> %i.ac)
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ag = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.u, <4 x float> %i.ae)
  %i.ah = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ai = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.t, <4 x float> %i.ag)
  store <4 x float> %i.ai, ptr %19, align 16
  %.sroa.7369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.aj = load <4 x float>, ptr %i.x, align 4, !tbaa !31 ; 4 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.am = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.an = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.v, <4 x float> %i.al)
  %i.ao = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.u, <4 x float> %i.an)
  %i.aq = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ar = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.t, <4 x float> %i.ap)
  store <4 x float> %i.ar, ptr %.sroa.7369.0..sroa_idx, align 16
  %.sroa.11373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.as = load <4 x float>, ptr %i.y, align 4, !tbaa !31 ; 4 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.av = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.v, <4 x float> %i.au)
  %i.ax = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ay = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.u, <4 x float> %i.aw)
  %i.az = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.t, <4 x float> %i.ay)
  store <4 x float> %i.ba, ptr %.sroa.11373.0..sroa_idx, align 16
  %.sroa.15377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.bb = load <4 x float>, ptr %i.z, align 4, !tbaa !31 ; 4 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@_ZN2cv19performRegistrationIdEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.iy, align 8, !tbaa !31
  store i32 -1056833531, ptr %28, align 8, !tbaa !32
  store ptr %29, ptr %i.ja, align 8, !tbaa !19
  store i64 12884901889, ptr %i.iz, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.jb, align 8, !tbaa !31
  store i32 -1056833531, ptr %30, align 8, !tbaa !32
  store ptr %31, ptr %i.jd, align 8, !tbaa !19
  store i64 12884901889, ptr %i.jc, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !32
  store ptr %2, ptr %i.jf, align 8, !tbaa !19
  store i64 12884901891, ptr %i.je, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.jg, align 8, !tbaa !17
  store i32 0, ptr %i.jh, align 4, !tbaa !16
  store i32 -2130640891, ptr %33, align 8, !tbaa !32
  store ptr %3, ptr %i.ji, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.jk, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !32
  store ptr %25, ptr %i.jj, align 8, !tbaa !19
  %i.ka = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.ka, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %.pre = load ptr, ptr %25, align 8, !tbaa !45
  %.pre465 = load ptr, ptr %i.is, align 8, !tbaa !29
  %.pre466 = load i64, ptr %i.it, align 8, !tbaa !28
  %.pre467 = mul i64 %.pre466, %indvars.iv449
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kc, %bb.v ], [ %i.kb, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.kd = load ptr, ptr %25, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.as

bb.x:                                             ; preds = %bb.p
  %i.ke = load ptr, ptr %i.im, align 8, !tbaa !47 ; 3 uses
  %i.kf = load ptr, ptr %i.is, align 8, !tbaa !29 ; 4 uses
  %i.kg = load i64, ptr %i.it, align 8, !tbaa !28
  %i.kh = mul i64 %i.kg, %indvars.iv449           ; 4 uses
  %i.ki = icmp ult ptr %i.jv, %i.ke
  br i1 %i.ki, label %.lr.ph412.preheader, label %.loopexit

.lr.ph412.preheader:                              ; preds = %bb.x
  %i.kj = ptrtoaddr ptr %i.ke to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kh ; 6 uses
  %i.kl = xor i64 %i.jw, -1
  %i.km = add i64 %i.kl, %i.kj                    ; 2 uses
  %i.kn = lshr i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.km, 24
  br i1 %min.iters.check500, label %.lr.ph412.preheader516, label %vector.ph501

vector.ph501:                                     ; preds = %.lr.ph412.preheader
  %n.vec502 = and i64 %i.ko, 4611686018427387900  ; 4 uses
  %i.kp = mul i64 %n.vec502, 12
  %i.kq = getelementptr i8, ptr %i.kk, i64 %i.kp
  %i.kr = shl i64 %n.vec502, 3
  %i.ks = getelementptr i8, ptr %i.jv, i64 %i.kr
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next511, %vector.body503 ] ; 3 uses
  %i.kt = mul i64 %index504, 12                   ; 4 uses
  %next.gep505 = getelementptr i8, ptr %i.kk, i64 %i.kt ; 3 uses
  %i.ku = getelementptr i8, ptr %i.kk, i64 %i.kt  ; 3 uses
  %next.gep506 = getelementptr i8, ptr %i.ku, i64 12
  %i.kv = getelementptr i8, ptr %i.kk, i64 %i.kt  ; 3 uses
  %next.gep507 = getelementptr i8, ptr %i.kv, i64 24
  %i.kw = getelementptr i8, ptr %i.kk, i64 %i.kt  ; 3 uses
  %next.gep508 = getelementptr i8, ptr %i.kw, i64 36
  %i.kx = shl i64 %index504, 3
  %next.gep509 = getelementptr i8, ptr %i.jv, i64 %i.kx
  %i.ky = load float, ptr %next.gep505, align 4, !tbaa !40
  %i.kz = load float, ptr %next.gep506, align 4, !tbaa !40
  %i.la = load float, ptr %next.gep507, align 4, !tbaa !40
  %i.lb = load float, ptr %next.gep508, align 4, !tbaa !40
  %i.lc = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 1
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 2
  %i.lf = insertelement <4 x float> %i.le, float %i.lb, i64 3
  %i.lg = getelementptr inbounds nuw i8, ptr %next.gep505, i64 8
  %i.lh = getelementptr i8, ptr %i.ku, i64 20
  %i.li = getelementptr i8, ptr %i.kv, i64 32
  %i.lj = getelementptr i8, ptr %i.kw, i64 44
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !42
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !42
  %i.lm = load float, ptr %i.li, align 4, !tbaa !42
  %i.ln = load float, ptr %i.lj, align 4, !tbaa !42
  %i.lo = insertelement <4 x float> poison, float %i.lk, i64 0
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 1
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 2
  %i.lr = insertelement <4 x float> %i.lq, float %i.ln, i64 3 ; 2 uses
  %i.ls = fdiv <4 x float> %i.lf, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %next.gep505, i64 4
  %i.lu = getelementptr i8, ptr %i.ku, i64 16
  %i.lv = getelementptr i8, ptr %i.kv, i64 28
  %i.lw = getelementptr i8, ptr %i.kw, i64 40
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !41
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !41
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !41
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !41
  %i.mb = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 1
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 2
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 3
  %i.mf = fdiv <4 x float> %i.me, %i.lr
  %interleaved.vec510 = shufflevector <4 x float> %i.ls, <4 x float> %i.mf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec510, ptr %next.gep509, align 4, !tbaa !31
  %index.next511 = add nuw i64 %index504, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next511, %n.vec502
  br i1 %i.mg, label %middle.block512, label %vector.body503, !llvm.loop !125

middle.block512:                                  ; preds = %vector.body503
  %cmp.n513 = icmp eq i64 %i.ko, %n.vec502
  br i1 %cmp.n513, label %.loopexit, label %.lr.ph412.preheader516

.lr.ph412.preheader516:                           ; preds = %.lr.ph412.preheader, %middle.block512
  %.096410.ph = phi ptr [ %i.kk, %.lr.ph412.preheader ], [ %i.kq, %middle.block512 ]
  %.097409.ph = phi ptr [ %i.jv, %.lr.ph412.preheader ], [ %i.ks, %middle.block512 ]
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %.lr.ph412.preheader516, %.lr.ph412
  %.096410 = phi ptr [ %i.mo, %.lr.ph412 ], [ %.096410.ph, %.lr.ph412.preheader516 ] ; 3 uses
  %.097409 = phi ptr [ %i.mn, %.lr.ph412 ], [ %.097409.ph, %.lr.ph412.preheader516 ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.096410, i64 8
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !42
  %i.mj = load <2 x float>, ptr %.096410, align 4, !tbaa !31
  %i.mk = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = fdiv <2 x float> %i.mj, %i.ml
  store <2 x float> %i.mm, ptr %.097409, align 4, !tbaa !31
  %i.mn = getelementptr inbounds nuw i8, ptr %.097409, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.096410, i64 12
  %i.mp = icmp ult ptr %i.mn, %i.ke
  br i1 %i.mp, label %.lr.ph412, label %.loopexit, !llvm.loop !126

.loopexit:                                        ; preds = %.lr.ph412, %middle.block512, %bb.x, %bb.t
  %.pre-phi = phi i64 [ %.pre467, %bb.t ], [ %i.kh, %bb.x ], [ %i.kh, %middle.block512 ], [ %i.kh, %.lr.ph412 ]
  %i.mq = phi ptr [ %.pre465, %bb.t ], [ %i.kf, %bb.x ], [ %i.kf, %middle.block512 ], [ %i.kf, %.lr.ph412 ]
  %i.mr = phi ptr [ %.pre, %bb.t ], [ %i.jv, %bb.x ], [ %i.jv, %middle.block512 ], [ %i.jv, %.lr.ph412 ] ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 %.pre-phi ; 2 uses
  %i.mt = load i32, ptr %i.ie, align 4, !tbaa !35 ; 2 uses
  %i.mu = sext i32 %i.mt to i64
  %.idx = mul nsw i64 %i.mu, 12
  %i.mv = getelementptr inbounds i8, ptr %i.ms, i64 %.idx
  %i.mw = icmp sgt i32 %i.mt, 0
  br i1 %i.mw, label %.lr.ph419, label %._crit_edge420

.lr.ph419:                                        ; preds = %.loopexit, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread
  %.094417 = phi ptr [ %i.pq, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.ms, %.loopexit ] ; 2 uses
  %.095416 = phi ptr [ %i.pp, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.mr, %.loopexit ] ; 3 uses
  %i.mx = load float, ptr %.095416, align 4       ; 2 uses
  %i.my = fcmp ord float %i.mx, 0.000000e+00
  br i1 %i.my, label %bb.y, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.y:                                             ; preds = %.lr.ph419
  %.095.sroa_idx = getelementptr inbounds nuw i8, ptr %.095416, i64 4
  %i.mz = load float, ptr %.095.sroa_idx, align 4
  %i.na = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.nb = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.na) ; 6 uses
  %i.nc = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.nd = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.nc) ; 13 uses
  %i.ne = icmp slt i32 %i.nb, %.sroa.0382.0.extract.trunc
  %i.nf = or i32 %i.nd, %i.nb
  %i.ng = icmp sgt i32 %i.nf, -1
  %or.cond386.not396 = and i1 %i.ne, %i.ng
  %i.nh = icmp slt i32 %i.nd, %.sroa.3.0.extract.trunc
  %or.cond387 = and i1 %i.nh, %or.cond386.not396
  br i1 %or.cond387, label %bb.z, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ni = getelementptr inbounds nuw i8, ptr %.094417, i64 8
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !42
  %i.nk = fmul float %i.io, %i.nj
  %i.nl = fpext float %i.nk to double             ; 14 uses
  %i.nm = load i32, ptr %i.jl, align 4, !tbaa !51
  %.fr425 = freeze i32 %i.nm
  %i.nn = icmp slt i32 %.fr425, 2                 ; 2 uses
  %i.no = load ptr, ptr %i.jm, align 8, !tbaa !29 ; 7 uses
  %i.np = load i64, ptr %i.jn, align 8
  %i.nq = zext nneg i32 %i.nd to i64
  %i.nr = mul i64 %i.np, %i.nq
  %.sink.idx.i = select i1 %i.nn, i64 0, i64 %i.nr
  %.sink.i159 = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i
  %i.ns = zext nneg i32 %i.nb to i64              ; 3 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.sink.i159, i64 %i.ns ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !53 ; 2 uses
  %i.nv = fcmp uno double %i.nu, 0.000000e+00
  %i.nw = fcmp ogt double %i.nu, %i.nl
  %or.cond388 = select i1 %i.nv, i1 true, i1 %i.nw
  br i1 %or.cond388, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %i.nl, ptr %i.nt, align 8, !tbaa !53
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.nx = add nsw i32 %i.nb, -1                   ; 4 uses
  %i.ny = add nsw i32 %i.nd, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.nb, 0
  %i.nz = icmp sle i32 %i.nb, %.sroa.0382.0.extract.trunc
  %or.cond389.us = and i1 %.not.i160.us, %i.nz    ; 4 uses
  br i1 %i.nn, label %bb.ad, label %.split.us.preheader.a

.split.us.preheader.a:                            ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.ae:                                            ; preds = %bb.ad
  %i.oa = zext nneg i32 %i.nx to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.oa ; 2 uses
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !53 ; 2 uses
  %i.od = fcmp uno double %i.oc, 0.000000e+00
  %i.oe = fcmp ogt double %i.oc, %i.nl
  %or.cond391.us = select i1 %i.od, i1 true, i1 %i.oe
  br i1 %or.cond391.us, label %bb.af, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.af:                                            ; preds = %bb.ae
  store double %i.nl, ptr %i.ob, align 8, !tbaa !53
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.ad, %bb.af, %bb.ae
  %.not8.i161.us.1 = icmp sgt i32 %i.nd, 0
  %i.of = icmp sle i32 %i.nd, %.sroa.3.0.extract.trunc
  %or.cond390.us.1 = and i1 %.not8.i161.us.1, %i.of
  br i1 %or.cond390.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.ns ; 2 uses
  %i.oh = load double, ptr %i.og, align 8, !tbaa !53 ; 2 uses
  %i.oi = fcmp uno double %i.oh, 0.000000e+00
  %i.oj = fcmp ogt double %i.oh, %i.nl
  %or.cond391.us.1 = select i1 %i.oi, i1 true, i1 %i.oj
  br i1 %or.cond391.us.1, label %bb.ah, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ah:                                            ; preds = %bb.ag
  store double %i.nl, ptr %i.og, align 8, !tbaa !53
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1: ; preds = %bb.ah, %bb.ag, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  br i1 %or.cond389.us, label %bb.ai, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ai:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1
  %.not8.i161.us.2 = icmp sgt i32 %i.nd, 0
  %i.ok = icmp sle i32 %i.nd, %.sroa.3.0.extract.trunc
  %or.cond390.us.2 = and i1 %.not8.i161.us.2, %i.ok
  br i1 %or.cond390.us.2, label %bb.aj, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ol = zext nneg i32 %i.nx to i64
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.ol ; 2 uses
  %i.on = load double, ptr %i.om, align 8, !tbaa !53 ; 2 uses
  %i.oo = fcmp uno double %i.on, 0.000000e+00
  %i.op = fcmp ogt double %i.on, %i.nl
  %or.cond391.us.2 = select i1 %i.oo, i1 true, i1 %i.op
  br i1 %or.cond391.us.2, label %bb.ak, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ak:                                            ; preds = %bb.aj
  store double %i.nl, ptr %i.om, align 8, !tbaa !53
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.al:                                            ; preds = %.split.us.preheader.a
  %i.oq = load i64, ptr %i.jn, align 8
  %i.or = zext nneg i32 %i.nd to i64
  %i.os = mul i64 %i.oq, %i.or
  %.sink.i164 = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.os
  %i.ot = zext nneg i32 %i.nx to i64
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %.sink.i164, i64 %i.ot ; 2 uses
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !53 ; 2 uses
  %i.ow = fcmp uno double %i.ov, 0.000000e+00
  %i.ox = fcmp ogt double %i.ov, %i.nl
  %or.cond391 = select i1 %i.ow, i1 true, i1 %i.ox
  br i1 %or.cond391, label %bb.am, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

bb.am:                                            ; preds = %bb.al
  store double %i.nl, ptr %i.ou, align 8, !tbaa !53
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread: ; preds = %bb.am, %.split.us.preheader.a, %bb.al
  %.not8.i161.1 = icmp sgt i32 %i.nd, 0
  %i.oy = icmp sle i32 %i.nd, %.sroa.3.0.extract.trunc
  %or.cond390.1 = and i1 %.not8.i161.1, %i.oy
  br i1 %or.cond390.1, label %bb.an, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

bb.an:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  %i.oz = load i64, ptr %i.jn, align 8
  %i.pa = zext nneg i32 %i.ny to i64
  %i.pb = mul i64 %i.oz, %i.pa
  %.sink.i164.1 = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.pb
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i164.1, i64 %i.ns ; 2 uses
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !53 ; 2 uses
  %i.pe = fcmp uno double %i.pd, 0.000000e+00
  %i.pf = fcmp ogt double %i.pd, %i.nl
  %or.cond391.1 = select i1 %i.pe, i1 true, i1 %i.pf
  br i1 %or.cond391.1, label %bb.ao, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

bb.ao:                                            ; preds = %bb.an
  store double %i.nl, ptr %i.pc, align 8, !tbaa !53
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1: ; preds = %bb.ao, %bb.an, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  br i1 %or.cond389.us, label %bb.ap, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ap:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1
  %.not8.i161.2 = icmp sgt i32 %i.nd, 0
  %i.pg = icmp sle i32 %i.nd, %.sroa.3.0.extract.trunc
  %or.cond390.2 = and i1 %.not8.i161.2, %i.pg
  br i1 %or.cond390.2, label %bb.aq, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ph = load i64, ptr %i.jn, align 8
  %i.pi = zext nneg i32 %i.ny to i64
  %i.pj = mul i64 %i.ph, %i.pi
  %.sink.i164.2 = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.pj
  %i.pk = zext nneg i32 %i.nx to i64
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i164.2, i64 %i.pk ; 2 uses
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !53 ; 2 uses
  %i.pn = fcmp uno double %i.pm, 0.000000e+00
  %i.po = fcmp ogt double %i.pm, %i.nl
  %or.cond391.2 = select i1 %i.pn, i1 true, i1 %i.po
  br i1 %or.cond391.2, label %bb.ar, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ar:                                            ; preds = %bb.aq
  store double %i.nl, ptr %i.pl, align 8, !tbaa !53
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread: ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1, %bb.ap, %bb.aq, %bb.ar, %bb.ak, %bb.aj, %bb.ai, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1, %bb.y, %bb.ab, %.lr.ph419
  %i.pp = getelementptr inbounds nuw i8, ptr %.095416, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %.094417, i64 12 ; 2 uses
  %i.pr = icmp ult ptr %i.pq, %i.mv
  br i1 %i.pr, label %.lr.ph419, label %._crit_edge420, !llvm.loop !127

._crit_edge420:                                   ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, %.loopexit
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.ps = load i32, ptr %i.ip, align 8, !tbaa !34
  %i.pt = sext i32 %i.ps to i64
  %i.pu = icmp slt i64 %indvars.iv.next450, %i.pt
  br i1 %i.pu, label %bb.p, label %._crit_edge424, !llvm.loop !128

bb.as:                                            ; preds = %bb.w
  %i.pv = load ptr, ptr %i.in, align 8, !tbaa !46
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.kd to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.py) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166: ; preds = %bb.as, %bb.w, %bb.o
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %i.ju, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.w ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, %.body
  %.pn144.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166 ], [ %.pn.pn.pn.pn, %.body ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0461)
  br label %common.resume
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #1

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !26
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !26
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !51
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863675, ptr %3, align 8, !tbaa !32
  store ptr %0, ptr %i.o, align 8, !tbaa !19
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv20perspectiveTransformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #1

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_ItEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !26
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 2
  store i32 %i.d, ptr %0, align 8, !tbaa !26
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !51
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
end_hunk_2
