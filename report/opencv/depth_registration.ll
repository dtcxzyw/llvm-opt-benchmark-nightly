Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/depth_registration?download=true
inline.NumInlined: 452
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2cv19performRegistrationItEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a
.noexc157:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ii, ptr %25, align 8, !tbaa !44
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.if
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ii, i8 0, i64 %i.ih, i1 false), !tbaa !30
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ii, i64 %i.ih
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc157
  %i.ik = phi ptr [ %i.ii, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ij, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.il = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.im, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.il, align 8, !tbaa !46
  %i.in = fdiv float 1.000000e+00, %7
  %i.io = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !33
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.lr.ph422, label %._crit_edge423

.lr.ph422:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.ir = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.iw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.jh = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  br label %bb.p

._crit_edge423:                                   ; preds = %._crit_edge419, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.jn = phi ptr [ %i.ik, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.mq, %._crit_edge419 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge423
  %i.jo = load ptr, ptr %i.im, align 8, !tbaa !45
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jn to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.jr) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge423, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0460)
  ret void

bb.n:                                             ; preds = %._crit_edge407.split
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %.body

.body:                                            ; preds = %bb.j, %bb.h, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.js, %bb.n ], [ %i.gp, %bb.j ], [ %i.fw, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.p:                                             ; preds = %.lr.ph422, %._crit_edge419
  %i.ju = phi ptr [ %i.ik, %.lr.ph422 ], [ %i.mq, %._crit_edge419 ] ; 8 uses
  %indvars.iv448 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next449, %._crit_edge419 ] ; 5 uses
  br i1 %i.h, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !93
  %i.jv = trunc nuw nsw i64 %indvars.iv448 to i32
  store i32 %i.jv, ptr %9, align 4, !tbaa !48, !noalias !93
  %i.jw = trunc i64 %indvars.iv448 to i32
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.it, align 4, !tbaa !49, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !93
  store i64 9223372034707292160, ptr %10, align 8, !noalias !93
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !93
  store i32 0, ptr %i.iu, align 8, !tbaa !17
  store i32 0, ptr %i.iv, align 4, !tbaa !16
  store i32 -2130640827, ptr %26, align 8, !tbaa !31
  store ptr %27, ptr %i.iw, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !30
  store float 0.000000e+00, ptr %i.ix, align 8, !tbaa !30
  store i32 -1056833531, ptr %28, align 8, !tbaa !31
  store ptr %29, ptr %i.iz, align 8, !tbaa !19
  store i64 12884901889, ptr %i.iy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !30
  store float 0.000000e+00, ptr %i.ja, align 8, !tbaa !30
  store i32 -1056833531, ptr %30, align 8, !tbaa !31
  store ptr %31, ptr %i.jc, align 8, !tbaa !19
  store i64 12884901889, ptr %i.jb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !31
  store ptr %2, ptr %i.je, align 8, !tbaa !19
  store i64 12884901891, ptr %i.jd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.jf, align 8, !tbaa !17
  store i32 0, ptr %i.jg, align 4, !tbaa !16
  store i32 -2130640891, ptr %33, align 8, !tbaa !31
  store ptr %3, ptr %i.jh, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.jj, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !31
  store ptr %25, ptr %i.ji, align 8, !tbaa !19
  %i.jy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.jy, double noundef 0.000000e+00)
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
  %.pre = load ptr, ptr %25, align 8, !tbaa !44
  %.pre464 = load ptr, ptr %i.ir, align 8, !tbaa !28
  %.pre465 = load i64, ptr %i.is, align 8, !tbaa !27
  %.pre466 = mul i64 %.pre465, %indvars.iv448
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.ka = landingpad { ptr, i32 }
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
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ka, %bb.v ], [ %i.jz, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.kb = load ptr, ptr %25, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.kc = load ptr, ptr %i.il, align 8, !tbaa !46 ; 3 uses
  %i.kd = load ptr, ptr %i.ir, align 8, !tbaa !28 ; 4 uses
  %i.ke = load i64, ptr %i.is, align 8, !tbaa !27
  %i.kf = mul i64 %i.ke, %indvars.iv448           ; 4 uses
  %i.kg = icmp ult ptr %i.ju, %i.kc
  br i1 %i.kg, label %.lr.ph411.preheader, label %.loopexit

.lr.ph411.preheader:                              ; preds = %bb.x
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kf ; 6 uses
  %i.ki = ptrtoaddr ptr %i.kc to i64
  %i.kj = ptrtoaddr ptr %i.ju to i64              ; 2 uses
  %35 = add i64 %i.kj, 8
  %36 = call i64 @llvm.umax.i64(i64 %i.ki, i64 %35)
  %i.kk = xor i64 %i.kj, -1
  %i.kl = add i64 %36, %i.kk                      ; 2 uses
  %i.km = lshr i64 %i.kl, 3
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check504 = icmp ult i64 %i.kl, 24
  br i1 %min.iters.check504, label %.lr.ph411.preheader520, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph411.preheader
  %n.vec506 = and i64 %i.kn, 4611686018427387900  ; 4 uses
  %i.ko = mul i64 %n.vec506, 12
  %i.kp = getelementptr i8, ptr %i.kh, i64 %i.ko
  %i.kq = shl i64 %n.vec506, 3
  %i.kr = getelementptr i8, ptr %i.ju, i64 %i.kq
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 3 uses
  %i.ks = mul i64 %index508, 12                   ; 4 uses
  %next.gep509 = getelementptr i8, ptr %i.kh, i64 %i.ks ; 3 uses
  %i.kt = getelementptr i8, ptr %i.kh, i64 %i.ks  ; 3 uses
  %next.gep510 = getelementptr i8, ptr %i.kt, i64 12
  %i.ku = getelementptr i8, ptr %i.kh, i64 %i.ks  ; 3 uses
  %next.gep511 = getelementptr i8, ptr %i.ku, i64 24
  %i.kv = getelementptr i8, ptr %i.kh, i64 %i.ks  ; 3 uses
  %next.gep512 = getelementptr i8, ptr %i.kv, i64 36
  %i.kw = shl i64 %index508, 3
  %next.gep513 = getelementptr i8, ptr %i.ju, i64 %i.kw
  %i.kx = load float, ptr %next.gep509, align 4, !tbaa !39
  %i.ky = load float, ptr %next.gep510, align 4, !tbaa !39
  %i.kz = load float, ptr %next.gep511, align 4, !tbaa !39
  %i.la = load float, ptr %next.gep512, align 4, !tbaa !39
  %i.lb = insertelement <4 x float> poison, float %i.kx, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.ky, i64 1
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 2
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 3
  %i.lf = getelementptr inbounds nuw i8, ptr %next.gep509, i64 8
  %i.lg = getelementptr i8, ptr %i.kt, i64 20
  %i.lh = getelementptr i8, ptr %i.ku, i64 32
  %i.li = getelementptr i8, ptr %i.kv, i64 44
  %i.lj = load float, ptr %i.lf, align 4, !tbaa !41
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !41
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !41
  %i.lm = load float, ptr %i.li, align 4, !tbaa !41
  %i.ln = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.lo = insertelement <4 x float> %i.ln, float %i.lk, i64 1
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 2
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 3 ; 2 uses
  %i.lr = fdiv <4 x float> %i.le, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %next.gep509, i64 4
  %i.lt = getelementptr i8, ptr %i.kt, i64 16
  %i.lu = getelementptr i8, ptr %i.ku, i64 28
  %i.lv = getelementptr i8, ptr %i.kv, i64 40
  %i.lw = load float, ptr %i.ls, align 4, !tbaa !40
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !40
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !40
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !40
  %i.ma = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.mb = insertelement <4 x float> %i.ma, float %i.lx, i64 1
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 2
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 3
  %i.me = fdiv <4 x float> %i.md, %i.lq
  %interleaved.vec514 = shufflevector <4 x float> %i.lr, <4 x float> %i.me, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec514, ptr %next.gep513, align 4, !tbaa !30
  %index.next515 = add nuw i64 %index508, 4       ; 2 uses
  %i.mf = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.mf, label %middle.block516, label %vector.body507, !llvm.loop !85

middle.block516:                                  ; preds = %vector.body507
  %cmp.n517 = icmp eq i64 %i.kn, %n.vec506
  br i1 %cmp.n517, label %.loopexit, label %.lr.ph411.preheader520

.lr.ph411.preheader520:                           ; preds = %.lr.ph411.preheader, %middle.block516
  %.096409.ph = phi ptr [ %i.kh, %.lr.ph411.preheader ], [ %i.kp, %middle.block516 ]
  %.097408.ph = phi ptr [ %i.ju, %.lr.ph411.preheader ], [ %i.kr, %middle.block516 ]
  br label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader520, %.lr.ph411
  %.096409 = phi ptr [ %i.mn, %.lr.ph411 ], [ %.096409.ph, %.lr.ph411.preheader520 ] ; 3 uses
  %.097408 = phi ptr [ %i.mm, %.lr.ph411 ], [ %.097408.ph, %.lr.ph411.preheader520 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.096409, i64 8
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !41
  %i.mi = load <2 x float>, ptr %.096409, align 4, !tbaa !30
  %i.mj = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ml = fdiv <2 x float> %i.mi, %i.mk
  store <2 x float> %i.ml, ptr %.097408, align 4, !tbaa !30
  %i.mm = getelementptr inbounds nuw i8, ptr %.097408, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.096409, i64 12
  %i.mo = icmp ult ptr %i.mm, %i.kc
  br i1 %i.mo, label %.lr.ph411, label %.loopexit, !llvm.loop !86

.loopexit:                                        ; preds = %.lr.ph411, %middle.block516, %bb.x, %bb.t
  %.pre-phi = phi i64 [ %.pre466, %bb.t ], [ %i.kf, %bb.x ], [ %i.kf, %middle.block516 ], [ %i.kf, %.lr.ph411 ]
  %i.mp = phi ptr [ %.pre464, %bb.t ], [ %i.kd, %bb.x ], [ %i.kd, %middle.block516 ], [ %i.kd, %.lr.ph411 ]
  %i.mq = phi ptr [ %.pre, %bb.t ], [ %i.ju, %bb.x ], [ %i.ju, %middle.block516 ], [ %i.ju, %.lr.ph411 ] ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.pre-phi ; 2 uses
  %i.ms = load i32, ptr %i.id, align 4, !tbaa !34 ; 2 uses
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
  %i.na = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.mz) ; 8 uses
  %i.nb = insertelement <4 x float> poison, float %i.my, i64 0
  %i.nc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.nb) ; 15 uses
  %i.nd = icmp slt i32 %i.na, %.sroa.0381.0.extract.trunc
  %i.ne = or i32 %i.nc, %i.na
  %i.nf = icmp sgt i32 %i.ne, -1
  %or.cond385.not395 = and i1 %i.nd, %i.nf
  %i.ng = icmp slt i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond386 = and i1 %i.ng, %or.cond385.not395
  br i1 %or.cond386, label %bb.z, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.nh = getelementptr inbounds nuw i8, ptr %.094416, i64 8
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !41
  %i.nj = fmul float %i.in, %i.ni
  %i.nk = fpext float %i.nj to double
  %i.nl = fadd double %i.nk, 5.000000e-01
  %i.nm = fptoui double %i.nl to i16
  %i.nn = freeze i16 %i.nm                        ; 14 uses
  %i.no = load i32, ptr %i.jk, align 4, !tbaa !50
  %.fr424 = freeze i32 %i.no
  %i.np = icmp slt i32 %.fr424, 2                 ; 2 uses
  %i.nq = load ptr, ptr %i.jl, align 8, !tbaa !28 ; 7 uses
  %i.nr = load i64, ptr %i.jm, align 8
  %i.ns = zext nneg i32 %i.nc to i64
  %i.nt = mul i64 %i.nr, %i.ns
  %.sink.idx.i = select i1 %i.np, i64 0, i64 %i.nt
  %.sink.i159 = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sink.idx.i
  %i.nu = zext nneg i32 %i.na to i64              ; 3 uses
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %.sink.i159, i64 %i.nu ; 2 uses
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !92
  %i.nx = add i16 %i.nw, -1
  %or.cond387.not = icmp ult i16 %i.nx, %i.nn
  br i1 %or.cond387.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i16 %i.nn, ptr %i.nv, align 2, !tbaa !92
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ny = add nsw i32 %i.na, -1                   ; 4 uses
  %i.nz = add nsw i32 %i.nc, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.na, 0
  %i.oa = icmp sle i32 %i.na, %.sroa.0381.0.extract.trunc
  %or.cond388.us = and i1 %.not.i160.us, %i.oa    ; 4 uses
  br i1 %i.np, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ac
  br i1 %or.cond388.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread

.split.us.preheader:                              ; preds = %bb.ac
  br i1 %or.cond388.us, label %bb.ad, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us

bb.ad:                                            ; preds = %.split.us.preheader
  %.not8.i161.us = icmp sgt i32 %i.nc, -1
  br i1 %.not8.i161.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ob = zext nneg i32 %i.ny to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.ob ; 2 uses
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !92
  %i.oe = add i16 %i.od, -1
  %or.cond390.not.us = icmp ult i16 %i.oe, %i.nn
  br i1 %or.cond390.not.us, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i16 %i.nn, ptr %i.oc, align 2, !tbaa !92
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us: ; preds = %.split.us.preheader
  %.not.i160.us.1 = icmp sgt i32 %i.na, -1
  br i1 %.not.i160.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.af, %bb.ae, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us
  %.not8.i161.us.1 = icmp sgt i32 %i.nc, 0
  %i.of = icmp sle i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond389.us.1 = and i1 %.not8.i161.us.1, %i.of
  br i1 %or.cond389.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.nu ; 2 uses
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !92
  %i.oi = add i16 %i.oh, -1
  %or.cond390.not.us.1 = icmp ult i16 %i.oi, %i.nn
  br i1 %or.cond390.not.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1, label %bb.ah
end_hunk_0
begin_hunk_1_@_ZN2cv19performRegistrationIfEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a
.noexc157:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.jt, ptr %25, align 8, !tbaa !44
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jt, i8 0, i64 %i.js, i1 false), !tbaa !30
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.jt, i64 %i.js
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc157
  %i.jv = phi ptr [ %i.jt, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ju, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.jw = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.jx, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.jw, align 8, !tbaa !46
  %i.jy = fdiv float 1.000000e+00, %7
  %i.jz = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !33
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.kf = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.kh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.kp = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.kr = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.ks = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.kw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.kx = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  br label %bb.p

._crit_edge424:                                   ; preds = %._crit_edge420, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.ky = phi ptr [ %i.jv, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.ob, %._crit_edge420 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge424
  %i.kz = load ptr, ptr %i.jx, align 8, !tbaa !45
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.ky to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lc) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge424, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0461)
  ret void

bb.n:                                             ; preds = %._crit_edge408.split
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %.body

.body:                                            ; preds = %bb.j, %bb.h, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ld, %bb.n ], [ %i.he, %bb.j ], [ %i.fx, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.p:                                             ; preds = %.lr.ph423, %._crit_edge420
  %i.lf = phi ptr [ %i.jv, %.lr.ph423 ], [ %i.ob, %._crit_edge420 ] ; 8 uses
  %indvars.iv449 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next450, %._crit_edge420 ] ; 5 uses
  br i1 %i.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !114
  %i.lg = trunc nuw nsw i64 %indvars.iv449 to i32
  store i32 %i.lg, ptr %9, align 4, !tbaa !48, !noalias !114
  %i.lh = trunc i64 %indvars.iv449 to i32
  %i.li = add i32 %i.lh, 1
  store i32 %i.li, ptr %i.ke, align 4, !tbaa !49, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !114
  store i64 9223372034707292160, ptr %10, align 8, !noalias !114
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !114
  store i32 0, ptr %i.kf, align 8, !tbaa !17
  store i32 0, ptr %i.kg, align 4, !tbaa !16
  store i32 -2130640827, ptr %26, align 8, !tbaa !31
  store ptr %27, ptr %i.kh, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !30
  store float 0.000000e+00, ptr %i.ki, align 8, !tbaa !30
  store i32 -1056833531, ptr %28, align 8, !tbaa !31
  store ptr %29, ptr %i.kk, align 8, !tbaa !19
  store i64 12884901889, ptr %i.kj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !30
  store float 0.000000e+00, ptr %i.kl, align 8, !tbaa !30
  store i32 -1056833531, ptr %30, align 8, !tbaa !31
  store ptr %31, ptr %i.kn, align 8, !tbaa !19
  store i64 12884901889, ptr %i.km, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !31
  store ptr %2, ptr %i.kp, align 8, !tbaa !19
  store i64 12884901891, ptr %i.ko, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.kq, align 8, !tbaa !17
  store i32 0, ptr %i.kr, align 4, !tbaa !16
  store i32 -2130640891, ptr %33, align 8, !tbaa !31
  store ptr %3, ptr %i.ks, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.ku, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !31
  store ptr %25, ptr %i.kt, align 8, !tbaa !19
  %i.lj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.lj, double noundef 0.000000e+00)
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
  %.pre = load ptr, ptr %25, align 8, !tbaa !44
  %.pre465 = load ptr, ptr %i.kc, align 8, !tbaa !28
  %.pre466 = load i64, ptr %i.kd, align 8, !tbaa !27
  %.pre467 = mul i64 %.pre466, %indvars.iv449
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.ll = landingpad { ptr, i32 }
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
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ll, %bb.v ], [ %i.lk, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.lm = load ptr, ptr %25, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.ln = load ptr, ptr %i.jw, align 8, !tbaa !46 ; 3 uses
  %i.lo = load ptr, ptr %i.kc, align 8, !tbaa !28 ; 4 uses
  %i.lp = load i64, ptr %i.kd, align 8, !tbaa !27
  %i.lq = mul i64 %i.lp, %indvars.iv449           ; 4 uses
  %i.lr = icmp ult ptr %i.lf, %i.ln
  br i1 %i.lr, label %.lr.ph412.preheader, label %.loopexit

.lr.ph412.preheader:                              ; preds = %bb.x
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lq ; 6 uses
  %i.lt = ptrtoaddr ptr %i.ln to i64
  %i.lu = ptrtoaddr ptr %i.lf to i64              ; 2 uses
  %35 = add i64 %i.lu, 8
  %36 = call i64 @llvm.umax.i64(i64 %i.lt, i64 %35)
  %i.lv = xor i64 %i.lu, -1
  %i.lw = add i64 %36, %i.lv                      ; 2 uses
  %i.lx = lshr i64 %i.lw, 3
  %i.ly = add nuw nsw i64 %i.lx, 1                ; 2 uses
  %min.iters.check502 = icmp ult i64 %i.lw, 24
  br i1 %min.iters.check502, label %.lr.ph412.preheader518, label %vector.ph503

vector.ph503:                                     ; preds = %.lr.ph412.preheader
  %n.vec504 = and i64 %i.ly, 4611686018427387900  ; 4 uses
  %i.lz = mul i64 %n.vec504, 12
  %i.ma = getelementptr i8, ptr %i.ls, i64 %i.lz
  %i.mb = shl i64 %n.vec504, 3
  %i.mc = getelementptr i8, ptr %i.lf, i64 %i.mb
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next513, %vector.body505 ] ; 3 uses
  %i.md = mul i64 %index506, 12                   ; 4 uses
  %next.gep507 = getelementptr i8, ptr %i.ls, i64 %i.md ; 3 uses
  %i.me = getelementptr i8, ptr %i.ls, i64 %i.md  ; 3 uses
  %next.gep508 = getelementptr i8, ptr %i.me, i64 12
  %i.mf = getelementptr i8, ptr %i.ls, i64 %i.md  ; 3 uses
  %next.gep509 = getelementptr i8, ptr %i.mf, i64 24
  %i.mg = getelementptr i8, ptr %i.ls, i64 %i.md  ; 3 uses
  %next.gep510 = getelementptr i8, ptr %i.mg, i64 36
  %i.mh = shl i64 %index506, 3
  %next.gep511 = getelementptr i8, ptr %i.lf, i64 %i.mh
  %i.mi = load float, ptr %next.gep507, align 4, !tbaa !39
  %i.mj = load float, ptr %next.gep508, align 4, !tbaa !39
  %i.mk = load float, ptr %next.gep509, align 4, !tbaa !39
  %i.ml = load float, ptr %next.gep510, align 4, !tbaa !39
  %i.mm = insertelement <4 x float> poison, float %i.mi, i64 0
  %i.mn = insertelement <4 x float> %i.mm, float %i.mj, i64 1
  %i.mo = insertelement <4 x float> %i.mn, float %i.mk, i64 2
  %i.mp = insertelement <4 x float> %i.mo, float %i.ml, i64 3
  %i.mq = getelementptr inbounds nuw i8, ptr %next.gep507, i64 8
  %i.mr = getelementptr i8, ptr %i.me, i64 20
  %i.ms = getelementptr i8, ptr %i.mf, i64 32
  %i.mt = getelementptr i8, ptr %i.mg, i64 44
  %i.mu = load float, ptr %i.mq, align 4, !tbaa !41
  %i.mv = load float, ptr %i.mr, align 4, !tbaa !41
  %i.mw = load float, ptr %i.ms, align 4, !tbaa !41
  %i.mx = load float, ptr %i.mt, align 4, !tbaa !41
  %i.my = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.mz = insertelement <4 x float> %i.my, float %i.mv, i64 1
  %i.na = insertelement <4 x float> %i.mz, float %i.mw, i64 2
  %i.nb = insertelement <4 x float> %i.na, float %i.mx, i64 3 ; 2 uses
  %i.nc = fdiv <4 x float> %i.mp, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %next.gep507, i64 4
  %i.ne = getelementptr i8, ptr %i.me, i64 16
  %i.nf = getelementptr i8, ptr %i.mf, i64 28
  %i.ng = getelementptr i8, ptr %i.mg, i64 40
  %i.nh = load float, ptr %i.nd, align 4, !tbaa !40
  %i.ni = load float, ptr %i.ne, align 4, !tbaa !40
  %i.nj = load float, ptr %i.nf, align 4, !tbaa !40
  %i.nk = load float, ptr %i.ng, align 4, !tbaa !40
  %i.nl = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nm = insertelement <4 x float> %i.nl, float %i.ni, i64 1
  %i.nn = insertelement <4 x float> %i.nm, float %i.nj, i64 2
  %i.no = insertelement <4 x float> %i.nn, float %i.nk, i64 3
  %i.np = fdiv <4 x float> %i.no, %i.nb
  %interleaved.vec512 = shufflevector <4 x float> %i.nc, <4 x float> %i.np, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec512, ptr %next.gep511, align 4, !tbaa !30
  %index.next513 = add nuw i64 %index506, 4       ; 2 uses
  %i.nq = icmp eq i64 %index.next513, %n.vec504
  br i1 %i.nq, label %middle.block514, label %vector.body505, !llvm.loop !106

middle.block514:                                  ; preds = %vector.body505
  %cmp.n515 = icmp eq i64 %i.ly, %n.vec504
  br i1 %cmp.n515, label %.loopexit, label %.lr.ph412.preheader518

.lr.ph412.preheader518:                           ; preds = %.lr.ph412.preheader, %middle.block514
  %.096410.ph = phi ptr [ %i.ls, %.lr.ph412.preheader ], [ %i.ma, %middle.block514 ]
  %.097409.ph = phi ptr [ %i.lf, %.lr.ph412.preheader ], [ %i.mc, %middle.block514 ]
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %.lr.ph412.preheader518, %.lr.ph412
  %.096410 = phi ptr [ %i.ny, %.lr.ph412 ], [ %.096410.ph, %.lr.ph412.preheader518 ] ; 3 uses
  %.097409 = phi ptr [ %i.nx, %.lr.ph412 ], [ %.097409.ph, %.lr.ph412.preheader518 ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.096410, i64 8
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !41
  %i.nt = load <2 x float>, ptr %.096410, align 4, !tbaa !30
  %i.nu = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.nv = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nw = fdiv <2 x float> %i.nt, %i.nv
  store <2 x float> %i.nw, ptr %.097409, align 4, !tbaa !30
  %i.nx = getelementptr inbounds nuw i8, ptr %.097409, i64 8 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.096410, i64 12
  %i.nz = icmp ult ptr %i.nx, %i.ln
  br i1 %i.nz, label %.lr.ph412, label %.loopexit, !llvm.loop !107

.loopexit:                                        ; preds = %.lr.ph412, %middle.block514, %bb.x, %bb.t
  %.pre-phi = phi i64 [ %.pre467, %bb.t ], [ %i.lq, %bb.x ], [ %i.lq, %middle.block514 ], [ %i.lq, %.lr.ph412 ]
  %i.oa = phi ptr [ %.pre465, %bb.t ], [ %i.lo, %bb.x ], [ %i.lo, %middle.block514 ], [ %i.lo, %.lr.ph412 ]
  %i.ob = phi ptr [ %.pre, %bb.t ], [ %i.lf, %bb.x ], [ %i.lf, %middle.block514 ], [ %i.lf, %.lr.ph412 ] ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.pre-phi ; 2 uses
  %i.od = load i32, ptr %i.jo, align 4, !tbaa !34 ; 2 uses
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
  %i.ol = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ok) ; 8 uses
  %i.om = insertelement <4 x float> poison, float %i.oj, i64 0
  %i.on = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.om) ; 15 uses
  %i.oo = icmp slt i32 %i.ol, %.sroa.0382.0.extract.trunc
  %i.op = or i32 %i.on, %i.ol
  %i.oq = icmp sgt i32 %i.op, -1
  %or.cond386.not396 = and i1 %i.oo, %i.oq
  %i.or = icmp slt i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond387 = and i1 %i.or, %or.cond386.not396
  br i1 %or.cond387, label %bb.z, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.os = getelementptr inbounds nuw i8, ptr %.094417, i64 8
  %i.ot = load float, ptr %i.os, align 4, !tbaa !41
  %i.ou = fmul float %i.jy, %i.ot                 ; 14 uses
  %i.ov = load i32, ptr %i.kv, align 4, !tbaa !50
  %.fr425 = freeze i32 %i.ov
  %i.ow = icmp slt i32 %.fr425, 2                 ; 2 uses
  %i.ox = load ptr, ptr %i.kw, align 8, !tbaa !28 ; 7 uses
  %i.oy = load i64, ptr %i.kx, align 8
  %i.oz = zext nneg i32 %i.on to i64
  %i.pa = mul i64 %i.oy, %i.oz
  %.sink.idx.i = select i1 %i.ow, i64 0, i64 %i.pa
  %.sink.i159 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.sink.idx.i
  %i.pb = zext nneg i32 %i.ol to i64              ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i159, i64 %i.pb ; 2 uses
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !30 ; 2 uses
  %i.pe = fcmp uno float %i.pd, 0.000000e+00
  %i.pf = fcmp ogt float %i.pd, %i.ou
  %or.cond388 = select i1 %i.pe, i1 true, i1 %i.pf
  br i1 %or.cond388, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store float %i.ou, ptr %i.pc, align 4, !tbaa !30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.pg = add nsw i32 %i.ol, -1                   ; 4 uses
  %i.ph = add nsw i32 %i.on, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.ol, 0
  %i.pi = icmp sle i32 %i.ol, %.sroa.0382.0.extract.trunc
  %or.cond389.us = and i1 %.not.i160.us, %i.pi    ; 4 uses
  br i1 %i.ow, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread

.split.us.preheader:                              ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.ad, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us

bb.ad:                                            ; preds = %.split.us.preheader
  %.not8.i161.us = icmp sgt i32 %i.on, -1
  br i1 %.not8.i161.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.pj = zext nneg i32 %i.pg to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pj ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !30 ; 2 uses
  %i.pm = fcmp uno float %i.pl, 0.000000e+00
  %i.pn = fcmp ogt float %i.pl, %i.ou
  %or.cond391.us = select i1 %i.pm, i1 true, i1 %i.pn
  br i1 %or.cond391.us, label %bb.af, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.af:                                            ; preds = %bb.ae
  store float %i.ou, ptr %i.pk, align 4, !tbaa !30
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us: ; preds = %.split.us.preheader
  %.not.i160.us.1 = icmp sgt i32 %i.ol, -1
  br i1 %.not.i160.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.af, %bb.ae, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us
  %.not8.i161.us.1 = icmp sgt i32 %i.on, 0
  %i.po = icmp sle i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond390.us.1 = and i1 %.not8.i161.us.1, %i.po
  br i1 %or.cond390.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pb ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !30 ; 2 uses
  %i.pr = fcmp uno float %i.pq, 0.000000e+00
  %i.ps = fcmp ogt float %i.pq, %i.ou
  %or.cond391.us.1 = select i1 %i.pr, i1 true, i1 %i.ps
  br i1 %or.cond391.us.1, label %bb.ah, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

end_hunk_1
begin_hunk_2_@_ZN2cv19performRegistrationIdEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a
.noexc157:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ij, ptr %25, align 8, !tbaa !44
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ig
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ij, i8 0, i64 %i.ii, i1 false), !tbaa !30
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ij, i64 %i.ii
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc157
  %i.il = phi ptr [ %i.ij, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ik, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.in, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.im, align 8, !tbaa !46
  %i.io = fdiv float 1.000000e+00, %7
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !33
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.is = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.ix = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.jh = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.ji = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  br label %bb.p

._crit_edge424:                                   ; preds = %._crit_edge420, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.jo = phi ptr [ %i.il, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.mr, %._crit_edge420 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge424
  %i.jp = load ptr, ptr %i.in, align 8, !tbaa !45
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jo to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.js) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge424, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0461)
  ret void

bb.n:                                             ; preds = %._crit_edge408.split
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %.body

.body:                                            ; preds = %bb.j, %bb.h, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jt, %bb.n ], [ %i.gq, %bb.j ], [ %i.fx, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.p:                                             ; preds = %.lr.ph423, %._crit_edge420
  %i.jv = phi ptr [ %i.il, %.lr.ph423 ], [ %i.mr, %._crit_edge420 ] ; 8 uses
  %indvars.iv449 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next450, %._crit_edge420 ] ; 5 uses
  br i1 %i.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !130
  %i.jw = trunc nuw nsw i64 %indvars.iv449 to i32
  store i32 %i.jw, ptr %9, align 4, !tbaa !48, !noalias !130
  %i.jx = trunc i64 %indvars.iv449 to i32
  %i.jy = add i32 %i.jx, 1
  store i32 %i.jy, ptr %i.iu, align 4, !tbaa !49, !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !130
  store i64 9223372034707292160, ptr %10, align 8, !noalias !130
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !130
  store i32 0, ptr %i.iv, align 8, !tbaa !17
  store i32 0, ptr %i.iw, align 4, !tbaa !16
  store i32 -2130640827, ptr %26, align 8, !tbaa !31
  store ptr %27, ptr %i.ix, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !30
  store float 0.000000e+00, ptr %i.iy, align 8, !tbaa !30
  store i32 -1056833531, ptr %28, align 8, !tbaa !31
  store ptr %29, ptr %i.ja, align 8, !tbaa !19
  store i64 12884901889, ptr %i.iz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !30
  store float 0.000000e+00, ptr %i.jb, align 8, !tbaa !30
  store i32 -1056833531, ptr %30, align 8, !tbaa !31
  store ptr %31, ptr %i.jd, align 8, !tbaa !19
  store i64 12884901889, ptr %i.jc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !31
  store ptr %2, ptr %i.jf, align 8, !tbaa !19
  store i64 12884901891, ptr %i.je, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.jg, align 8, !tbaa !17
  store i32 0, ptr %i.jh, align 4, !tbaa !16
  store i32 -2130640891, ptr %33, align 8, !tbaa !31
  store ptr %3, ptr %i.ji, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.jk, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !31
  store ptr %25, ptr %i.jj, align 8, !tbaa !19
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
  %.pre = load ptr, ptr %25, align 8, !tbaa !44
  %.pre465 = load ptr, ptr %i.is, align 8, !tbaa !28
  %.pre466 = load i64, ptr %i.it, align 8, !tbaa !27
  %.pre467 = mul i64 %.pre466, %indvars.iv449
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
  %i.kc = load ptr, ptr %25, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.kd = load ptr, ptr %i.im, align 8, !tbaa !46 ; 3 uses
  %i.ke = load ptr, ptr %i.is, align 8, !tbaa !28 ; 4 uses
  %i.kf = load i64, ptr %i.it, align 8, !tbaa !27
  %i.kg = mul i64 %i.kf, %indvars.iv449           ; 4 uses
  %i.kh = icmp ult ptr %i.jv, %i.kd
  br i1 %i.kh, label %.lr.ph412.preheader, label %.loopexit

.lr.ph412.preheader:                              ; preds = %bb.x
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kg ; 6 uses
  %i.kj = ptrtoaddr ptr %i.kd to i64
  %i.kk = ptrtoaddr ptr %i.jv to i64              ; 2 uses
  %35 = add i64 %i.kk, 8
  %36 = call i64 @llvm.umax.i64(i64 %i.kj, i64 %35)
  %i.kl = xor i64 %i.kk, -1
  %i.km = add i64 %36, %i.kl                      ; 2 uses
  %i.kn = lshr i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.km, 24
  br i1 %min.iters.check500, label %.lr.ph412.preheader516, label %vector.ph501

vector.ph501:                                     ; preds = %.lr.ph412.preheader
  %n.vec502 = and i64 %i.ko, 4611686018427387900  ; 4 uses
  %i.kp = mul i64 %n.vec502, 12
  %i.kq = getelementptr i8, ptr %i.ki, i64 %i.kp
  %i.kr = shl i64 %n.vec502, 3
  %i.ks = getelementptr i8, ptr %i.jv, i64 %i.kr
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next511, %vector.body503 ] ; 3 uses
  %i.kt = mul i64 %index504, 12                   ; 4 uses
  %next.gep505 = getelementptr i8, ptr %i.ki, i64 %i.kt ; 3 uses
  %i.ku = getelementptr i8, ptr %i.ki, i64 %i.kt  ; 3 uses
  %next.gep506 = getelementptr i8, ptr %i.ku, i64 12
  %i.kv = getelementptr i8, ptr %i.ki, i64 %i.kt  ; 3 uses
  %next.gep507 = getelementptr i8, ptr %i.kv, i64 24
  %i.kw = getelementptr i8, ptr %i.ki, i64 %i.kt  ; 3 uses
  %next.gep508 = getelementptr i8, ptr %i.kw, i64 36
  %i.kx = shl i64 %index504, 3
  %next.gep509 = getelementptr i8, ptr %i.jv, i64 %i.kx
  %i.ky = load float, ptr %next.gep505, align 4, !tbaa !39
  %i.kz = load float, ptr %next.gep506, align 4, !tbaa !39
  %i.la = load float, ptr %next.gep507, align 4, !tbaa !39
  %i.lb = load float, ptr %next.gep508, align 4, !tbaa !39
  %i.lc = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 1
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 2
  %i.lf = insertelement <4 x float> %i.le, float %i.lb, i64 3
  %i.lg = getelementptr inbounds nuw i8, ptr %next.gep505, i64 8
  %i.lh = getelementptr i8, ptr %i.ku, i64 20
  %i.li = getelementptr i8, ptr %i.kv, i64 32
  %i.lj = getelementptr i8, ptr %i.kw, i64 44
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !41
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !41
  %i.lm = load float, ptr %i.li, align 4, !tbaa !41
  %i.ln = load float, ptr %i.lj, align 4, !tbaa !41
  %i.lo = insertelement <4 x float> poison, float %i.lk, i64 0
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 1
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 2
  %i.lr = insertelement <4 x float> %i.lq, float %i.ln, i64 3 ; 2 uses
  %i.ls = fdiv <4 x float> %i.lf, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %next.gep505, i64 4
  %i.lu = getelementptr i8, ptr %i.ku, i64 16
  %i.lv = getelementptr i8, ptr %i.kv, i64 28
  %i.lw = getelementptr i8, ptr %i.kw, i64 40
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !40
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !40
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !40
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !40
  %i.mb = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 1
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 2
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 3
  %i.mf = fdiv <4 x float> %i.me, %i.lr
  %interleaved.vec510 = shufflevector <4 x float> %i.ls, <4 x float> %i.mf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec510, ptr %next.gep509, align 4, !tbaa !30
  %index.next511 = add nuw i64 %index504, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next511, %n.vec502
  br i1 %i.mg, label %middle.block512, label %vector.body503, !llvm.loop !124

middle.block512:                                  ; preds = %vector.body503
  %cmp.n513 = icmp eq i64 %i.ko, %n.vec502
  br i1 %cmp.n513, label %.loopexit, label %.lr.ph412.preheader516

.lr.ph412.preheader516:                           ; preds = %.lr.ph412.preheader, %middle.block512
  %.096410.ph = phi ptr [ %i.ki, %.lr.ph412.preheader ], [ %i.kq, %middle.block512 ]
  %.097409.ph = phi ptr [ %i.jv, %.lr.ph412.preheader ], [ %i.ks, %middle.block512 ]
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %.lr.ph412.preheader516, %.lr.ph412
  %.096410 = phi ptr [ %i.mo, %.lr.ph412 ], [ %.096410.ph, %.lr.ph412.preheader516 ] ; 3 uses
  %.097409 = phi ptr [ %i.mn, %.lr.ph412 ], [ %.097409.ph, %.lr.ph412.preheader516 ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.096410, i64 8
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !41
  %i.mj = load <2 x float>, ptr %.096410, align 4, !tbaa !30
  %i.mk = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = fdiv <2 x float> %i.mj, %i.ml
  store <2 x float> %i.mm, ptr %.097409, align 4, !tbaa !30
  %i.mn = getelementptr inbounds nuw i8, ptr %.097409, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.096410, i64 12
  %i.mp = icmp ult ptr %i.mn, %i.kd
  br i1 %i.mp, label %.lr.ph412, label %.loopexit, !llvm.loop !125

.loopexit:                                        ; preds = %.lr.ph412, %middle.block512, %bb.x, %bb.t
  %.pre-phi = phi i64 [ %.pre467, %bb.t ], [ %i.kg, %bb.x ], [ %i.kg, %middle.block512 ], [ %i.kg, %.lr.ph412 ]
  %i.mq = phi ptr [ %.pre465, %bb.t ], [ %i.ke, %bb.x ], [ %i.ke, %middle.block512 ], [ %i.ke, %.lr.ph412 ]
  %i.mr = phi ptr [ %.pre, %bb.t ], [ %i.jv, %bb.x ], [ %i.jv, %middle.block512 ], [ %i.jv, %.lr.ph412 ] ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 %.pre-phi ; 2 uses
  %i.mt = load i32, ptr %i.ie, align 4, !tbaa !34 ; 2 uses
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
  %i.nb = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.na) ; 8 uses
  %i.nc = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.nd = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.nc) ; 15 uses
  %i.ne = icmp slt i32 %i.nb, %.sroa.0382.0.extract.trunc
  %i.nf = or i32 %i.nd, %i.nb
  %i.ng = icmp sgt i32 %i.nf, -1
  %or.cond386.not396 = and i1 %i.ne, %i.ng
  %i.nh = icmp slt i32 %i.nd, %.sroa.3.0.extract.trunc
  %or.cond387 = and i1 %i.nh, %or.cond386.not396
  br i1 %or.cond387, label %bb.z, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ni = getelementptr inbounds nuw i8, ptr %.094417, i64 8
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !41
  %i.nk = fmul float %i.io, %i.nj
  %i.nl = fpext float %i.nk to double             ; 14 uses
  %i.nm = load i32, ptr %i.jl, align 4, !tbaa !50
  %.fr425 = freeze i32 %i.nm
  %i.nn = icmp slt i32 %.fr425, 2                 ; 2 uses
  %i.no = load ptr, ptr %i.jm, align 8, !tbaa !28 ; 7 uses
  %i.np = load i64, ptr %i.jn, align 8
  %i.nq = zext nneg i32 %i.nd to i64
  %i.nr = mul i64 %i.np, %i.nq
  %.sink.idx.i = select i1 %i.nn, i64 0, i64 %i.nr
  %.sink.i159 = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i
  %i.ns = zext nneg i32 %i.nb to i64              ; 3 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.sink.i159, i64 %i.ns ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !52 ; 2 uses
  %i.nv = fcmp uno double %i.nu, 0.000000e+00
  %i.nw = fcmp ogt double %i.nu, %i.nl
  %or.cond388 = select i1 %i.nv, i1 true, i1 %i.nw
  br i1 %or.cond388, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %i.nl, ptr %i.nt, align 8, !tbaa !52
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.nx = add nsw i32 %i.nb, -1                   ; 4 uses
  %i.ny = add nsw i32 %i.nd, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.nb, 0
  %i.nz = icmp sle i32 %i.nb, %.sroa.0382.0.extract.trunc
  %or.cond389.us = and i1 %.not.i160.us, %i.nz    ; 4 uses
  br i1 %i.nn, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread

.split.us.preheader:                              ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.ad, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us

bb.ad:                                            ; preds = %.split.us.preheader
  %.not8.i161.us = icmp sgt i32 %i.nd, -1
  br i1 %.not8.i161.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.oa = zext nneg i32 %i.nx to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.oa ; 2 uses
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !52 ; 2 uses
  %i.od = fcmp uno double %i.oc, 0.000000e+00
  %i.oe = fcmp ogt double %i.oc, %i.nl
  %or.cond391.us = select i1 %i.od, i1 true, i1 %i.oe
  br i1 %or.cond391.us, label %bb.af, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.af:                                            ; preds = %bb.ae
  store double %i.nl, ptr %i.ob, align 8, !tbaa !52
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us: ; preds = %.split.us.preheader
  %.not.i160.us.1 = icmp sgt i32 %i.nb, -1
  br i1 %.not.i160.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.af, %bb.ae, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us
  %.not8.i161.us.1 = icmp sgt i32 %i.nd, 0
  %i.of = icmp sle i32 %i.nd, %.sroa.3.0.extract.trunc
  %or.cond390.us.1 = and i1 %.not8.i161.us.1, %i.of
  br i1 %or.cond390.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.ns ; 2 uses
  %i.oh = load double, ptr %i.og, align 8, !tbaa !52 ; 2 uses
  %i.oi = fcmp uno double %i.oh, 0.000000e+00
  %i.oj = fcmp ogt double %i.oh, %i.nl
  %or.cond391.us.1 = select i1 %i.oi, i1 true, i1 %i.oj
  br i1 %or.cond391.us.1, label %bb.ah, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1
end_hunk_2
begin_hunk_3_@_ZN2cv4Mat_IfEaSEONS_3MatE:bb.a

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
  store i32 -2113863675, ptr %3, align 8, !tbaa !31
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
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
  store i32 -2113863678, ptr %3, align 8, !tbaa !31
  store ptr %0, ptr %i.o, align 8, !tbaa !19
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 2, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !26
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 6
  store i32 %i.d, ptr %0, align 8, !tbaa !26
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
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
  store i32 -2113863674, ptr %3, align 8, !tbaa !31
  store ptr %0, ptr %i.o, align 8, !tbaa !19
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
!13 = !{!12, !9, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!16 = !{!15, !5, i64 4}
!17 = !{!15, !5, i64 0}
!18 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !15, i64 16}
!19 = !{!18, !8, i64 8}
!20 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!21 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!22 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!23 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !22, i64 4, !5, i64 8, !4, i64 12}
!24 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!25 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !20, i64 56, !21, i64 64, !23, i64 72, !24, i64 128}
!26 = !{!25, !5, i64 0}
!27 = !{!11, !11, i64 0}
!28 = !{!25, !9, i64 24}
!29 = !{!"float", !4, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!18, !5, i64 0}
!32 = !{i64 0, i64 64, !14}
!33 = !{!25, !5, i64 8}
!34 = !{!25, !5, i64 12}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"_ZTSN2cv7Point3_IfEE", !29, i64 0, !29, i64 4, !29, i64 8}
!39 = !{!38, !29, i64 0}
!40 = !{!38, !29, i64 4}
!41 = !{!38, !29, i64 8}
!42 = !{!"p1 _ZTSN2cv6Point_IfEE", !8, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !42, i64 16}
!46 = !{!43, !42, i64 8}
!47 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!48 = !{!47, !5, i64 0}
!49 = !{!47, !5, i64 4}
!50 = !{!25, !5, i64 4}
!51 = !{!"double", !4, i64 0}
!52 = !{!51, !51, i64 0}
!53 = distinct !{!53, !"_ZNK2cv11_InputArray6getMatEi"}
!54 = distinct !{!54, !53, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!55 = distinct !{!55, !"_ZNK2cv11_InputArray6getMatEi"}
!56 = distinct !{!56, !55, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!57 = distinct !{!57, !"_ZNK2cv11_InputArray6getMatEi"}
!58 = distinct !{!58, !57, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!59 = distinct !{!59, !"_ZNK2cv11_InputArray6getMatEi"}
!60 = distinct !{!60, !59, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!61 = distinct !{!61, !"_ZNK2cv11_InputArray6getMatEi"}
!62 = distinct !{!62, !61, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!63 = distinct !{!63, !"_ZNK2cv11_InputArray6getMatEi"}
!64 = distinct !{!64, !63, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!65 = distinct !{!65, !"_ZNK2cv11_InputArray6getMatEi"}
!66 = distinct !{!66, !65, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!67 = !{!54}
!68 = !{!56}
!69 = !{!58}
!70 = !{!60}
!71 = !{!62}
!72 = !{!64}
!73 = !{!66}
!74 = !{!10, !9, i64 0}
!75 = !{!12, !11, i64 8}
!76 = distinct !{!76, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!77 = distinct !{!77, !76, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!78 = distinct !{!78, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!79 = distinct !{!79, !78, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!80 = distinct !{!80, !35, !36, !37}
!81 = distinct !{!81, !35}
!82 = distinct !{!82, !35, !37, !36}
!83 = distinct !{!83, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi"}
!84 = distinct !{!84, !83, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi: argument 0"}
!85 = distinct !{!85, !35, !36, !37}
!86 = distinct !{!86, !35, !37, !36}
!87 = distinct !{!87, !35}
!88 = distinct !{!88, !35}
!89 = !{!77}
!90 = !{!79}
!91 = !{!"short", !4, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!84}
!94 = distinct !{!94, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!95 = distinct !{!95, !94, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!96 = distinct !{!96, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!97 = distinct !{!97, !96, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!98 = distinct !{!98, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !35, !36, !37}
!102 = distinct !{!102, !35}
!103 = distinct !{!103, !35, !36}
!104 = distinct !{!104, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi"}
!105 = distinct !{!105, !104, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi: argument 0"}
!106 = distinct !{!106, !35, !36, !37}
!107 = distinct !{!107, !35, !37, !36}
!108 = distinct !{!108, !35}
!109 = distinct !{!109, !35}
!110 = !{!95}
!111 = !{!97}
!112 = !{!99}
!113 = !{!100}
!114 = !{!105}
!115 = distinct !{!115, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!116 = distinct !{!116, !115, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!117 = distinct !{!117, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!118 = distinct !{!118, !117, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!119 = distinct !{!119, !35, !36, !37}
!120 = distinct !{!120, !35}
!121 = distinct !{!121, !35, !37, !36}
!122 = distinct !{!122, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi"}
!123 = distinct !{!123, !122, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi: argument 0"}
!124 = distinct !{!124, !35, !36, !37}
!125 = distinct !{!125, !35, !37, !36}
!126 = distinct !{!126, !35}
!127 = distinct !{!127, !35}
!128 = !{!116}
!129 = !{!118}
!130 = !{!123}
end_hunk_3
