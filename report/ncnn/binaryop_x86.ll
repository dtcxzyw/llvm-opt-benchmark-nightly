Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86?download=true
inline.NumInlined: 420
inline.NumDeleted: 278
loop-unroll.NumRuntimeUnrolled: 168
loop-unroll.NumUnrolled: 168
begin_hunk_0_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
.lr.ph.i56.i409.preheader.new:                    ; preds = %.lr.ph.i56.i409.preheader
  %unroll_iter4187 = and i32 %i.bul, 2147483644
  br label %.lr.ph.i56.i409

.lr.ph.i56.i409:                                  ; preds = %.lr.ph.i56.i409, %.lr.ph.i56.i409.preheader.new
  %.04.i.i410 = phi ptr [ %0, %.lr.ph.i56.i409.preheader.new ], [ %i.bvb, %.lr.ph.i56.i409 ] ; 5 uses
  %.0112.i.i412 = phi ptr [ %2, %.lr.ph.i56.i409.preheader.new ], [ %i.bvc, %.lr.ph.i56.i409 ] ; 5 uses
  %niter4188 = phi i32 [ 0, %.lr.ph.i56.i409.preheader.new ], [ %niter4188.next.3, %.lr.ph.i56.i409 ]
  %i.bun = load <4 x float>, ptr %.04.i.i410, align 1, !tbaa !60
  %i.buo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bun, <4 x float> nofpclass(nan inf) %i.buh)
  store <4 x float> %i.buo, ptr %.0112.i.i412, align 1, !tbaa !60
  %i.bup = getelementptr inbounds nuw i8, ptr %.04.i.i410, i64 16
  %i.buq = getelementptr inbounds nuw i8, ptr %.0112.i.i412, i64 16
  %i.bur = load <4 x float>, ptr %i.bup, align 1, !tbaa !60
  %i.bus = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bur, <4 x float> nofpclass(nan inf) %i.buh)
  store <4 x float> %i.bus, ptr %i.buq, align 1, !tbaa !60
  %i.but = getelementptr inbounds nuw i8, ptr %.04.i.i410, i64 32
  %i.buu = getelementptr inbounds nuw i8, ptr %.0112.i.i412, i64 32
  %i.buv = load <4 x float>, ptr %i.but, align 1, !tbaa !60
  %i.buw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.buv, <4 x float> nofpclass(nan inf) %i.buh)
  store <4 x float> %i.buw, ptr %i.buu, align 1, !tbaa !60
  %i.bux = getelementptr inbounds nuw i8, ptr %.04.i.i410, i64 48
  %i.buy = getelementptr inbounds nuw i8, ptr %.0112.i.i412, i64 48
  %i.buz = load <4 x float>, ptr %i.bux, align 1, !tbaa !60
  %i.bva = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.buz, <4 x float> nofpclass(nan inf) %i.buh)
  store <4 x float> %i.bva, ptr %i.buy, align 1, !tbaa !60
  %i.bvb = getelementptr inbounds nuw i8, ptr %.04.i.i410, i64 64 ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %.0112.i.i412, i64 64 ; 2 uses
  %niter4188.next.3 = add nuw nsw i32 %niter4188, 4 ; 2 uses
  %niter4188.ncmp.3.not = icmp eq i32 %niter4188.next.3, %unroll_iter4187
  br i1 %niter4188.ncmp.3.not, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit.loopexit3729.unr-lcssa, label %.lr.ph.i56.i409, !llvm.loop !169

bb.dp:                                            ; preds = %bb.dn
  %i.bvd = icmp eq i32 %3, 1
  %i.bve = icmp eq i32 %.sroa.speculated.i401, 4
  %or.cond.i402 = and i1 %i.bvd, %i.bve
  br i1 %or.cond.i402, label %bb.dq, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.dq:                                            ; preds = %bb.dp
  %i.bvf = load <4 x float>, ptr %0, align 1, !tbaa !60 ; 5 uses
  %xtraiter4177 = and i32 %.sroa.speculated69.i400, 3 ; 3 uses
  %i.bvg = icmp slt i32 %4, 4
  br i1 %i.bvg, label %.lr.ph.i57.i403.epil.preheader, label %.new4176

.new4176:                                         ; preds = %bb.dq
  %unroll_iter4181 = and i32 %.sroa.speculated69.i400, 2147483644
  br label %.lr.ph.i57.i403

.lr.ph.i57.i403:                                  ; preds = %.lr.ph.i57.i403, %.new4176
  %.014.i.i404 = phi ptr [ %1, %.new4176 ], [ %i.bwd, %.lr.ph.i57.i403 ] ; 5 uses
  %.01012.i.i406 = phi ptr [ %2, %.new4176 ], [ %i.bwe, %.lr.ph.i57.i403 ] ; 5 uses
  %niter4182 = phi i32 [ 0, %.new4176 ], [ %niter4182.next.3, %.lr.ph.i57.i403 ]
  %i.bvh = load float, ptr %.014.i.i404, align 4, !tbaa !59
  %i.bvi = insertelement <4 x float> poison, float %i.bvh, i64 0
  %i.bvj = shufflevector <4 x float> %i.bvi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bvk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bvf, <4 x float> nofpclass(nan inf) %i.bvj)
  store <4 x float> %i.bvk, ptr %.01012.i.i406, align 1, !tbaa !60
  %i.bvl = getelementptr inbounds nuw i8, ptr %.014.i.i404, i64 4
  %i.bvm = getelementptr inbounds nuw i8, ptr %.01012.i.i406, i64 16
  %i.bvn = load float, ptr %i.bvl, align 4, !tbaa !59
  %i.bvo = insertelement <4 x float> poison, float %i.bvn, i64 0
  %i.bvp = shufflevector <4 x float> %i.bvo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bvq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bvf, <4 x float> nofpclass(nan inf) %i.bvp)
  store <4 x float> %i.bvq, ptr %i.bvm, align 1, !tbaa !60
  %i.bvr = getelementptr inbounds nuw i8, ptr %.014.i.i404, i64 8
  %i.bvs = getelementptr inbounds nuw i8, ptr %.01012.i.i406, i64 32
  %i.bvt = load float, ptr %i.bvr, align 4, !tbaa !59
  %i.bvu = insertelement <4 x float> poison, float %i.bvt, i64 0
  %i.bvv = shufflevector <4 x float> %i.bvu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bvw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bvf, <4 x float> nofpclass(nan inf) %i.bvv)
  store <4 x float> %i.bvw, ptr %i.bvs, align 1, !tbaa !60
  %i.bvx = getelementptr inbounds nuw i8, ptr %.014.i.i404, i64 12
  %i.bvy = getelementptr inbounds nuw i8, ptr %.01012.i.i406, i64 48
  %i.bvz = load float, ptr %i.bvx, align 4, !tbaa !59
  %i.bwa = insertelement <4 x float> poison, float %i.bvz, i64 0
  %i.bwb = shufflevector <4 x float> %i.bwa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bvf, <4 x float> nofpclass(nan inf) %i.bwb)
  store <4 x float> %i.bwc, ptr %i.bvy, align 1, !tbaa !60
  %i.bwd = getelementptr inbounds nuw i8, ptr %.014.i.i404, i64 16 ; 2 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %.01012.i.i406, i64 64 ; 2 uses
  %niter4182.next.3 = add i32 %niter4182, 4       ; 2 uses
  %niter4182.ncmp.3 = icmp eq i32 %niter4182.next.3, %unroll_iter4181
  br i1 %niter4182.ncmp.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit.loopexit3730.unr-lcssa, label %.lr.ph.i57.i403, !llvm.loop !170

bb.dr:                                            ; preds = %bb.a
  %.sroa.speculated76.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i467 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.bwf = mul i32 %.sroa.speculated.i467, %.sroa.speculated76.i ; 26 uses
  %i.bwg = icmp eq i32 %5, %6
  br i1 %i.bwg, label %bb.ds, label %bb.ef

bb.ds:                                            ; preds = %bb.dr
  %i.bwh = icmp eq i32 %3, %4
  br i1 %i.bwh, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.bwi = icmp sgt i32 %i.bwf, 3
  br i1 %i.bwi, label %.lr.ph.i.i486, label %.preheader.i.i480

.preheader.loopexit.i.i487:                       ; preds = %.lr.ph.i.i486
  %i.bwj = and i32 %i.bwf, 2147483644
  br label %.preheader.i.i480

.preheader.i.i480:                                ; preds = %.preheader.loopexit.i.i487, %bb.dt
  %.022.lcssa.i.i481 = phi ptr [ %2, %bb.dt ], [ %i.cab, %.preheader.loopexit.i.i487 ] ; 5 uses
  %.020.lcssa.i.i482 = phi ptr [ %1, %bb.dt ], [ %i.caa, %.preheader.loopexit.i.i487 ] ; 5 uses
  %.018.lcssa.i.i483 = phi i32 [ 0, %bb.dt ], [ %i.bwj, %.preheader.loopexit.i.i487 ] ; 5 uses
  %.0.lcssa.i.i484 = phi ptr [ %0, %bb.dt ], [ %i.bzz, %.preheader.loopexit.i.i487 ] ; 5 uses
  %.022.lcssa.i.i4813069 = ptrtoaddr ptr %.022.lcssa.i.i481 to i64 ; 2 uses
  %.0.lcssa.i.i4843070 = ptrtoaddr ptr %.0.lcssa.i.i484 to i64
  %.020.lcssa.i.i4823071 = ptrtoaddr ptr %.020.lcssa.i.i482 to i64
  %i.bwk = icmp slt i32 %.018.lcssa.i.i483, %i.bwf
  br i1 %i.bwk, label %.lr.ph93.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph93.i.i.preheader:                           ; preds = %.preheader.i.i480
  %i.bwl = xor i32 %.018.lcssa.i.i483, -1
  %i.bwm = add i32 %i.bwf, %i.bwl                 ; 2 uses
  %i.bwn = zext i32 %i.bwm to i64
  %i.bwo = add nuw nsw i64 %i.bwn, 1              ; 2 uses
  %min.iters.check3073 = icmp ult i32 %i.bwm, 7
  br i1 %min.iters.check3073, label %.lr.ph93.i.i.preheader3731, label %vector.memcheck3074

vector.memcheck3074:                              ; preds = %.lr.ph93.i.i.preheader
  %i.bwp = sub i64 %.0.lcssa.i.i4843070, %.022.lcssa.i.i4813069
  %diff.check3075 = icmp ugt i64 %i.bwp, -16
  %i.bwq = sub i64 %.020.lcssa.i.i4823071, %.022.lcssa.i.i4813069
  %diff.check3076 = icmp ugt i64 %i.bwq, -16
  %conflict.rdx3077 = or i1 %diff.check3075, %diff.check3076
  br i1 %conflict.rdx3077, label %.lr.ph93.i.i.preheader3731, label %vector.ph3078

vector.ph3078:                                    ; preds = %vector.memcheck3074
  %n.vec3079 = and i64 %i.bwo, 8589934588         ; 4 uses
  %i.bwr = shl nuw nsw i64 %n.vec3079, 2          ; 3 uses
  %i.bws = getelementptr i8, ptr %.0.lcssa.i.i484, i64 %i.bwr
  %i.bwt = trunc i64 %n.vec3079 to i32
  %i.bwu = add i32 %.018.lcssa.i.i483, %i.bwt
  %i.bwv = getelementptr i8, ptr %.020.lcssa.i.i482, i64 %i.bwr
  %i.bww = getelementptr i8, ptr %.022.lcssa.i.i481, i64 %i.bwr
  br label %vector.body3080

vector.body3080:                                  ; preds = %vector.body3080, %vector.ph3078
  %index3081 = phi i64 [ 0, %vector.ph3078 ], [ %index.next3087, %vector.body3080 ] ; 2 uses
  %i.bwx = shl i64 %index3081, 2                  ; 3 uses
  %next.gep3082 = getelementptr i8, ptr %.0.lcssa.i.i484, i64 %i.bwx
  %next.gep3083 = getelementptr i8, ptr %.020.lcssa.i.i482, i64 %i.bwx
  %next.gep3084 = getelementptr i8, ptr %.022.lcssa.i.i481, i64 %i.bwx
  %wide.load3085 = load <4 x float>, ptr %next.gep3082, align 4, !tbaa !59
  %wide.load3086 = load <4 x float>, ptr %next.gep3083, align 4, !tbaa !59
  %i.bwy = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %wide.load3085, <4 x float> %wide.load3086)
  store <4 x float> %i.bwy, ptr %next.gep3084, align 4, !tbaa !59
  %index.next3087 = add nuw i64 %index3081, 4     ; 2 uses
  %i.bwz = icmp eq i64 %index.next3087, %n.vec3079
  br i1 %i.bwz, label %middle.block3088, label %vector.body3080, !llvm.loop !171

middle.block3088:                                 ; preds = %vector.body3080
  %cmp.n3089 = icmp eq i64 %i.bwo, %n.vec3079
  br i1 %cmp.n3089, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i.preheader3731

.lr.ph93.i.i.preheader3731:                       ; preds = %vector.memcheck3074, %.lr.ph93.i.i.preheader, %middle.block3088
  %.192.i.i.ph = phi ptr [ %.0.lcssa.i.i484, %vector.memcheck3074 ], [ %.0.lcssa.i.i484, %.lr.ph93.i.i.preheader ], [ %i.bws, %middle.block3088 ] ; 2 uses
  %.11991.i.i.ph = phi i32 [ %.018.lcssa.i.i483, %vector.memcheck3074 ], [ %.018.lcssa.i.i483, %.lr.ph93.i.i.preheader ], [ %i.bwu, %middle.block3088 ] ; 4 uses
  %.12190.i.i.ph = phi ptr [ %.020.lcssa.i.i482, %vector.memcheck3074 ], [ %.020.lcssa.i.i482, %.lr.ph93.i.i.preheader ], [ %i.bwv, %middle.block3088 ] ; 2 uses
  %.12389.i.i.ph = phi ptr [ %.022.lcssa.i.i481, %vector.memcheck3074 ], [ %.022.lcssa.i.i481, %.lr.ph93.i.i.preheader ], [ %i.bww, %middle.block3088 ] ; 2 uses
  %i.bxa = sub i32 %i.bwf, %.11991.i.i.ph
  %xtraiter4173 = and i32 %i.bxa, 3               ; 2 uses
  %lcmp.mod4174.not = icmp eq i32 %xtraiter4173, 0
  br i1 %lcmp.mod4174.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol

.lr.ph93.i.i.prol:                                ; preds = %.lr.ph93.i.i.preheader3731, %.lr.ph93.i.i.prol
  %.192.i.i.prol = phi ptr [ %i.bxe, %.lr.ph93.i.i.prol ], [ %.192.i.i.ph, %.lr.ph93.i.i.preheader3731 ] ; 2 uses
  %.11991.i.i.prol = phi i32 [ %i.bxh, %.lr.ph93.i.i.prol ], [ %.11991.i.i.ph, %.lr.ph93.i.i.preheader3731 ]
  %.12190.i.i.prol = phi ptr [ %i.bxf, %.lr.ph93.i.i.prol ], [ %.12190.i.i.ph, %.lr.ph93.i.i.preheader3731 ] ; 2 uses
  %.12389.i.i.prol = phi ptr [ %i.bxg, %.lr.ph93.i.i.prol ], [ %.12389.i.i.ph, %.lr.ph93.i.i.preheader3731 ] ; 2 uses
  %prol.iter4175 = phi i32 [ %prol.iter4175.next, %.lr.ph93.i.i.prol ], [ 0, %.lr.ph93.i.i.preheader3731 ]
  %i.bxb = load float, ptr %.192.i.i.prol, align 4, !tbaa !59
  %i.bxc = load float, ptr %.12190.i.i.prol, align 4, !tbaa !59
  %i.bxd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bxb, float %i.bxc)
  store float %i.bxd, ptr %.12389.i.i.prol, align 4, !tbaa !59
  %i.bxe = getelementptr inbounds nuw i8, ptr %.192.i.i.prol, i64 4 ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr %.12190.i.i.prol, i64 4 ; 2 uses
  %i.bxg = getelementptr inbounds nuw i8, ptr %.12389.i.i.prol, i64 4 ; 2 uses
  %i.bxh = add nuw nsw i32 %.11991.i.i.prol, 1    ; 2 uses
  %prol.iter4175.next = add i32 %prol.iter4175, 1 ; 2 uses
  %prol.iter4175.cmp.not = icmp eq i32 %prol.iter4175.next, %xtraiter4173
  br i1 %prol.iter4175.cmp.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol, !llvm.loop !172

.lr.ph93.i.i.prol.loopexit:                       ; preds = %.lr.ph93.i.i.prol, %.lr.ph93.i.i.preheader3731
  %.192.i.i.unr = phi ptr [ %.192.i.i.ph, %.lr.ph93.i.i.preheader3731 ], [ %i.bxe, %.lr.ph93.i.i.prol ]
  %.11991.i.i.unr = phi i32 [ %.11991.i.i.ph, %.lr.ph93.i.i.preheader3731 ], [ %i.bxh, %.lr.ph93.i.i.prol ]
  %.12190.i.i.unr = phi ptr [ %.12190.i.i.ph, %.lr.ph93.i.i.preheader3731 ], [ %i.bxf, %.lr.ph93.i.i.prol ]
  %.12389.i.i.unr = phi ptr [ %.12389.i.i.ph, %.lr.ph93.i.i.preheader3731 ], [ %i.bxg, %.lr.ph93.i.i.prol ]
  %i.bxi = sub i32 %.11991.i.i.ph, %i.bwf
  %i.bxj = icmp ugt i32 %i.bxi, -4
  br i1 %i.bxj, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i

.lr.ph.i.i486:                                    ; preds = %bb.dt, %.lr.ph.i.i486
  %.085.i.i = phi ptr [ %i.bzz, %.lr.ph.i.i486 ], [ %0, %bb.dt ] ; 2 uses
  %.01884.i.i = phi i32 [ %i.cac, %.lr.ph.i.i486 ], [ 0, %bb.dt ]
  %.02083.i.i = phi ptr [ %i.caa, %.lr.ph.i.i486 ], [ %1, %bb.dt ] ; 2 uses
  %.02282.i.i = phi ptr [ %i.cab, %.lr.ph.i.i486 ], [ %2, %bb.dt ] ; 2 uses
  %i.bxk = load <4 x float>, ptr %.085.i.i, align 1, !tbaa !60 ; 2 uses
  %i.bxl = load <4 x float>, ptr %.02083.i.i, align 1, !tbaa !60
  %8 = fcmp fast ole <4 x float> %i.bxk, zeroinitializer
  %i.bxm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bxk, <4 x float> splat (float f0x00800000))
  %i.bxn = bitcast <4 x float> %i.bxm to <4 x i32> ; 2 uses
  %i.bxo = lshr <4 x i32> %i.bxn, splat (i32 23)
  %i.bxp = and <4 x i32> %i.bxn, splat (i32 -2139095041)
  %i.bxq = or disjoint <4 x i32> %i.bxp, splat (i32 1056964608)
  %i.bxr = bitcast <4 x i32> %i.bxq to <4 x float> ; 3 uses
  %i.bxs = add nsw <4 x i32> %i.bxo, splat (i32 -127)
  %i.bxt = sitofp fast <4 x i32> %i.bxs to <4 x float> ; 2 uses
  %i.bxu = fadd fast <4 x float> %i.bxt, splat (float 1.000000e+00)
  %i.bxv = fcmp fast olt <4 x float> %i.bxr, splat (float f0x3F3504F3) ; 2 uses
  %i.bxw = select <4 x i1> %i.bxv, <4 x float> %i.bxr, <4 x float> zeroinitializer
  %i.bxx = fadd fast <4 x float> %i.bxr, splat (float -1.000000e+00)
  %i.bxy = select fast <4 x i1> %i.bxv, <4 x float> %i.bxt, <4 x float> %i.bxu
  %i.bxz = fadd fast <4 x float> %i.bxx, %i.bxw   ; 12 uses
  %i.bya = fmul fast <4 x float> %i.bxz, %i.bxz
  %i.byb = fmul fast <4 x float> %i.bxz, splat (float f0x3D9021BB)
  %i.byc = fadd fast <4 x float> %i.byb, splat (float f0xBDEBD1B8)
  %i.byd = fmul fast <4 x float> %i.byc, %i.bxz
  %i.bye = fadd fast <4 x float> %i.byd, splat (float f0x3DEF251A)
  %i.byf = fmul fast <4 x float> %i.bye, %i.bxz
  %i.byg = fadd fast <4 x float> %i.byf, splat (float f0xBDFE5D4F)
  %i.byh = fmul fast <4 x float> %i.byg, %i.bxz
  %i.byi = fadd fast <4 x float> %i.byh, splat (float f0x3E11E9BF)
  %i.byj = fmul fast <4 x float> %i.byi, %i.bxz
  %i.byk = fadd fast <4 x float> %i.byj, splat (float f0xBE2AAE50)
  %i.byl = fmul fast <4 x float> %i.byk, %i.bxz
  %i.bym = fadd fast <4 x float> %i.byl, splat (float f0x3E4CCEAC)
  %i.byn = fmul fast <4 x float> %i.bym, %i.bxz
  %i.byo = fadd fast <4 x float> %i.byn, splat (float f0xBE7FFFFC)
  %i.byp = fmul fast <4 x float> %i.byo, %i.bxz
  %i.byq = fadd fast <4 x float> %i.byp, splat (float f0x3EAAAAAA)
  %i.byr = fmul fast <4 x float> %i.byq, %i.bxz
  %reass.mul.i.i = fmul fast <4 x float> %i.bxy, splat (float f0x3F317218)
  %reass.add80.i.i = fadd fast <4 x float> %i.byr, splat (float -5.000000e-01)
  %reass.mul81.i.i = fmul fast <4 x float> %i.bya, %reass.add80.i.i
  %i.bys = fadd fast <4 x float> %reass.mul.i.i, %i.bxz
  %i.byt = fadd fast <4 x float> %i.bys, %reass.mul81.i.i
  %9 = select <4 x i1> %8, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.byt
  %i.byu = fmul fast <4 x float> %9, %i.bxl
  %i.byv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.byu, <4 x float> splat (float f0x42B0C0A5))
  %i.byw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.byv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.byx = fmul fast <4 x float> %i.byw, splat (float f0x3FB8AA3B)
  %i.byy = fadd fast <4 x float> %i.byx, splat (float 5.000000e-01) ; 2 uses
  %i.byz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.byy)
  %i.bza = sitofp fast <4 x i32> %i.byz to <4 x float> ; 2 uses
  %i.bzb = fcmp fast olt <4 x float> %i.byy, %i.bza
  %i.bzc = select <4 x i1> %i.bzb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bzd = fsub fast <4 x float> %i.bza, %i.bzc   ; 2 uses
  %i.bze = fmul fast <4 x float> %i.bzd, splat (float f0x3F317218)
  %i.bzf = fsub fast <4 x float> %i.byw, %i.bze   ; 8 uses
  %i.bzg = fmul fast <4 x float> %i.bzf, %i.bzf
  %i.bzh = fmul fast <4 x float> %i.bzf, splat (float f0x39506967)
  %i.bzi = fadd fast <4 x float> %i.bzh, splat (float f0x3AB743CE)
  %i.bzj = fmul fast <4 x float> %i.bzi, %i.bzf
  %i.bzk = fadd fast <4 x float> %i.bzj, splat (float f0x3C088908)
  %i.bzl = fmul fast <4 x float> %i.bzk, %i.bzf
  %i.bzm = fadd fast <4 x float> %i.bzl, splat (float f0x3D2AA9C1)
  %i.bzn = fmul fast <4 x float> %i.bzm, %i.bzf
  %i.bzo = fadd fast <4 x float> %i.bzn, splat (float f0x3E2AAAAA)
  %i.bzp = fmul fast <4 x float> %i.bzo, %i.bzf
  %i.bzq = fadd fast <4 x float> %i.bzp, splat (float 5.000000e-01)
  %i.bzr = fmul fast <4 x float> %i.bzg, %i.bzq
  %i.bzs = fadd fast <4 x float> %i.bzf, splat (float 1.000000e+00)
  %i.bzt = fadd fast <4 x float> %i.bzs, %i.bzr
  %i.bzu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bzd)
  %i.bzv = shl <4 x i32> %i.bzu, splat (i32 23)
  %i.bzw = add <4 x i32> %i.bzv, splat (i32 1065353216)
  %i.bzx = bitcast <4 x i32> %i.bzw to <4 x float>
  %i.bzy = fmul fast <4 x float> %i.bzt, %i.bzx
  store <4 x float> %i.bzy, ptr %.02282.i.i, align 1, !tbaa !60
  %i.bzz = getelementptr inbounds nuw i8, ptr %.085.i.i, i64 16 ; 2 uses
  %i.caa = getelementptr inbounds nuw i8, ptr %.02083.i.i, i64 16 ; 2 uses
  %i.cab = getelementptr inbounds nuw i8, ptr %.02282.i.i, i64 16 ; 2 uses
  %i.cac = add nuw nsw i32 %.01884.i.i, 4         ; 2 uses
  %i.cad = or disjoint i32 %i.cac, 3
  %i.cae = icmp slt i32 %i.cad, %i.bwf
  br i1 %i.cae, label %.lr.ph.i.i486, label %.preheader.loopexit.i.i487, !llvm.loop !173

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i
  %.192.i.i = phi ptr [ %i.cba, %.lr.ph93.i.i ], [ %.192.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 5 uses
  %.11991.i.i = phi i32 [ %i.cbd, %.lr.ph93.i.i ], [ %.11991.i.i.unr, %.lr.ph93.i.i.prol.loopexit ]
  %.12190.i.i = phi ptr [ %i.cbb, %.lr.ph93.i.i ], [ %.12190.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 5 uses
  %.12389.i.i = phi ptr [ %i.cbc, %.lr.ph93.i.i ], [ %.12389.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 5 uses
  %i.caf = load float, ptr %.192.i.i, align 4, !tbaa !59
  %i.cag = load float, ptr %.12190.i.i, align 4, !tbaa !59
  %i.cah = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.caf, float %i.cag)
  store float %i.cah, ptr %.12389.i.i, align 4, !tbaa !59
  %i.cai = getelementptr inbounds nuw i8, ptr %.192.i.i, i64 4
  %i.caj = getelementptr inbounds nuw i8, ptr %.12190.i.i, i64 4
  %i.cak = getelementptr inbounds nuw i8, ptr %.12389.i.i, i64 4
  %i.cal = load float, ptr %i.cai, align 4, !tbaa !59
  %i.cam = load float, ptr %i.caj, align 4, !tbaa !59
  %i.can = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cal, float %i.cam)
  store float %i.can, ptr %i.cak, align 4, !tbaa !59
  %i.cao = getelementptr inbounds nuw i8, ptr %.192.i.i, i64 8
  %i.cap = getelementptr inbounds nuw i8, ptr %.12190.i.i, i64 8
  %i.caq = getelementptr inbounds nuw i8, ptr %.12389.i.i, i64 8
  %i.car = load float, ptr %i.cao, align 4, !tbaa !59
  %i.cas = load float, ptr %i.cap, align 4, !tbaa !59
  %i.cat = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.car, float %i.cas)
  store float %i.cat, ptr %i.caq, align 4, !tbaa !59
  %i.cau = getelementptr inbounds nuw i8, ptr %.192.i.i, i64 12
  %i.cav = getelementptr inbounds nuw i8, ptr %.12190.i.i, i64 12
  %i.caw = getelementptr inbounds nuw i8, ptr %.12389.i.i, i64 12
  %i.cax = load float, ptr %i.cau, align 4, !tbaa !59
  %i.cay = load float, ptr %i.cav, align 4, !tbaa !59
  %i.caz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cax, float %i.cay)
  store float %i.caz, ptr %i.caw, align 4, !tbaa !59
  %i.cba = getelementptr inbounds nuw i8, ptr %.192.i.i, i64 16
  %i.cbb = getelementptr inbounds nuw i8, ptr %.12190.i.i, i64 16
  %i.cbc = getelementptr inbounds nuw i8, ptr %.12389.i.i, i64 16
  %i.cbd = add nuw nsw i32 %.11991.i.i, 4         ; 2 uses
  %exitcond.not.i.i485.3 = icmp eq i32 %i.cbd, %i.bwf
  br i1 %exitcond.not.i.i485.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i, !llvm.loop !174

bb.du:                                            ; preds = %bb.ds
  %i.cbe = icmp eq i32 %4, 1
  br i1 %i.cbe, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %bb.du
  %i.cbf = load float, ptr %1, align 4, !tbaa !59 ; 7 uses
  %i.cbg = icmp eq i32 %.sroa.speculated.i467, 4
  br i1 %i.cbg, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.cbh = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.cbi = insertelement <4 x float> poison, float %i.cbf, i64 0
  %i.cbj = shufflevector <4 x float> %i.cbi, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.cbk = phi fast <4 x float> [ %i.cbh, %bb.dw ], [ %i.cbj, %bb.dx ]
  %i.cbl = icmp sgt i32 %i.bwf, 3
  br i1 %i.cbl, label %.lr.ph.i37.i479, label %.preheader.i34.i474

.preheader.loopexit.i39.i:                        ; preds = %.lr.ph.i37.i479
  %i.cbm = and i32 %i.bwf, 2147483644
  br label %.preheader.i34.i474

.preheader.i34.i474:                              ; preds = %.preheader.loopexit.i39.i, %bb.dy
  %.019.lcssa.i.i475 = phi ptr [ %2, %bb.dy ], [ %i.cfa, %.preheader.loopexit.i39.i ] ; 4 uses
  %.017.lcssa.i.i476 = phi i32 [ 0, %bb.dy ], [ %i.cbm, %.preheader.loopexit.i39.i ] ; 4 uses
  %.0.lcssa.i35.i477 = phi ptr [ %0, %bb.dy ], [ %i.cez, %.preheader.loopexit.i39.i ] ; 4 uses
  %i.cbn = icmp slt i32 %.017.lcssa.i.i476, %i.bwf
  br i1 %i.cbn, label %.lr.ph88.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph88.i.i.preheader:                           ; preds = %.preheader.i34.i474
  %.0.lcssa.i35.i4773044 = ptrtoaddr ptr %.0.lcssa.i35.i477 to i64
  %.019.lcssa.i.i4753043 = ptrtoaddr ptr %.019.lcssa.i.i475 to i64
  %i.cbo = xor i32 %.017.lcssa.i.i476, -1
  %i.cbp = add i32 %i.bwf, %i.cbo                 ; 2 uses
  %i.cbq = zext i32 %i.cbp to i64
  %i.cbr = add nuw nsw i64 %i.cbq, 1              ; 2 uses
  %min.iters.check3046 = icmp ult i32 %i.cbp, 3
  %i.cbs = sub i64 %.0.lcssa.i35.i4773044, %.019.lcssa.i.i4753043
  %diff.check3048 = icmp ugt i64 %i.cbs, -16
  %or.cond3617 = select i1 %min.iters.check3046, i1 true, i1 %diff.check3048
  br i1 %or.cond3617, label %.lr.ph88.i.i.preheader3736, label %vector.ph3049

vector.ph3049:                                    ; preds = %.lr.ph88.i.i.preheader
  %n.vec3050 = and i64 %i.cbr, 8589934588         ; 4 uses
  %i.cbt = shl nuw nsw i64 %n.vec3050, 2          ; 2 uses
  %i.cbu = getelementptr i8, ptr %.0.lcssa.i35.i477, i64 %i.cbt
  %i.cbv = trunc i64 %n.vec3050 to i32
  %i.cbw = add i32 %.017.lcssa.i.i476, %i.cbv
  %i.cbx = getelementptr i8, ptr %.019.lcssa.i.i475, i64 %i.cbt
  %i.cby = insertelement <2 x float> poison, float %i.cbf, i64 0
  %i.cbz = shufflevector <2 x float> %i.cby, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body3051

vector.body3051:                                  ; preds = %vector.body3051, %vector.ph3049
  %index3052 = phi i64 [ 0, %vector.ph3049 ], [ %index.next3056, %vector.body3051 ] ; 2 uses
  %i.cca = shl i64 %index3052, 2                  ; 2 uses
  %next.gep3053 = getelementptr i8, ptr %.0.lcssa.i35.i477, i64 %i.cca
  %next.gep3054 = getelementptr i8, ptr %.019.lcssa.i.i475, i64 %i.cca
  %wide.load3055 = load <4 x float>, ptr %next.gep3053, align 4, !tbaa !59
  %i.ccb = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %wide.load3055, <4 x float> %i.cbz)
  store <4 x float> %i.ccb, ptr %next.gep3054, align 4, !tbaa !59
  %index.next3056 = add nuw i64 %index3052, 4     ; 2 uses
  %i.ccc = icmp eq i64 %index.next3056, %n.vec3050
  br i1 %i.ccc, label %middle.block3057, label %vector.body3051, !llvm.loop !175

middle.block3057:                                 ; preds = %vector.body3051
  %cmp.n3058 = icmp eq i64 %i.cbr, %n.vec3050
  br i1 %cmp.n3058, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i.preheader3736

.lr.ph88.i.i.preheader3736:                       ; preds = %.lr.ph88.i.i.preheader, %middle.block3057
  %.187.i.i.ph = phi ptr [ %.0.lcssa.i35.i477, %.lr.ph88.i.i.preheader ], [ %i.cbu, %middle.block3057 ] ; 2 uses
  %.11886.i.i.ph = phi i32 [ %.017.lcssa.i.i476, %.lr.ph88.i.i.preheader ], [ %i.cbw, %middle.block3057 ] ; 4 uses
  %.12085.i.i.ph = phi ptr [ %.019.lcssa.i.i475, %.lr.ph88.i.i.preheader ], [ %i.cbx, %middle.block3057 ] ; 2 uses
  %i.ccd = sub i32 %i.bwf, %.11886.i.i.ph
  %xtraiter4170 = and i32 %i.ccd, 3               ; 2 uses
  %lcmp.mod4171.not = icmp eq i32 %xtraiter4170, 0
  br i1 %lcmp.mod4171.not, label %.lr.ph88.i.i.prol.loopexit, label %.lr.ph88.i.i.prol

.lr.ph88.i.i.prol:                                ; preds = %.lr.ph88.i.i.preheader3736, %.lr.ph88.i.i.prol
  %.187.i.i.prol = phi ptr [ %i.ccg, %.lr.ph88.i.i.prol ], [ %.187.i.i.ph, %.lr.ph88.i.i.preheader3736 ] ; 2 uses
  %.11886.i.i.prol = phi i32 [ %i.cci, %.lr.ph88.i.i.prol ], [ %.11886.i.i.ph, %.lr.ph88.i.i.preheader3736 ]
  %.12085.i.i.prol = phi ptr [ %i.cch, %.lr.ph88.i.i.prol ], [ %.12085.i.i.ph, %.lr.ph88.i.i.preheader3736 ] ; 2 uses
  %prol.iter4172 = phi i32 [ %prol.iter4172.next, %.lr.ph88.i.i.prol ], [ 0, %.lr.ph88.i.i.preheader3736 ]
  %i.cce = load float, ptr %.187.i.i.prol, align 4, !tbaa !59
  %i.ccf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cce, float %i.cbf)
  store float %i.ccf, ptr %.12085.i.i.prol, align 4, !tbaa !59
  %i.ccg = getelementptr inbounds nuw i8, ptr %.187.i.i.prol, i64 4 ; 2 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %.12085.i.i.prol, i64 4 ; 2 uses
  %i.cci = add nuw nsw i32 %.11886.i.i.prol, 1    ; 2 uses
  %prol.iter4172.next = add i32 %prol.iter4172, 1 ; 2 uses
  %prol.iter4172.cmp.not = icmp eq i32 %prol.iter4172.next, %xtraiter4170
  br i1 %prol.iter4172.cmp.not, label %.lr.ph88.i.i.prol.loopexit, label %.lr.ph88.i.i.prol, !llvm.loop !176

.lr.ph88.i.i.prol.loopexit:                       ; preds = %.lr.ph88.i.i.prol, %.lr.ph88.i.i.preheader3736
  %.187.i.i.unr = phi ptr [ %.187.i.i.ph, %.lr.ph88.i.i.preheader3736 ], [ %i.ccg, %.lr.ph88.i.i.prol ]
  %.11886.i.i.unr = phi i32 [ %.11886.i.i.ph, %.lr.ph88.i.i.preheader3736 ], [ %i.cci, %.lr.ph88.i.i.prol ]
  %.12085.i.i.unr = phi ptr [ %.12085.i.i.ph, %.lr.ph88.i.i.preheader3736 ], [ %i.cch, %.lr.ph88.i.i.prol ]
  %i.ccj = sub i32 %.11886.i.i.ph, %i.bwf
  %i.cck = icmp ugt i32 %i.ccj, -4
  br i1 %i.cck, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i

.lr.ph.i37.i479:                                  ; preds = %bb.dy, %.lr.ph.i37.i479
  %.082.i.i = phi ptr [ %i.cez, %.lr.ph.i37.i479 ], [ %0, %bb.dy ] ; 2 uses
  %.01781.i.i = phi i32 [ %i.cfb, %.lr.ph.i37.i479 ], [ 0, %bb.dy ]
  %.01980.i.i = phi ptr [ %i.cfa, %.lr.ph.i37.i479 ], [ %2, %bb.dy ] ; 2 uses
  %i.ccl = load <4 x float>, ptr %.082.i.i, align 1, !tbaa !60 ; 2 uses
  %10 = fcmp fast ole <4 x float> %i.ccl, zeroinitializer
  %i.ccm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ccl, <4 x float> splat (float f0x00800000))
  %i.ccn = bitcast <4 x float> %i.ccm to <4 x i32> ; 2 uses
  %i.cco = lshr <4 x i32> %i.ccn, splat (i32 23)
  %i.ccp = and <4 x i32> %i.ccn, splat (i32 -2139095041)
  %i.ccq = or disjoint <4 x i32> %i.ccp, splat (i32 1056964608)
  %i.ccr = bitcast <4 x i32> %i.ccq to <4 x float> ; 3 uses
  %i.ccs = add nsw <4 x i32> %i.cco, splat (i32 -127)
  %i.cct = sitofp fast <4 x i32> %i.ccs to <4 x float> ; 2 uses
  %i.ccu = fadd fast <4 x float> %i.cct, splat (float 1.000000e+00)
  %i.ccv = fcmp fast olt <4 x float> %i.ccr, splat (float f0x3F3504F3) ; 2 uses
  %i.ccw = select <4 x i1> %i.ccv, <4 x float> %i.ccr, <4 x float> zeroinitializer
  %i.ccx = fadd fast <4 x float> %i.ccr, splat (float -1.000000e+00)
  %i.ccy = select fast <4 x i1> %i.ccv, <4 x float> %i.cct, <4 x float> %i.ccu
  %i.ccz = fadd fast <4 x float> %i.ccx, %i.ccw   ; 12 uses
  %i.cda = fmul fast <4 x float> %i.ccz, %i.ccz
  %i.cdb = fmul fast <4 x float> %i.ccz, splat (float f0x3D9021BB)
  %i.cdc = fadd fast <4 x float> %i.cdb, splat (float f0xBDEBD1B8)
  %i.cdd = fmul fast <4 x float> %i.cdc, %i.ccz
  %i.cde = fadd fast <4 x float> %i.cdd, splat (float f0x3DEF251A)
  %i.cdf = fmul fast <4 x float> %i.cde, %i.ccz
  %i.cdg = fadd fast <4 x float> %i.cdf, splat (float f0xBDFE5D4F)
  %i.cdh = fmul fast <4 x float> %i.cdg, %i.ccz
  %i.cdi = fadd fast <4 x float> %i.cdh, splat (float f0x3E11E9BF)
  %i.cdj = fmul fast <4 x float> %i.cdi, %i.ccz
  %i.cdk = fadd fast <4 x float> %i.cdj, splat (float f0xBE2AAE50)
  %i.cdl = fmul fast <4 x float> %i.cdk, %i.ccz
  %i.cdm = fadd fast <4 x float> %i.cdl, splat (float f0x3E4CCEAC)
  %i.cdn = fmul fast <4 x float> %i.cdm, %i.ccz
  %i.cdo = fadd fast <4 x float> %i.cdn, splat (float f0xBE7FFFFC)
  %i.cdp = fmul fast <4 x float> %i.cdo, %i.ccz
  %i.cdq = fadd fast <4 x float> %i.cdp, splat (float f0x3EAAAAAA)
  %i.cdr = fmul fast <4 x float> %i.cdq, %i.ccz
  %reass.mul.i38.i = fmul fast <4 x float> %i.ccy, splat (float f0x3F317218)
  %reass.add78.i.i = fadd fast <4 x float> %i.cdr, splat (float -5.000000e-01)
  %reass.mul79.i.i = fmul fast <4 x float> %i.cda, %reass.add78.i.i
  %i.cds = fadd fast <4 x float> %reass.mul.i38.i, %i.ccz
  %i.cdt = fadd fast <4 x float> %i.cds, %reass.mul79.i.i
  %11 = select <4 x i1> %10, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cdt
  %i.cdu = fmul fast <4 x float> %11, %i.cbk
  %i.cdv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cdu, <4 x float> splat (float f0x42B0C0A5))
  %i.cdw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cdv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cdx = fmul fast <4 x float> %i.cdw, splat (float f0x3FB8AA3B)
  %i.cdy = fadd fast <4 x float> %i.cdx, splat (float 5.000000e-01) ; 2 uses
  %i.cdz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cdy)
  %i.cea = sitofp fast <4 x i32> %i.cdz to <4 x float> ; 2 uses
  %i.ceb = fcmp fast olt <4 x float> %i.cdy, %i.cea
  %i.cec = select <4 x i1> %i.ceb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ced = fsub fast <4 x float> %i.cea, %i.cec   ; 2 uses
  %i.cee = fmul fast <4 x float> %i.ced, splat (float f0x3F317218)
  %i.cef = fsub fast <4 x float> %i.cdw, %i.cee   ; 8 uses
  %i.ceg = fmul fast <4 x float> %i.cef, %i.cef
  %i.ceh = fmul fast <4 x float> %i.cef, splat (float f0x39506967)
  %i.cei = fadd fast <4 x float> %i.ceh, splat (float f0x3AB743CE)
  %i.cej = fmul fast <4 x float> %i.cei, %i.cef
  %i.cek = fadd fast <4 x float> %i.cej, splat (float f0x3C088908)
  %i.cel = fmul fast <4 x float> %i.cek, %i.cef
  %i.cem = fadd fast <4 x float> %i.cel, splat (float f0x3D2AA9C1)
  %i.cen = fmul fast <4 x float> %i.cem, %i.cef
  %i.ceo = fadd fast <4 x float> %i.cen, splat (float f0x3E2AAAAA)
  %i.cep = fmul fast <4 x float> %i.ceo, %i.cef
  %i.ceq = fadd fast <4 x float> %i.cep, splat (float 5.000000e-01)
  %i.cer = fmul fast <4 x float> %i.ceg, %i.ceq
  %i.ces = fadd fast <4 x float> %i.cef, splat (float 1.000000e+00)
  %i.cet = fadd fast <4 x float> %i.ces, %i.cer
  %i.ceu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ced)
  %i.cev = shl <4 x i32> %i.ceu, splat (i32 23)
  %i.cew = add <4 x i32> %i.cev, splat (i32 1065353216)
  %i.cex = bitcast <4 x i32> %i.cew to <4 x float>
  %i.cey = fmul fast <4 x float> %i.cet, %i.cex
  store <4 x float> %i.cey, ptr %.01980.i.i, align 1, !tbaa !60
  %i.cez = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 16 ; 2 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %.01980.i.i, i64 16 ; 2 uses
  %i.cfb = add nuw nsw i32 %.01781.i.i, 4         ; 2 uses
  %i.cfc = or disjoint i32 %i.cfb, 3
  %i.cfd = icmp slt i32 %i.cfc, %i.bwf
  br i1 %i.cfd, label %.lr.ph.i37.i479, label %.preheader.loopexit.i39.i, !llvm.loop !177

.lr.ph88.i.i:                                     ; preds = %.lr.ph88.i.i.prol.loopexit, %.lr.ph88.i.i
  %.187.i.i = phi ptr [ %i.cfs, %.lr.ph88.i.i ], [ %.187.i.i.unr, %.lr.ph88.i.i.prol.loopexit ] ; 5 uses
  %.11886.i.i = phi i32 [ %i.cfu, %.lr.ph88.i.i ], [ %.11886.i.i.unr, %.lr.ph88.i.i.prol.loopexit ]
  %.12085.i.i = phi ptr [ %i.cft, %.lr.ph88.i.i ], [ %.12085.i.i.unr, %.lr.ph88.i.i.prol.loopexit ] ; 5 uses
  %i.cfe = load float, ptr %.187.i.i, align 4, !tbaa !59
  %i.cff = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfe, float %i.cbf)
  store float %i.cff, ptr %.12085.i.i, align 4, !tbaa !59
  %i.cfg = getelementptr inbounds nuw i8, ptr %.187.i.i, i64 4
  %i.cfh = getelementptr inbounds nuw i8, ptr %.12085.i.i, i64 4
  %i.cfi = load float, ptr %i.cfg, align 4, !tbaa !59
  %i.cfj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfi, float %i.cbf)
  store float %i.cfj, ptr %i.cfh, align 4, !tbaa !59
  %i.cfk = getelementptr inbounds nuw i8, ptr %.187.i.i, i64 8
  %i.cfl = getelementptr inbounds nuw i8, ptr %.12085.i.i, i64 8
  %i.cfm = load float, ptr %i.cfk, align 4, !tbaa !59
  %i.cfn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfm, float %i.cbf)
  store float %i.cfn, ptr %i.cfl, align 4, !tbaa !59
  %i.cfo = getelementptr inbounds nuw i8, ptr %.187.i.i, i64 12
  %i.cfp = getelementptr inbounds nuw i8, ptr %.12085.i.i, i64 12
  %i.cfq = load float, ptr %i.cfo, align 4, !tbaa !59
  %i.cfr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfq, float %i.cbf)
  store float %i.cfr, ptr %i.cfp, align 4, !tbaa !59
  %i.cfs = getelementptr inbounds nuw i8, ptr %.187.i.i, i64 16
  %i.cft = getelementptr inbounds nuw i8, ptr %.12085.i.i, i64 16
  %i.cfu = add nuw nsw i32 %.11886.i.i, 4         ; 2 uses
  %exitcond.not.i36.i478.3 = icmp eq i32 %i.cfu, %i.bwf
  br i1 %exitcond.not.i36.i478.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i, !llvm.loop !178

bb.dz:                                            ; preds = %bb.du
  %i.cfv = icmp eq i32 %3, 1
  br i1 %i.cfv, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  %i.cfw = load float, ptr %0, align 4, !tbaa !59 ; 7 uses
  %i.cfx = icmp eq i32 %.sroa.speculated.i467, 4
  br i1 %i.cfx, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.cfy = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.cfz = insertelement <4 x float> poison, float %i.cfw, i64 0
  %i.cga = shufflevector <4 x float> %i.cfz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.cgb = phi fast <4 x float> [ %i.cfy, %bb.eb ], [ %i.cga, %bb.ec ] ; 2 uses
  %i.cgc = icmp sgt i32 %i.bwf, 3
  br i1 %i.cgc, label %.lr.ph.i49.i473, label %.preheader.i40.i

.lr.ph.i49.i473:                                  ; preds = %bb.ed
  %12 = fcmp fast ole <4 x float> %i.cgb, zeroinitializer
  %i.cgd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cgb, <4 x float> splat (float f0x00800000))
  %i.cge = bitcast <4 x float> %i.cgd to <4 x i32> ; 2 uses
  %i.cgf = lshr <4 x i32> %i.cge, splat (i32 23)
  %i.cgg = and <4 x i32> %i.cge, splat (i32 -2139095041)
  %i.cgh = or disjoint <4 x i32> %i.cgg, splat (i32 1056964608)
  %i.cgi = bitcast <4 x i32> %i.cgh to <4 x float> ; 3 uses
  %i.cgj = add nsw <4 x i32> %i.cgf, splat (i32 -127)
  %i.cgk = sitofp fast <4 x i32> %i.cgj to <4 x float> ; 2 uses
  %i.cgl = fadd fast <4 x float> %i.cgk, splat (float 1.000000e+00)
  %i.cgm = fcmp fast olt <4 x float> %i.cgi, splat (float f0x3F3504F3) ; 2 uses
  %i.cgn = select <4 x i1> %i.cgm, <4 x float> %i.cgi, <4 x float> zeroinitializer
  %i.cgo = fadd fast <4 x float> %i.cgi, splat (float -1.000000e+00)
  %i.cgp = select fast <4 x i1> %i.cgm, <4 x float> %i.cgk, <4 x float> %i.cgl
  %i.cgq = fadd fast <4 x float> %i.cgo, %i.cgn   ; 12 uses
  %i.cgr = fmul fast <4 x float> %i.cgq, %i.cgq
  %i.cgs = fmul fast <4 x float> %i.cgq, splat (float f0x3D9021BB)
  %i.cgt = fadd fast <4 x float> %i.cgs, splat (float f0xBDEBD1B8)
  %i.cgu = fmul fast <4 x float> %i.cgt, %i.cgq
  %i.cgv = fadd fast <4 x float> %i.cgu, splat (float f0x3DEF251A)
  %i.cgw = fmul fast <4 x float> %i.cgv, %i.cgq
  %i.cgx = fadd fast <4 x float> %i.cgw, splat (float f0xBDFE5D4F)
  %i.cgy = fmul fast <4 x float> %i.cgx, %i.cgq
  %i.cgz = fadd fast <4 x float> %i.cgy, splat (float f0x3E11E9BF)
  %i.cha = fmul fast <4 x float> %i.cgz, %i.cgq
  %i.chb = fadd fast <4 x float> %i.cha, splat (float f0xBE2AAE50)
  %i.chc = fmul fast <4 x float> %i.chb, %i.cgq
  %i.chd = fadd fast <4 x float> %i.chc, splat (float f0x3E4CCEAC)
  %i.che = fmul fast <4 x float> %i.chd, %i.cgq
  %i.chf = fadd fast <4 x float> %i.che, splat (float f0xBE7FFFFC)
  %i.chg = fmul fast <4 x float> %i.chf, %i.cgq
  %i.chh = fadd fast <4 x float> %i.chg, splat (float f0x3EAAAAAA)
  %i.chi = fmul fast <4 x float> %i.chh, %i.cgq
  %reass.mul.i50.i = fmul fast <4 x float> %i.cgp, splat (float f0x3F317218)
  %reass.add78.i51.i = fadd fast <4 x float> %i.chi, splat (float -5.000000e-01)
  %reass.mul79.i52.i = fmul fast <4 x float> %i.cgr, %reass.add78.i51.i
  %i.chj = fadd fast <4 x float> %reass.mul.i50.i, %i.cgq
  %i.chk = fadd fast <4 x float> %i.chj, %reass.mul79.i52.i
  %13 = select <4 x i1> %12, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.chk
  br label %bb.ee

.preheader.loopexit.i56.i:                        ; preds = %bb.ee
  %i.chl = and i32 %i.bwf, 2147483644
  br label %.preheader.i40.i

.preheader.i40.i:                                 ; preds = %.preheader.loopexit.i56.i, %bb.ed
  %.019.lcssa.i41.i = phi ptr [ %2, %bb.ed ], [ %i.cjr, %.preheader.loopexit.i56.i ] ; 4 uses
  %.017.lcssa.i42.i = phi i32 [ 0, %bb.ed ], [ %i.chl, %.preheader.loopexit.i56.i ] ; 4 uses
  %.0.lcssa.i43.i = phi ptr [ %1, %bb.ed ], [ %i.cjq, %.preheader.loopexit.i56.i ] ; 4 uses
  %i.chm = icmp slt i32 %.017.lcssa.i42.i, %i.bwf
  br i1 %i.chm, label %.lr.ph88.i44.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph88.i44.i.preheader:                         ; preds = %.preheader.i40.i
  %.0.lcssa.i43.i3021 = ptrtoaddr ptr %.0.lcssa.i43.i to i64
  %.019.lcssa.i41.i3020 = ptrtoaddr ptr %.019.lcssa.i41.i to i64
  %i.chn = xor i32 %.017.lcssa.i42.i, -1
  %i.cho = add i32 %i.bwf, %i.chn                 ; 2 uses
  %i.chp = zext i32 %i.cho to i64
  %i.chq = add nuw nsw i64 %i.chp, 1              ; 2 uses
  %min.iters.check3023 = icmp ult i32 %i.cho, 3
  %i.chr = sub i64 %.0.lcssa.i43.i3021, %.019.lcssa.i41.i3020
  %diff.check3025 = icmp ugt i64 %i.chr, -16
  %or.cond3618 = select i1 %min.iters.check3023, i1 true, i1 %diff.check3025
  br i1 %or.cond3618, label %.lr.ph88.i44.i.preheader3740, label %vector.ph3026

vector.ph3026:                                    ; preds = %.lr.ph88.i44.i.preheader
  %n.vec3027 = and i64 %i.chq, 8589934588         ; 4 uses
  %i.chs = shl nuw nsw i64 %n.vec3027, 2          ; 2 uses
  %i.cht = getelementptr i8, ptr %.0.lcssa.i43.i, i64 %i.chs
  %i.chu = trunc i64 %n.vec3027 to i32
  %i.chv = add i32 %.017.lcssa.i42.i, %i.chu
  %i.chw = getelementptr i8, ptr %.019.lcssa.i41.i, i64 %i.chs
  %i.chx = insertelement <2 x float> poison, float %i.cfw, i64 0
  %i.chy = shufflevector <2 x float> %i.chx, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body3028

vector.body3028:                                  ; preds = %vector.body3028, %vector.ph3026
  %index3029 = phi i64 [ 0, %vector.ph3026 ], [ %index.next3033, %vector.body3028 ] ; 2 uses
  %i.chz = shl i64 %index3029, 2                  ; 2 uses
  %next.gep3030 = getelementptr i8, ptr %.0.lcssa.i43.i, i64 %i.chz
  %next.gep3031 = getelementptr i8, ptr %.019.lcssa.i41.i, i64 %i.chz
  %wide.load3032 = load <4 x float>, ptr %next.gep3030, align 4, !tbaa !59
  %i.cia = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.chy, <4 x float> %wide.load3032)
  store <4 x float> %i.cia, ptr %next.gep3031, align 4, !tbaa !59
  %index.next3033 = add nuw i64 %index3029, 4     ; 2 uses
  %i.cib = icmp eq i64 %index.next3033, %n.vec3027
  br i1 %i.cib, label %middle.block3034, label %vector.body3028, !llvm.loop !179

middle.block3034:                                 ; preds = %vector.body3028
  %cmp.n3035 = icmp eq i64 %i.chq, %n.vec3027
  br i1 %cmp.n3035, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i.preheader3740

.lr.ph88.i44.i.preheader3740:                     ; preds = %.lr.ph88.i44.i.preheader, %middle.block3034
  %.187.i45.i.ph = phi ptr [ %.0.lcssa.i43.i, %.lr.ph88.i44.i.preheader ], [ %i.cht, %middle.block3034 ] ; 2 uses
  %.11886.i46.i.ph = phi i32 [ %.017.lcssa.i42.i, %.lr.ph88.i44.i.preheader ], [ %i.chv, %middle.block3034 ] ; 4 uses
  %.12085.i47.i.ph = phi ptr [ %.019.lcssa.i41.i, %.lr.ph88.i44.i.preheader ], [ %i.chw, %middle.block3034 ] ; 2 uses
  %i.cic = sub i32 %i.bwf, %.11886.i46.i.ph
  %xtraiter4167 = and i32 %i.cic, 3               ; 2 uses
  %lcmp.mod4168.not = icmp eq i32 %xtraiter4167, 0
  br i1 %lcmp.mod4168.not, label %.lr.ph88.i44.i.prol.loopexit, label %.lr.ph88.i44.i.prol

.lr.ph88.i44.i.prol:                              ; preds = %.lr.ph88.i44.i.preheader3740, %.lr.ph88.i44.i.prol
  %.187.i45.i.prol = phi ptr [ %i.cif, %.lr.ph88.i44.i.prol ], [ %.187.i45.i.ph, %.lr.ph88.i44.i.preheader3740 ] ; 2 uses
  %.11886.i46.i.prol = phi i32 [ %i.cih, %.lr.ph88.i44.i.prol ], [ %.11886.i46.i.ph, %.lr.ph88.i44.i.preheader3740 ]
  %.12085.i47.i.prol = phi ptr [ %i.cig, %.lr.ph88.i44.i.prol ], [ %.12085.i47.i.ph, %.lr.ph88.i44.i.preheader3740 ] ; 2 uses
  %prol.iter4169 = phi i32 [ %prol.iter4169.next, %.lr.ph88.i44.i.prol ], [ 0, %.lr.ph88.i44.i.preheader3740 ]
  %i.cid = load float, ptr %.187.i45.i.prol, align 4, !tbaa !59
  %i.cie = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfw, float %i.cid)
  store float %i.cie, ptr %.12085.i47.i.prol, align 4, !tbaa !59
  %i.cif = getelementptr inbounds nuw i8, ptr %.187.i45.i.prol, i64 4 ; 2 uses
  %i.cig = getelementptr inbounds nuw i8, ptr %.12085.i47.i.prol, i64 4 ; 2 uses
  %i.cih = add nuw nsw i32 %.11886.i46.i.prol, 1  ; 2 uses
  %prol.iter4169.next = add i32 %prol.iter4169, 1 ; 2 uses
  %prol.iter4169.cmp.not = icmp eq i32 %prol.iter4169.next, %xtraiter4167
  br i1 %prol.iter4169.cmp.not, label %.lr.ph88.i44.i.prol.loopexit, label %.lr.ph88.i44.i.prol, !llvm.loop !180

.lr.ph88.i44.i.prol.loopexit:                     ; preds = %.lr.ph88.i44.i.prol, %.lr.ph88.i44.i.preheader3740
  %.187.i45.i.unr = phi ptr [ %.187.i45.i.ph, %.lr.ph88.i44.i.preheader3740 ], [ %i.cif, %.lr.ph88.i44.i.prol ]
  %.11886.i46.i.unr = phi i32 [ %.11886.i46.i.ph, %.lr.ph88.i44.i.preheader3740 ], [ %i.cih, %.lr.ph88.i44.i.prol ]
  %.12085.i47.i.unr = phi ptr [ %.12085.i47.i.ph, %.lr.ph88.i44.i.preheader3740 ], [ %i.cig, %.lr.ph88.i44.i.prol ]
  %i.cii = sub i32 %.11886.i46.i.ph, %i.bwf
  %i.cij = icmp ugt i32 %i.cii, -4
  br i1 %i.cij, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i

bb.ee:                                            ; preds = %bb.ee, %.lr.ph.i49.i473
  %.082.i53.i = phi ptr [ %1, %.lr.ph.i49.i473 ], [ %i.cjq, %bb.ee ] ; 2 uses
  %.01781.i54.i = phi i32 [ 0, %.lr.ph.i49.i473 ], [ %i.cjs, %bb.ee ]
  %.01980.i55.i = phi ptr [ %2, %.lr.ph.i49.i473 ], [ %i.cjr, %bb.ee ] ; 2 uses
  %i.cik = load <4 x float>, ptr %.082.i53.i, align 1, !tbaa !60
  %i.cil = fmul fast <4 x float> %i.cik, %13
  %i.cim = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cil, <4 x float> splat (float f0x42B0C0A5))
  %i.cin = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cim, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cio = fmul fast <4 x float> %i.cin, splat (float f0x3FB8AA3B)
  %i.cip = fadd fast <4 x float> %i.cio, splat (float 5.000000e-01) ; 2 uses
  %i.ciq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cip)
  %i.cir = sitofp fast <4 x i32> %i.ciq to <4 x float> ; 2 uses
  %i.cis = fcmp fast olt <4 x float> %i.cip, %i.cir
  %i.cit = select <4 x i1> %i.cis, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ciu = fsub fast <4 x float> %i.cir, %i.cit   ; 2 uses
  %i.civ = fmul fast <4 x float> %i.ciu, splat (float f0x3F317218)
  %i.ciw = fsub fast <4 x float> %i.cin, %i.civ   ; 8 uses
  %i.cix = fmul fast <4 x float> %i.ciw, %i.ciw
  %i.ciy = fmul fast <4 x float> %i.ciw, splat (float f0x39506967)
  %i.ciz = fadd fast <4 x float> %i.ciy, splat (float f0x3AB743CE)
  %i.cja = fmul fast <4 x float> %i.ciz, %i.ciw
  %i.cjb = fadd fast <4 x float> %i.cja, splat (float f0x3C088908)
  %i.cjc = fmul fast <4 x float> %i.cjb, %i.ciw
  %i.cjd = fadd fast <4 x float> %i.cjc, splat (float f0x3D2AA9C1)
  %i.cje = fmul fast <4 x float> %i.cjd, %i.ciw
  %i.cjf = fadd fast <4 x float> %i.cje, splat (float f0x3E2AAAAA)
  %i.cjg = fmul fast <4 x float> %i.cjf, %i.ciw
  %i.cjh = fadd fast <4 x float> %i.cjg, splat (float 5.000000e-01)
  %i.cji = fmul fast <4 x float> %i.cix, %i.cjh
  %i.cjj = fadd fast <4 x float> %i.ciw, splat (float 1.000000e+00)
  %i.cjk = fadd fast <4 x float> %i.cjj, %i.cji
  %i.cjl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ciu)
  %i.cjm = shl <4 x i32> %i.cjl, splat (i32 23)
  %i.cjn = add <4 x i32> %i.cjm, splat (i32 1065353216)
  %i.cjo = bitcast <4 x i32> %i.cjn to <4 x float>
  %i.cjp = fmul fast <4 x float> %i.cjk, %i.cjo
  store <4 x float> %i.cjp, ptr %.01980.i55.i, align 1, !tbaa !60
  %i.cjq = getelementptr inbounds nuw i8, ptr %.082.i53.i, i64 16 ; 2 uses
  %i.cjr = getelementptr inbounds nuw i8, ptr %.01980.i55.i, i64 16 ; 2 uses
  %i.cjs = add nuw nsw i32 %.01781.i54.i, 4       ; 2 uses
  %i.cjt = or disjoint i32 %i.cjs, 3
  %i.cju = icmp slt i32 %i.cjt, %i.bwf
  br i1 %i.cju, label %bb.ee, label %.preheader.loopexit.i56.i, !llvm.loop !181

.lr.ph88.i44.i:                                   ; preds = %.lr.ph88.i44.i.prol.loopexit, %.lr.ph88.i44.i
  %.187.i45.i = phi ptr [ %i.ckj, %.lr.ph88.i44.i ], [ %.187.i45.i.unr, %.lr.ph88.i44.i.prol.loopexit ] ; 5 uses
  %.11886.i46.i = phi i32 [ %i.ckl, %.lr.ph88.i44.i ], [ %.11886.i46.i.unr, %.lr.ph88.i44.i.prol.loopexit ]
  %.12085.i47.i = phi ptr [ %i.ckk, %.lr.ph88.i44.i ], [ %.12085.i47.i.unr, %.lr.ph88.i44.i.prol.loopexit ] ; 5 uses
  %i.cjv = load float, ptr %.187.i45.i, align 4, !tbaa !59
  %i.cjw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfw, float %i.cjv)
  store float %i.cjw, ptr %.12085.i47.i, align 4, !tbaa !59
  %i.cjx = getelementptr inbounds nuw i8, ptr %.187.i45.i, i64 4
  %i.cjy = getelementptr inbounds nuw i8, ptr %.12085.i47.i, i64 4
  %i.cjz = load float, ptr %i.cjx, align 4, !tbaa !59
  %i.cka = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfw, float %i.cjz)
  store float %i.cka, ptr %i.cjy, align 4, !tbaa !59
  %i.ckb = getelementptr inbounds nuw i8, ptr %.187.i45.i, i64 8
  %i.ckc = getelementptr inbounds nuw i8, ptr %.12085.i47.i, i64 8
  %i.ckd = load float, ptr %i.ckb, align 4, !tbaa !59
  %i.cke = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfw, float %i.ckd)
  store float %i.cke, ptr %i.ckc, align 4, !tbaa !59
  %i.ckf = getelementptr inbounds nuw i8, ptr %.187.i45.i, i64 12
  %i.ckg = getelementptr inbounds nuw i8, ptr %.12085.i47.i, i64 12
  %i.ckh = load float, ptr %i.ckf, align 4, !tbaa !59
  %i.cki = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfw, float %i.ckh)
  store float %i.cki, ptr %i.ckg, align 4, !tbaa !59
  %i.ckj = getelementptr inbounds nuw i8, ptr %.187.i45.i, i64 16
  %i.ckk = getelementptr inbounds nuw i8, ptr %.12085.i47.i, i64 16
  %i.ckl = add nuw nsw i32 %.11886.i46.i, 4       ; 2 uses
  %exitcond.not.i48.i472.3 = icmp eq i32 %i.ckl, %i.bwf
  br i1 %exitcond.not.i48.i472.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i, !llvm.loop !182

bb.ef:                                            ; preds = %bb.dz, %bb.dr
  %i.ckm = icmp eq i32 %6, 1
  br i1 %i.ckm, label %bb.eg, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.eg:                                            ; preds = %bb.ef
  %i.ckn = icmp eq i32 %3, %4
  br i1 %i.ckn, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.cko = icmp eq i32 %.sroa.speculated.i467, 4
  %i.ckp = icmp sgt i32 %.sroa.speculated76.i, 0
  %or.cond.i.i470 = and i1 %i.ckp, %i.cko
  br i1 %or.cond.i.i470, label %.lr.ph.i57.i471, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i57.i471:                                  ; preds = %bb.eh, %.lr.ph.i57.i471
  %.074.i.i = phi ptr [ %i.cnh, %.lr.ph.i57.i471 ], [ %0, %bb.eh ] ; 2 uses
  %.01073.i.i = phi i32 [ %i.cnk, %.lr.ph.i57.i471 ], [ 0, %bb.eh ]
  %.01172.i.i = phi ptr [ %i.cni, %.lr.ph.i57.i471 ], [ %1, %bb.eh ] ; 2 uses
  %.01271.i.i = phi ptr [ %i.cnj, %.lr.ph.i57.i471 ], [ %2, %bb.eh ] ; 2 uses
  %i.ckq = load <4 x float>, ptr %.074.i.i, align 1, !tbaa !60 ; 2 uses
  %i.ckr = load float, ptr %.01172.i.i, align 4, !tbaa !59
  %i.cks = insertelement <4 x float> poison, float %i.ckr, i64 0
  %i.ckt = shufflevector <4 x float> %i.cks, <4 x float> poison, <4 x i32> zeroinitializer
  %14 = fcmp fast ole <4 x float> %i.ckq, zeroinitializer
  %i.cku = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ckq, <4 x float> splat (float f0x00800000))
  %i.ckv = bitcast <4 x float> %i.cku to <4 x i32> ; 2 uses
  %i.ckw = lshr <4 x i32> %i.ckv, splat (i32 23)
  %i.ckx = and <4 x i32> %i.ckv, splat (i32 -2139095041)
  %i.cky = or disjoint <4 x i32> %i.ckx, splat (i32 1056964608)
  %i.ckz = bitcast <4 x i32> %i.cky to <4 x float> ; 3 uses
  %i.cla = add nsw <4 x i32> %i.ckw, splat (i32 -127)
  %i.clb = sitofp fast <4 x i32> %i.cla to <4 x float> ; 2 uses
  %i.clc = fadd fast <4 x float> %i.clb, splat (float 1.000000e+00)
  %i.cld = fcmp fast olt <4 x float> %i.ckz, splat (float f0x3F3504F3) ; 2 uses
  %i.cle = select <4 x i1> %i.cld, <4 x float> %i.ckz, <4 x float> zeroinitializer
  %i.clf = fadd fast <4 x float> %i.ckz, splat (float -1.000000e+00)
  %i.clg = select fast <4 x i1> %i.cld, <4 x float> %i.clb, <4 x float> %i.clc
  %i.clh = fadd fast <4 x float> %i.clf, %i.cle   ; 12 uses
  %i.cli = fmul fast <4 x float> %i.clh, %i.clh
  %i.clj = fmul fast <4 x float> %i.clh, splat (float f0x3D9021BB)
  %i.clk = fadd fast <4 x float> %i.clj, splat (float f0xBDEBD1B8)
  %i.cll = fmul fast <4 x float> %i.clk, %i.clh
  %i.clm = fadd fast <4 x float> %i.cll, splat (float f0x3DEF251A)
  %i.cln = fmul fast <4 x float> %i.clm, %i.clh
  %i.clo = fadd fast <4 x float> %i.cln, splat (float f0xBDFE5D4F)
  %i.clp = fmul fast <4 x float> %i.clo, %i.clh
  %i.clq = fadd fast <4 x float> %i.clp, splat (float f0x3E11E9BF)
  %i.clr = fmul fast <4 x float> %i.clq, %i.clh
  %i.cls = fadd fast <4 x float> %i.clr, splat (float f0xBE2AAE50)
  %i.clt = fmul fast <4 x float> %i.cls, %i.clh
  %i.clu = fadd fast <4 x float> %i.clt, splat (float f0x3E4CCEAC)
  %i.clv = fmul fast <4 x float> %i.clu, %i.clh
  %i.clw = fadd fast <4 x float> %i.clv, splat (float f0xBE7FFFFC)
  %i.clx = fmul fast <4 x float> %i.clw, %i.clh
  %i.cly = fadd fast <4 x float> %i.clx, splat (float f0x3EAAAAAA)
  %i.clz = fmul fast <4 x float> %i.cly, %i.clh
  %reass.mul.i58.i = fmul fast <4 x float> %i.clg, splat (float f0x3F317218)
  %reass.add69.i.i = fadd fast <4 x float> %i.clz, splat (float -5.000000e-01)
  %reass.mul70.i.i = fmul fast <4 x float> %i.cli, %reass.add69.i.i
  %i.cma = fadd fast <4 x float> %reass.mul.i58.i, %i.clh
  %i.cmb = fadd fast <4 x float> %i.cma, %reass.mul70.i.i
  %15 = select <4 x i1> %14, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cmb
  %i.cmc = fmul fast <4 x float> %15, %i.ckt
  %i.cmd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cmc, <4 x float> splat (float f0x42B0C0A5))
  %i.cme = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cmd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cmf = fmul fast <4 x float> %i.cme, splat (float f0x3FB8AA3B)
  %i.cmg = fadd fast <4 x float> %i.cmf, splat (float 5.000000e-01) ; 2 uses
  %i.cmh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cmg)
  %i.cmi = sitofp fast <4 x i32> %i.cmh to <4 x float> ; 2 uses
  %i.cmj = fcmp fast olt <4 x float> %i.cmg, %i.cmi
  %i.cmk = select <4 x i1> %i.cmj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cml = fsub fast <4 x float> %i.cmi, %i.cmk   ; 2 uses
  %i.cmm = fmul fast <4 x float> %i.cml, splat (float f0x3F317218)
  %i.cmn = fsub fast <4 x float> %i.cme, %i.cmm   ; 8 uses
  %i.cmo = fmul fast <4 x float> %i.cmn, %i.cmn
  %i.cmp = fmul fast <4 x float> %i.cmn, splat (float f0x39506967)
  %i.cmq = fadd fast <4 x float> %i.cmp, splat (float f0x3AB743CE)
  %i.cmr = fmul fast <4 x float> %i.cmq, %i.cmn
  %i.cms = fadd fast <4 x float> %i.cmr, splat (float f0x3C088908)
  %i.cmt = fmul fast <4 x float> %i.cms, %i.cmn
  %i.cmu = fadd fast <4 x float> %i.cmt, splat (float f0x3D2AA9C1)
  %i.cmv = fmul fast <4 x float> %i.cmu, %i.cmn
  %i.cmw = fadd fast <4 x float> %i.cmv, splat (float f0x3E2AAAAA)
  %i.cmx = fmul fast <4 x float> %i.cmw, %i.cmn
  %i.cmy = fadd fast <4 x float> %i.cmx, splat (float 5.000000e-01)
  %i.cmz = fmul fast <4 x float> %i.cmo, %i.cmy
  %i.cna = fadd fast <4 x float> %i.cmn, splat (float 1.000000e+00)
  %i.cnb = fadd fast <4 x float> %i.cna, %i.cmz
  %i.cnc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cml)
  %i.cnd = shl <4 x i32> %i.cnc, splat (i32 23)
  %i.cne = add <4 x i32> %i.cnd, splat (i32 1065353216)
  %i.cnf = bitcast <4 x i32> %i.cne to <4 x float>
  %i.cng = fmul fast <4 x float> %i.cnb, %i.cnf
  store <4 x float> %i.cng, ptr %.01271.i.i, align 1, !tbaa !60
  %i.cnh = getelementptr inbounds nuw i8, ptr %.074.i.i, i64 16
  %i.cni = getelementptr inbounds nuw i8, ptr %.01172.i.i, i64 4
  %i.cnj = getelementptr inbounds nuw i8, ptr %.01271.i.i, i64 16
  %i.cnk = add nuw nsw i32 %.01073.i.i, 1         ; 2 uses
  %exitcond.not.i59.i = icmp eq i32 %i.cnk, %.sroa.speculated76.i
  br i1 %exitcond.not.i59.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i57.i471, !llvm.loop !183

bb.ei:                                            ; preds = %bb.eg
  %i.cnl = icmp eq i32 %4, 1
  br i1 %i.cnl, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %.val.i469 = load float, ptr %1, align 4, !tbaa !59
  %i.cnm = insertelement <4 x float> poison, float %.val.i469, i64 0
  %i.cnn = shufflevector <4 x float> %i.cnm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cno = icmp sgt i32 %i.bwf, 3
  br i1 %i.cno, label %.lr.ph.i60.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i60.i:                                     ; preds = %bb.ej, %.lr.ph.i60.i
  %.061.i.i = phi ptr [ %i.cqd, %.lr.ph.i60.i ], [ %0, %bb.ej ] ; 2 uses
  %.01060.i.i = phi i32 [ %i.cqf, %.lr.ph.i60.i ], [ 0, %bb.ej ]
  %.01159.i.i = phi ptr [ %i.cqe, %.lr.ph.i60.i ], [ %2, %bb.ej ] ; 2 uses
  %i.cnp = load <4 x float>, ptr %.061.i.i, align 1, !tbaa !60 ; 2 uses
  %16 = fcmp fast ole <4 x float> %i.cnp, zeroinitializer
  %i.cnq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cnp, <4 x float> splat (float f0x00800000))
  %i.cnr = bitcast <4 x float> %i.cnq to <4 x i32> ; 2 uses
  %i.cns = lshr <4 x i32> %i.cnr, splat (i32 23)
  %i.cnt = and <4 x i32> %i.cnr, splat (i32 -2139095041)
  %i.cnu = or disjoint <4 x i32> %i.cnt, splat (i32 1056964608)
  %i.cnv = bitcast <4 x i32> %i.cnu to <4 x float> ; 3 uses
  %i.cnw = add nsw <4 x i32> %i.cns, splat (i32 -127)
  %i.cnx = sitofp fast <4 x i32> %i.cnw to <4 x float> ; 2 uses
  %i.cny = fadd fast <4 x float> %i.cnx, splat (float 1.000000e+00)
  %i.cnz = fcmp fast olt <4 x float> %i.cnv, splat (float f0x3F3504F3) ; 2 uses
  %i.coa = select <4 x i1> %i.cnz, <4 x float> %i.cnv, <4 x float> zeroinitializer
  %i.cob = fadd fast <4 x float> %i.cnv, splat (float -1.000000e+00)
  %i.coc = select fast <4 x i1> %i.cnz, <4 x float> %i.cnx, <4 x float> %i.cny
  %i.cod = fadd fast <4 x float> %i.cob, %i.coa   ; 12 uses
  %i.coe = fmul fast <4 x float> %i.cod, %i.cod
  %i.cof = fmul fast <4 x float> %i.cod, splat (float f0x3D9021BB)
  %i.cog = fadd fast <4 x float> %i.cof, splat (float f0xBDEBD1B8)
  %i.coh = fmul fast <4 x float> %i.cog, %i.cod
  %i.coi = fadd fast <4 x float> %i.coh, splat (float f0x3DEF251A)
  %i.coj = fmul fast <4 x float> %i.coi, %i.cod
  %i.cok = fadd fast <4 x float> %i.coj, splat (float f0xBDFE5D4F)
  %i.col = fmul fast <4 x float> %i.cok, %i.cod
  %i.com = fadd fast <4 x float> %i.col, splat (float f0x3E11E9BF)
  %i.con = fmul fast <4 x float> %i.com, %i.cod
  %i.coo = fadd fast <4 x float> %i.con, splat (float f0xBE2AAE50)
  %i.cop = fmul fast <4 x float> %i.coo, %i.cod
  %i.coq = fadd fast <4 x float> %i.cop, splat (float f0x3E4CCEAC)
  %i.cor = fmul fast <4 x float> %i.coq, %i.cod
  %i.cos = fadd fast <4 x float> %i.cor, splat (float f0xBE7FFFFC)
  %i.cot = fmul fast <4 x float> %i.cos, %i.cod
  %i.cou = fadd fast <4 x float> %i.cot, splat (float f0x3EAAAAAA)
  %i.cov = fmul fast <4 x float> %i.cou, %i.cod
  %reass.mul.i61.i = fmul fast <4 x float> %i.coc, splat (float f0x3F317218)
  %reass.add57.i.i = fadd fast <4 x float> %i.cov, splat (float -5.000000e-01)
  %reass.mul58.i.i = fmul fast <4 x float> %i.coe, %reass.add57.i.i
  %i.cow = fadd fast <4 x float> %reass.mul.i61.i, %i.cod
  %i.cox = fadd fast <4 x float> %i.cow, %reass.mul58.i.i
  %17 = select <4 x i1> %16, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cox
  %i.coy = fmul fast <4 x float> %17, %i.cnn
  %i.coz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.coy, <4 x float> splat (float f0x42B0C0A5))
  %i.cpa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.coz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cpb = fmul fast <4 x float> %i.cpa, splat (float f0x3FB8AA3B)
  %i.cpc = fadd fast <4 x float> %i.cpb, splat (float 5.000000e-01) ; 2 uses
  %i.cpd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cpc)
  %i.cpe = sitofp fast <4 x i32> %i.cpd to <4 x float> ; 2 uses
  %i.cpf = fcmp fast olt <4 x float> %i.cpc, %i.cpe
  %i.cpg = select <4 x i1> %i.cpf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cph = fsub fast <4 x float> %i.cpe, %i.cpg   ; 2 uses
  %i.cpi = fmul fast <4 x float> %i.cph, splat (float f0x3F317218)
  %i.cpj = fsub fast <4 x float> %i.cpa, %i.cpi   ; 8 uses
  %i.cpk = fmul fast <4 x float> %i.cpj, %i.cpj
  %i.cpl = fmul fast <4 x float> %i.cpj, splat (float f0x39506967)
  %i.cpm = fadd fast <4 x float> %i.cpl, splat (float f0x3AB743CE)
  %i.cpn = fmul fast <4 x float> %i.cpm, %i.cpj
  %i.cpo = fadd fast <4 x float> %i.cpn, splat (float f0x3C088908)
  %i.cpp = fmul fast <4 x float> %i.cpo, %i.cpj
  %i.cpq = fadd fast <4 x float> %i.cpp, splat (float f0x3D2AA9C1)
  %i.cpr = fmul fast <4 x float> %i.cpq, %i.cpj
  %i.cps = fadd fast <4 x float> %i.cpr, splat (float f0x3E2AAAAA)
  %i.cpt = fmul fast <4 x float> %i.cps, %i.cpj
  %i.cpu = fadd fast <4 x float> %i.cpt, splat (float 5.000000e-01)
  %i.cpv = fmul fast <4 x float> %i.cpk, %i.cpu
  %i.cpw = fadd fast <4 x float> %i.cpj, splat (float 1.000000e+00)
  %i.cpx = fadd fast <4 x float> %i.cpw, %i.cpv
  %i.cpy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cph)
  %i.cpz = shl <4 x i32> %i.cpy, splat (i32 23)
  %i.cqa = add <4 x i32> %i.cpz, splat (i32 1065353216)
  %i.cqb = bitcast <4 x i32> %i.cqa to <4 x float>
  %i.cqc = fmul fast <4 x float> %i.cpx, %i.cqb
  store <4 x float> %i.cqc, ptr %.01159.i.i, align 1, !tbaa !60
  %i.cqd = getelementptr inbounds nuw i8, ptr %.061.i.i, i64 16
  %i.cqe = getelementptr inbounds nuw i8, ptr %.01159.i.i, i64 16
  %i.cqf = add nuw nsw i32 %.01060.i.i, 4         ; 2 uses
  %i.cqg = or disjoint i32 %i.cqf, 3
  %i.cqh = icmp slt i32 %i.cqg, %i.bwf
  br i1 %i.cqh, label %.lr.ph.i60.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, !llvm.loop !184

bb.ek:                                            ; preds = %bb.ei
  %i.cqi = icmp eq i32 %3, 1
  %i.cqj = icmp eq i32 %.sroa.speculated.i467, 4
  %or.cond.i468 = and i1 %i.cqi, %i.cqj
  br i1 %or.cond.i468, label %.lr.ph.i63.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i63.i:                                     ; preds = %bb.ek
  %i.cqk = load <4 x float>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %18 = fcmp fast ole <4 x float> %i.cqk, zeroinitializer
  %i.cql = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cqk, <4 x float> splat (float f0x00800000))
  %i.cqm = bitcast <4 x float> %i.cql to <4 x i32> ; 2 uses
  %i.cqn = lshr <4 x i32> %i.cqm, splat (i32 23)
  %i.cqo = and <4 x i32> %i.cqm, splat (i32 -2139095041)
  %i.cqp = or disjoint <4 x i32> %i.cqo, splat (i32 1056964608)
  %i.cqq = bitcast <4 x i32> %i.cqp to <4 x float> ; 3 uses
  %i.cqr = add nsw <4 x i32> %i.cqn, splat (i32 -127)
  %i.cqs = sitofp fast <4 x i32> %i.cqr to <4 x float> ; 2 uses
  %i.cqt = fadd fast <4 x float> %i.cqs, splat (float 1.000000e+00)
  %i.cqu = fcmp fast olt <4 x float> %i.cqq, splat (float f0x3F3504F3) ; 2 uses
  %i.cqv = select <4 x i1> %i.cqu, <4 x float> %i.cqq, <4 x float> zeroinitializer
  %i.cqw = fadd fast <4 x float> %i.cqq, splat (float -1.000000e+00)
  %i.cqx = select fast <4 x i1> %i.cqu, <4 x float> %i.cqs, <4 x float> %i.cqt
  %i.cqy = fadd fast <4 x float> %i.cqw, %i.cqv   ; 12 uses
  %i.cqz = fmul fast <4 x float> %i.cqy, %i.cqy
  %i.cra = fmul fast <4 x float> %i.cqy, splat (float f0x3D9021BB)
  %i.crb = fadd fast <4 x float> %i.cra, splat (float f0xBDEBD1B8)
  %i.crc = fmul fast <4 x float> %i.crb, %i.cqy
  %i.crd = fadd fast <4 x float> %i.crc, splat (float f0x3DEF251A)
  %i.cre = fmul fast <4 x float> %i.crd, %i.cqy
  %i.crf = fadd fast <4 x float> %i.cre, splat (float f0xBDFE5D4F)
  %i.crg = fmul fast <4 x float> %i.crf, %i.cqy
  %i.crh = fadd fast <4 x float> %i.crg, splat (float f0x3E11E9BF)
  %i.cri = fmul fast <4 x float> %i.crh, %i.cqy
  %i.crj = fadd fast <4 x float> %i.cri, splat (float f0xBE2AAE50)
  %i.crk = fmul fast <4 x float> %i.crj, %i.cqy
  %i.crl = fadd fast <4 x float> %i.crk, splat (float f0x3E4CCEAC)
  %i.crm = fmul fast <4 x float> %i.crl, %i.cqy
  %i.crn = fadd fast <4 x float> %i.crm, splat (float f0xBE7FFFFC)
  %i.cro = fmul fast <4 x float> %i.crn, %i.cqy
  %i.crp = fadd fast <4 x float> %i.cro, splat (float f0x3EAAAAAA)
  %i.crq = fmul fast <4 x float> %i.crp, %i.cqy
  %reass.mul.i64.i = fmul fast <4 x float> %i.cqx, splat (float f0x3F317218)
  %reass.add67.i.i = fadd fast <4 x float> %i.crq, splat (float -5.000000e-01)
  %reass.mul68.i.i = fmul fast <4 x float> %i.cqz, %reass.add67.i.i
  %i.crr = fadd fast <4 x float> %reass.mul.i64.i, %i.cqy
  %i.crs = fadd fast <4 x float> %i.crr, %reass.mul68.i.i
  %19 = select <4 x i1> %18, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.crs
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %.lr.ph.i63.i
  %.071.i.i = phi ptr [ %1, %.lr.ph.i63.i ], [ %i.ctb, %bb.el ] ; 2 uses
  %.0970.i.i = phi i32 [ 0, %.lr.ph.i63.i ], [ %i.ctd, %bb.el ]
  %.01069.i.i = phi ptr [ %2, %.lr.ph.i63.i ], [ %i.ctc, %bb.el ] ; 2 uses
  %i.crt = load float, ptr %.071.i.i, align 4, !tbaa !59
  %i.cru = insertelement <4 x float> poison, float %i.crt, i64 0
  %i.crv = shufflevector <4 x float> %i.cru, <4 x float> poison, <4 x i32> zeroinitializer
  %i.crw = fmul fast <4 x float> %i.crv, %19
  %i.crx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.crw, <4 x float> splat (float f0x42B0C0A5))
  %i.cry = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.crx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.crz = fmul fast <4 x float> %i.cry, splat (float f0x3FB8AA3B)
  %i.csa = fadd fast <4 x float> %i.crz, splat (float 5.000000e-01) ; 2 uses
  %i.csb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.csa)
  %i.csc = sitofp fast <4 x i32> %i.csb to <4 x float> ; 2 uses
  %i.csd = fcmp fast olt <4 x float> %i.csa, %i.csc
  %i.cse = select <4 x i1> %i.csd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.csf = fsub fast <4 x float> %i.csc, %i.cse   ; 2 uses
  %i.csg = fmul fast <4 x float> %i.csf, splat (float f0x3F317218)
  %i.csh = fsub fast <4 x float> %i.cry, %i.csg   ; 8 uses
  %i.csi = fmul fast <4 x float> %i.csh, %i.csh
  %i.csj = fmul fast <4 x float> %i.csh, splat (float f0x39506967)
  %i.csk = fadd fast <4 x float> %i.csj, splat (float f0x3AB743CE)
  %i.csl = fmul fast <4 x float> %i.csk, %i.csh
  %i.csm = fadd fast <4 x float> %i.csl, splat (float f0x3C088908)
  %i.csn = fmul fast <4 x float> %i.csm, %i.csh
  %i.cso = fadd fast <4 x float> %i.csn, splat (float f0x3D2AA9C1)
  %i.csp = fmul fast <4 x float> %i.cso, %i.csh
  %i.csq = fadd fast <4 x float> %i.csp, splat (float f0x3E2AAAAA)
  %i.csr = fmul fast <4 x float> %i.csq, %i.csh
  %i.css = fadd fast <4 x float> %i.csr, splat (float 5.000000e-01)
  %i.cst = fmul fast <4 x float> %i.csi, %i.css
  %i.csu = fadd fast <4 x float> %i.csh, splat (float 1.000000e+00)
  %i.csv = fadd fast <4 x float> %i.csu, %i.cst
  %i.csw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.csf)
  %i.csx = shl <4 x i32> %i.csw, splat (i32 23)
  %i.csy = add <4 x i32> %i.csx, splat (i32 1065353216)
  %i.csz = bitcast <4 x i32> %i.csy to <4 x float>
  %i.cta = fmul fast <4 x float> %i.csv, %i.csz
  store <4 x float> %i.cta, ptr %.01069.i.i, align 1, !tbaa !60
  %i.ctb = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 4
  %i.ctc = getelementptr inbounds nuw i8, ptr %.01069.i.i, i64 16
  %i.ctd = add nuw nsw i32 %.0970.i.i, 1          ; 2 uses
  %exitcond.not.i65.i = icmp eq i32 %i.ctd, %.sroa.speculated76.i
  br i1 %exitcond.not.i65.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %bb.el, !llvm.loop !185

bb.em:                                            ; preds = %bb.a
  %.sroa.speculated68.i488 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 7 uses
  %.sroa.speculated.i489 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.cte = mul i32 %.sroa.speculated.i489, %.sroa.speculated68.i488 ; 26 uses
  %i.ctf = icmp eq i32 %5, %6
  br i1 %i.ctf, label %bb.en, label %bb.ez

bb.en:                                            ; preds = %bb.em
  %i.ctg = icmp eq i32 %3, %4
  br i1 %i.ctg, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.cth = icmp sgt i32 %i.cte, 3
  br i1 %i.cth, label %.lr.ph.i.i547.preheader, label %.preheader.i.i536

.lr.ph.i.i547.preheader:                          ; preds = %bb.eo
  %i.cti = add nsw i32 %i.cte, -4                 ; 2 uses
  %i.ctj = lshr i32 %i.cti, 2
  %i.ctk = add nuw nsw i32 %i.ctj, 1              ; 2 uses
  %xtraiter4155 = and i32 %i.ctk, 3               ; 3 uses
  %i.ctl = icmp ult i32 %i.cti, 12
  br i1 %i.ctl, label %.lr.ph.i.i547.epil.preheader, label %.lr.ph.i.i547.preheader.new

.lr.ph.i.i547.preheader.new:                      ; preds = %.lr.ph.i.i547.preheader
  %unroll_iter4162 = and i32 %i.ctk, 2147483644
  br label %.lr.ph.i.i547

.preheader.loopexit.i.i552.unr-lcssa:             ; preds = %.lr.ph.i.i547
  %lcmp.mod4157.not = icmp eq i32 %xtraiter4155, 0
  br i1 %lcmp.mod4157.not, label %.preheader.loopexit.i.i552, label %.lr.ph.i.i547.epil.preheader

.lr.ph.i.i547.epil.preheader:                     ; preds = %.preheader.loopexit.i.i552.unr-lcssa, %.lr.ph.i.i547.preheader
  %.028.i.i548.epil.init = phi ptr [ %0, %.lr.ph.i.i547.preheader ], [ %i.cvs, %.preheader.loopexit.i.i552.unr-lcssa ]
  %.02026.i.i550.epil.init = phi ptr [ %1, %.lr.ph.i.i547.preheader ], [ %i.cvt, %.preheader.loopexit.i.i552.unr-lcssa ]
  %.02225.i.i551.epil.init = phi ptr [ %2, %.lr.ph.i.i547.preheader ], [ %i.cvu, %.preheader.loopexit.i.i552.unr-lcssa ]
  %lcmp.mod4161 = icmp ne i32 %xtraiter4155, 0
  tail call void @llvm.assume(i1 %lcmp.mod4161)
  br label %.lr.ph.i.i547.epil

.lr.ph.i.i547.epil:                               ; preds = %.lr.ph.i.i547.epil, %.lr.ph.i.i547.epil.preheader
  %.028.i.i548.epil = phi ptr [ %i.ctp, %.lr.ph.i.i547.epil ], [ %.028.i.i548.epil.init, %.lr.ph.i.i547.epil.preheader ] ; 2 uses
  %.02026.i.i550.epil = phi ptr [ %i.ctq, %.lr.ph.i.i547.epil ], [ %.02026.i.i550.epil.init, %.lr.ph.i.i547.epil.preheader ] ; 2 uses
  %.02225.i.i551.epil = phi ptr [ %i.ctr, %.lr.ph.i.i547.epil ], [ %.02225.i.i551.epil.init, %.lr.ph.i.i547.epil.preheader ] ; 2 uses
  %epil.iter4156 = phi i32 [ %epil.iter4156.next, %.lr.ph.i.i547.epil ], [ 0, %.lr.ph.i.i547.epil.preheader ]
  %i.ctm = load <4 x float>, ptr %.028.i.i548.epil, align 1, !tbaa !60
  %i.ctn = load <4 x float>, ptr %.02026.i.i550.epil, align 1, !tbaa !60
  %i.cto = fsub fast <4 x float> %i.ctn, %i.ctm
  store <4 x float> %i.cto, ptr %.02225.i.i551.epil, align 1, !tbaa !60
  %i.ctp = getelementptr inbounds nuw i8, ptr %.028.i.i548.epil, i64 16 ; 2 uses
  %i.ctq = getelementptr inbounds nuw i8, ptr %.02026.i.i550.epil, i64 16 ; 2 uses
  %i.ctr = getelementptr inbounds nuw i8, ptr %.02225.i.i551.epil, i64 16 ; 2 uses
  %epil.iter4156.next = add i32 %epil.iter4156, 1 ; 2 uses
  %epil.iter4156.cmp.not = icmp eq i32 %epil.iter4156.next, %xtraiter4155
  br i1 %epil.iter4156.cmp.not, label %.preheader.loopexit.i.i552, label %.lr.ph.i.i547.epil, !llvm.loop !186

.preheader.loopexit.i.i552:                       ; preds = %.lr.ph.i.i547.epil, %.preheader.loopexit.i.i552.unr-lcssa
  %.lcssa3751 = phi ptr [ %i.cvs, %.preheader.loopexit.i.i552.unr-lcssa ], [ %i.ctp, %.lr.ph.i.i547.epil ]
  %.lcssa3750 = phi ptr [ %i.cvt, %.preheader.loopexit.i.i552.unr-lcssa ], [ %i.ctq, %.lr.ph.i.i547.epil ]
  %.lcssa3749 = phi ptr [ %i.cvu, %.preheader.loopexit.i.i552.unr-lcssa ], [ %i.ctr, %.lr.ph.i.i547.epil ]
  %i.cts = and i32 %i.cte, 2147483644
  br label %.preheader.i.i536

.preheader.i.i536:                                ; preds = %.preheader.loopexit.i.i552, %bb.eo
  %.022.lcssa.i.i537 = phi ptr [ %2, %bb.eo ], [ %.lcssa3749, %.preheader.loopexit.i.i552 ] ; 5 uses
  %.020.lcssa.i.i538 = phi ptr [ %1, %bb.eo ], [ %.lcssa3750, %.preheader.loopexit.i.i552 ] ; 5 uses
  %.018.lcssa.i.i539 = phi i32 [ 0, %bb.eo ], [ %i.cts, %.preheader.loopexit.i.i552 ] ; 5 uses
  %.0.lcssa.i.i540 = phi ptr [ %0, %bb.eo ], [ %.lcssa3751, %.preheader.loopexit.i.i552 ] ; 5 uses
  %.022.lcssa.i.i5372989 = ptrtoaddr ptr %.022.lcssa.i.i537 to i64 ; 2 uses
  %.020.lcssa.i.i5382990 = ptrtoaddr ptr %.020.lcssa.i.i538 to i64
  %.0.lcssa.i.i5402991 = ptrtoaddr ptr %.0.lcssa.i.i540 to i64
  %i.ctt = icmp slt i32 %.018.lcssa.i.i539, %i.cte
  br i1 %i.ctt, label %.lr.ph36.i.i541.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph36.i.i541.preheader:                        ; preds = %.preheader.i.i536
  %i.ctu = xor i32 %.018.lcssa.i.i539, -1
  %i.ctv = add i32 %i.cte, %i.ctu                 ; 2 uses
  %i.ctw = zext i32 %i.ctv to i64
  %i.ctx = add nuw nsw i64 %i.ctw, 1              ; 2 uses
  %min.iters.check2993 = icmp ult i32 %i.ctv, 11
  br i1 %min.iters.check2993, label %.lr.ph36.i.i541.preheader3747, label %vector.memcheck2994

vector.memcheck2994:                              ; preds = %.lr.ph36.i.i541.preheader
  %i.cty = sub i64 %.020.lcssa.i.i5382990, %.022.lcssa.i.i5372989
  %diff.check2995 = icmp ugt i64 %i.cty, -32
  %i.ctz = sub i64 %.0.lcssa.i.i5402991, %.022.lcssa.i.i5372989
  %diff.check2996 = icmp ugt i64 %i.ctz, -32
  %conflict.rdx2997 = or i1 %diff.check2995, %diff.check2996
  br i1 %conflict.rdx2997, label %.lr.ph36.i.i541.preheader3747, label %vector.ph2998

vector.ph2998:                                    ; preds = %vector.memcheck2994
  %n.vec2999 = and i64 %i.ctx, 8589934584         ; 4 uses
  %i.cua = shl nuw nsw i64 %n.vec2999, 2          ; 3 uses
  %i.cub = getelementptr i8, ptr %.0.lcssa.i.i540, i64 %i.cua
  %i.cuc = trunc i64 %n.vec2999 to i32
  %i.cud = add i32 %.018.lcssa.i.i539, %i.cuc
  %i.cue = getelementptr i8, ptr %.020.lcssa.i.i538, i64 %i.cua
  %i.cuf = getelementptr i8, ptr %.022.lcssa.i.i537, i64 %i.cua
  br label %vector.body3000

vector.body3000:                                  ; preds = %vector.body3000, %vector.ph2998
  %index3001 = phi i64 [ 0, %vector.ph2998 ], [ %index.next3009, %vector.body3000 ] ; 2 uses
  %i.cug = shl i64 %index3001, 2                  ; 3 uses
  %next.gep3002 = getelementptr i8, ptr %.0.lcssa.i.i540, i64 %i.cug ; 2 uses
  %next.gep3003 = getelementptr i8, ptr %.020.lcssa.i.i538, i64 %i.cug ; 2 uses
  %next.gep3004 = getelementptr i8, ptr %.022.lcssa.i.i537, i64 %i.cug ; 2 uses
  %i.cuh = getelementptr i8, ptr %next.gep3003, i64 16
  %wide.load3005 = load <4 x float>, ptr %next.gep3003, align 4, !tbaa !59
  %wide.load3006 = load <4 x float>, ptr %i.cuh, align 4, !tbaa !59
  %i.cui = getelementptr i8, ptr %next.gep3002, i64 16
  %wide.load3007 = load <4 x float>, ptr %next.gep3002, align 4, !tbaa !59
  %wide.load3008 = load <4 x float>, ptr %i.cui, align 4, !tbaa !59
  %i.cuj = fsub fast <4 x float> %wide.load3005, %wide.load3007
  %i.cuk = fsub fast <4 x float> %wide.load3006, %wide.load3008
  %i.cul = getelementptr i8, ptr %next.gep3004, i64 16
  store <4 x float> %i.cuj, ptr %next.gep3004, align 4, !tbaa !59
  store <4 x float> %i.cuk, ptr %i.cul, align 4, !tbaa !59
  %index.next3009 = add nuw i64 %index3001, 8     ; 2 uses
  %i.cum = icmp eq i64 %index.next3009, %n.vec2999
  br i1 %i.cum, label %middle.block3010, label %vector.body3000, !llvm.loop !187

middle.block3010:                                 ; preds = %vector.body3000
  %cmp.n3011 = icmp eq i64 %i.ctx, %n.vec2999
  br i1 %cmp.n3011, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph36.i.i541.preheader3747

.lr.ph36.i.i541.preheader3747:                    ; preds = %vector.memcheck2994, %.lr.ph36.i.i541.preheader, %middle.block3010
  %.135.i.i542.ph = phi ptr [ %.0.lcssa.i.i540, %vector.memcheck2994 ], [ %.0.lcssa.i.i540, %.lr.ph36.i.i541.preheader ], [ %i.cub, %middle.block3010 ] ; 2 uses
  %.11934.i.i543.ph = phi i32 [ %.018.lcssa.i.i539, %vector.memcheck2994 ], [ %.018.lcssa.i.i539, %.lr.ph36.i.i541.preheader ], [ %i.cud, %middle.block3010 ] ; 4 uses
  %.12133.i.i544.ph = phi ptr [ %.020.lcssa.i.i538, %vector.memcheck2994 ], [ %.020.lcssa.i.i538, %.lr.ph36.i.i541.preheader ], [ %i.cue, %middle.block3010 ] ; 2 uses
  %.12332.i.i545.ph = phi ptr [ %.022.lcssa.i.i537, %vector.memcheck2994 ], [ %.022.lcssa.i.i537, %.lr.ph36.i.i541.preheader ], [ %i.cuf, %middle.block3010 ] ; 2 uses
  %i.cun = sub i32 %i.cte, %.11934.i.i543.ph
  %xtraiter4164 = and i32 %i.cun, 3               ; 2 uses
  %lcmp.mod4165.not = icmp eq i32 %xtraiter4164, 0
  br i1 %lcmp.mod4165.not, label %.lr.ph36.i.i541.prol.loopexit, label %.lr.ph36.i.i541.prol

.lr.ph36.i.i541.prol:                             ; preds = %.lr.ph36.i.i541.preheader3747, %.lr.ph36.i.i541.prol
  %.135.i.i542.prol = phi ptr [ %i.cur, %.lr.ph36.i.i541.prol ], [ %.135.i.i542.ph, %.lr.ph36.i.i541.preheader3747 ] ; 2 uses
  %.11934.i.i543.prol = phi i32 [ %i.cuu, %.lr.ph36.i.i541.prol ], [ %.11934.i.i543.ph, %.lr.ph36.i.i541.preheader3747 ]
  %.12133.i.i544.prol = phi ptr [ %i.cus, %.lr.ph36.i.i541.prol ], [ %.12133.i.i544.ph, %.lr.ph36.i.i541.preheader3747 ] ; 2 uses
  %.12332.i.i545.prol = phi ptr [ %i.cut, %.lr.ph36.i.i541.prol ], [ %.12332.i.i545.ph, %.lr.ph36.i.i541.preheader3747 ] ; 2 uses
  %prol.iter4166 = phi i32 [ %prol.iter4166.next, %.lr.ph36.i.i541.prol ], [ 0, %.lr.ph36.i.i541.preheader3747 ]
  %i.cuo = load float, ptr %.12133.i.i544.prol, align 4, !tbaa !59
  %i.cup = load float, ptr %.135.i.i542.prol, align 4, !tbaa !59
  %i.cuq = fsub fast float %i.cuo, %i.cup
  store float %i.cuq, ptr %.12332.i.i545.prol, align 4, !tbaa !59
  %i.cur = getelementptr inbounds nuw i8, ptr %.135.i.i542.prol, i64 4 ; 2 uses
  %i.cus = getelementptr inbounds nuw i8, ptr %.12133.i.i544.prol, i64 4 ; 2 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %.12332.i.i545.prol, i64 4 ; 2 uses
  %i.cuu = add nuw nsw i32 %.11934.i.i543.prol, 1 ; 2 uses
  %prol.iter4166.next = add i32 %prol.iter4166, 1 ; 2 uses
  %prol.iter4166.cmp.not = icmp eq i32 %prol.iter4166.next, %xtraiter4164
  br i1 %prol.iter4166.cmp.not, label %.lr.ph36.i.i541.prol.loopexit, label %.lr.ph36.i.i541.prol, !llvm.loop !188

.lr.ph36.i.i541.prol.loopexit:                    ; preds = %.lr.ph36.i.i541.prol, %.lr.ph36.i.i541.preheader3747
  %.135.i.i542.unr = phi ptr [ %.135.i.i542.ph, %.lr.ph36.i.i541.preheader3747 ], [ %i.cur, %.lr.ph36.i.i541.prol ]
  %.11934.i.i543.unr = phi i32 [ %.11934.i.i543.ph, %.lr.ph36.i.i541.preheader3747 ], [ %i.cuu, %.lr.ph36.i.i541.prol ]
  %.12133.i.i544.unr = phi ptr [ %.12133.i.i544.ph, %.lr.ph36.i.i541.preheader3747 ], [ %i.cus, %.lr.ph36.i.i541.prol ]
  %.12332.i.i545.unr = phi ptr [ %.12332.i.i545.ph, %.lr.ph36.i.i541.preheader3747 ], [ %i.cut, %.lr.ph36.i.i541.prol ]
  %i.cuv = sub i32 %.11934.i.i543.ph, %i.cte
  %i.cuw = icmp ugt i32 %i.cuv, -4
  br i1 %i.cuw, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph36.i.i541

.lr.ph.i.i547:                                    ; preds = %.lr.ph.i.i547, %.lr.ph.i.i547.preheader.new
  %.028.i.i548 = phi ptr [ %0, %.lr.ph.i.i547.preheader.new ], [ %i.cvs, %.lr.ph.i.i547 ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %.04.i.i563 = phi ptr [ %0, %.lr.ph.i55.i562.preheader.new ], [ %i.drr, %.lr.ph.i55.i562 ] ; 5 uses
  %.0112.i.i565 = phi ptr [ %2, %.lr.ph.i55.i562.preheader.new ], [ %i.drs, %.lr.ph.i55.i562 ] ; 5 uses
  %niter4073 = phi i32 [ 0, %.lr.ph.i55.i562.preheader.new ], [ %niter4073.next.3, %.lr.ph.i55.i562 ]
  %i.drd = load <4 x float>, ptr %.04.i.i563, align 1, !tbaa !60
  %i.dre = fdiv fast <4 x float> %i.dqx, %i.drd
  store <4 x float> %i.dre, ptr %.0112.i.i565, align 1, !tbaa !60
  %i.drf = getelementptr inbounds nuw i8, ptr %.04.i.i563, i64 16
  %i.drg = getelementptr inbounds nuw i8, ptr %.0112.i.i565, i64 16
  %i.drh = load <4 x float>, ptr %i.drf, align 1, !tbaa !60
  %i.dri = fdiv fast <4 x float> %i.dqx, %i.drh
  store <4 x float> %i.dri, ptr %i.drg, align 1, !tbaa !60
  %i.drj = getelementptr inbounds nuw i8, ptr %.04.i.i563, i64 32
  %i.drk = getelementptr inbounds nuw i8, ptr %.0112.i.i565, i64 32
  %i.drl = load <4 x float>, ptr %i.drj, align 1, !tbaa !60
  %i.drm = fdiv fast <4 x float> %i.dqx, %i.drl
  store <4 x float> %i.drm, ptr %i.drk, align 1, !tbaa !60
  %i.drn = getelementptr inbounds nuw i8, ptr %.04.i.i563, i64 48
  %i.dro = getelementptr inbounds nuw i8, ptr %.0112.i.i565, i64 48
  %i.drp = load <4 x float>, ptr %i.drn, align 1, !tbaa !60
  %i.drq = fdiv fast <4 x float> %i.dqx, %i.drp
  store <4 x float> %i.drq, ptr %i.dro, align 1, !tbaa !60
  %i.drr = getelementptr inbounds nuw i8, ptr %.04.i.i563, i64 64 ; 2 uses
  %i.drs = getelementptr inbounds nuw i8, ptr %.0112.i.i565, i64 64 ; 2 uses
  %niter4073.next.3 = add nuw nsw i32 %niter4073, 4 ; 2 uses
  %niter4073.ncmp.3.not = icmp eq i32 %niter4073.next.3, %unroll_iter4072
  br i1 %niter4073.ncmp.3.not, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit.loopexit3777.unr-lcssa, label %.lr.ph.i55.i562, !llvm.loop !220

bb.fy:                                            ; preds = %bb.fw
  %i.drt = icmp eq i32 %3, 1
  %i.dru = icmp eq i32 %.sroa.speculated.i554, 4
  %or.cond.i555 = and i1 %i.drt, %i.dru
  br i1 %or.cond.i555, label %.lr.ph.preheader.i56.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.preheader.i56.i:                           ; preds = %bb.fy
  %i.drv = load <4 x float>, ptr %0, align 1, !tbaa !60 ; 5 uses
  %xtraiter4063 = and i32 %.sroa.speculated69.i553, 3 ; 3 uses
  %i.drw = icmp slt i32 %4, 4
  br i1 %i.drw, label %.lr.ph.i57.i556.epil.preheader, label %.lr.ph.preheader.i56.i.new

.lr.ph.preheader.i56.i.new:                       ; preds = %.lr.ph.preheader.i56.i
  %unroll_iter4066 = and i32 %.sroa.speculated69.i553, 2147483644
  %i.drx = fdiv fast <4 x float> splat (float 1.000000e+00), %i.drv
  %i.dry = fdiv fast <4 x float> splat (float 1.000000e+00), %i.drv
  %i.drz = fdiv fast <4 x float> splat (float 1.000000e+00), %i.drv
  %i.dsa = fdiv fast <4 x float> splat (float 1.000000e+00), %i.drv
  br label %.lr.ph.i57.i556

.lr.ph.i57.i556:                                  ; preds = %.lr.ph.i57.i556, %.lr.ph.preheader.i56.i.new
  %.014.i.i557 = phi ptr [ %1, %.lr.ph.preheader.i56.i.new ], [ %i.dsx, %.lr.ph.i57.i556 ] ; 5 uses
  %.01012.i.i559 = phi ptr [ %2, %.lr.ph.preheader.i56.i.new ], [ %i.dsy, %.lr.ph.i57.i556 ] ; 5 uses
  %niter4067 = phi i32 [ 0, %.lr.ph.preheader.i56.i.new ], [ %niter4067.next.3, %.lr.ph.i57.i556 ]
  %i.dsb = load float, ptr %.014.i.i557, align 4, !tbaa !59
  %i.dsc = insertelement <4 x float> poison, float %i.dsb, i64 0
  %i.dsd = shufflevector <4 x float> %i.dsc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dse = fmul fast <4 x float> %i.dsd, %i.drx
  store <4 x float> %i.dse, ptr %.01012.i.i559, align 1, !tbaa !60
  %i.dsf = getelementptr inbounds nuw i8, ptr %.014.i.i557, i64 4
  %i.dsg = getelementptr inbounds nuw i8, ptr %.01012.i.i559, i64 16
  %i.dsh = load float, ptr %i.dsf, align 4, !tbaa !59
  %i.dsi = insertelement <4 x float> poison, float %i.dsh, i64 0
  %i.dsj = shufflevector <4 x float> %i.dsi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dsk = fmul fast <4 x float> %i.dsj, %i.dry
  store <4 x float> %i.dsk, ptr %i.dsg, align 1, !tbaa !60
  %i.dsl = getelementptr inbounds nuw i8, ptr %.014.i.i557, i64 8
  %i.dsm = getelementptr inbounds nuw i8, ptr %.01012.i.i559, i64 32
  %i.dsn = load float, ptr %i.dsl, align 4, !tbaa !59
  %i.dso = insertelement <4 x float> poison, float %i.dsn, i64 0
  %i.dsp = shufflevector <4 x float> %i.dso, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dsq = fmul fast <4 x float> %i.dsp, %i.drz
  store <4 x float> %i.dsq, ptr %i.dsm, align 1, !tbaa !60
  %i.dsr = getelementptr inbounds nuw i8, ptr %.014.i.i557, i64 12
  %i.dss = getelementptr inbounds nuw i8, ptr %.01012.i.i559, i64 48
  %i.dst = load float, ptr %i.dsr, align 4, !tbaa !59
  %i.dsu = insertelement <4 x float> poison, float %i.dst, i64 0
  %i.dsv = shufflevector <4 x float> %i.dsu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dsw = fmul fast <4 x float> %i.dsv, %i.dsa
  store <4 x float> %i.dsw, ptr %i.dss, align 1, !tbaa !60
  %i.dsx = getelementptr inbounds nuw i8, ptr %.014.i.i557, i64 16 ; 2 uses
  %i.dsy = getelementptr inbounds nuw i8, ptr %.01012.i.i559, i64 64 ; 2 uses
  %niter4067.next.3 = add i32 %niter4067, 4       ; 2 uses
  %niter4067.ncmp.3 = icmp eq i32 %niter4067.next.3, %unroll_iter4066
  br i1 %niter4067.ncmp.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit.loopexit3778.unr-lcssa, label %.lr.ph.i57.i556, !llvm.loop !221

bb.fz:                                            ; preds = %bb.a
  %.sroa.speculated75.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i618 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.dsz = mul i32 %.sroa.speculated.i618, %.sroa.speculated75.i ; 26 uses
  %i.dta = icmp eq i32 %5, %6
  br i1 %i.dta, label %bb.ga, label %bb.gn

bb.ga:                                            ; preds = %bb.fz
  %i.dtb = icmp eq i32 %3, %4
  br i1 %i.dtb, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.dtc = icmp sgt i32 %i.dsz, 3
  br i1 %i.dtc, label %.lr.ph.i.i682, label %.preheader.i.i671

.preheader.loopexit.i.i690:                       ; preds = %.lr.ph.i.i682
  %i.dtd = and i32 %i.dsz, 2147483644
  br label %.preheader.i.i671

.preheader.i.i671:                                ; preds = %.preheader.loopexit.i.i690, %bb.gb
  %.022.lcssa.i.i672 = phi ptr [ %2, %bb.gb ], [ %i.dwv, %.preheader.loopexit.i.i690 ] ; 5 uses
  %.020.lcssa.i.i673 = phi ptr [ %1, %bb.gb ], [ %i.dwu, %.preheader.loopexit.i.i690 ] ; 5 uses
  %.018.lcssa.i.i674 = phi i32 [ 0, %bb.gb ], [ %i.dtd, %.preheader.loopexit.i.i690 ] ; 5 uses
  %.0.lcssa.i.i675 = phi ptr [ %0, %bb.gb ], [ %i.dwt, %.preheader.loopexit.i.i690 ] ; 5 uses
  %.022.lcssa.i.i6722823 = ptrtoaddr ptr %.022.lcssa.i.i672 to i64 ; 2 uses
  %.020.lcssa.i.i6732824 = ptrtoaddr ptr %.020.lcssa.i.i673 to i64
  %.0.lcssa.i.i6752825 = ptrtoaddr ptr %.0.lcssa.i.i675 to i64
  %i.dte = icmp slt i32 %.018.lcssa.i.i674, %i.dsz
  br i1 %i.dte, label %.lr.ph93.i.i676.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph93.i.i676.preheader:                        ; preds = %.preheader.i.i671
  %i.dtf = xor i32 %.018.lcssa.i.i674, -1
  %i.dtg = add i32 %i.dsz, %i.dtf                 ; 2 uses
  %i.dth = zext i32 %i.dtg to i64
  %i.dti = add nuw nsw i64 %i.dth, 1              ; 2 uses
  %min.iters.check2827 = icmp ult i32 %i.dtg, 7
  br i1 %min.iters.check2827, label %.lr.ph93.i.i676.preheader3779, label %vector.memcheck2828

vector.memcheck2828:                              ; preds = %.lr.ph93.i.i676.preheader
  %i.dtj = sub i64 %.020.lcssa.i.i6732824, %.022.lcssa.i.i6722823
  %diff.check2829 = icmp ugt i64 %i.dtj, -16
  %i.dtk = sub i64 %.0.lcssa.i.i6752825, %.022.lcssa.i.i6722823
  %diff.check2830 = icmp ugt i64 %i.dtk, -16
  %conflict.rdx2831 = or i1 %diff.check2829, %diff.check2830
  br i1 %conflict.rdx2831, label %.lr.ph93.i.i676.preheader3779, label %vector.ph2832

vector.ph2832:                                    ; preds = %vector.memcheck2828
  %n.vec2833 = and i64 %i.dti, 8589934588         ; 4 uses
  %i.dtl = shl nuw nsw i64 %n.vec2833, 2          ; 3 uses
  %i.dtm = getelementptr i8, ptr %.0.lcssa.i.i675, i64 %i.dtl
  %i.dtn = trunc i64 %n.vec2833 to i32
  %i.dto = add i32 %.018.lcssa.i.i674, %i.dtn
  %i.dtp = getelementptr i8, ptr %.020.lcssa.i.i673, i64 %i.dtl
  %i.dtq = getelementptr i8, ptr %.022.lcssa.i.i672, i64 %i.dtl
  br label %vector.body2834

vector.body2834:                                  ; preds = %vector.body2834, %vector.ph2832
  %index2835 = phi i64 [ 0, %vector.ph2832 ], [ %index.next2841, %vector.body2834 ] ; 2 uses
  %i.dtr = shl i64 %index2835, 2                  ; 3 uses
  %next.gep2836 = getelementptr i8, ptr %.0.lcssa.i.i675, i64 %i.dtr
  %next.gep2837 = getelementptr i8, ptr %.020.lcssa.i.i673, i64 %i.dtr
  %next.gep2838 = getelementptr i8, ptr %.022.lcssa.i.i672, i64 %i.dtr
  %wide.load2839 = load <4 x float>, ptr %next.gep2837, align 4, !tbaa !59
  %wide.load2840 = load <4 x float>, ptr %next.gep2836, align 4, !tbaa !59
  %i.dts = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %wide.load2839, <4 x float> %wide.load2840)
  store <4 x float> %i.dts, ptr %next.gep2838, align 4, !tbaa !59
  %index.next2841 = add nuw i64 %index2835, 4     ; 2 uses
  %i.dtt = icmp eq i64 %index.next2841, %n.vec2833
  br i1 %i.dtt, label %middle.block2842, label %vector.body2834, !llvm.loop !222

middle.block2842:                                 ; preds = %vector.body2834
  %cmp.n2843 = icmp eq i64 %i.dti, %n.vec2833
  br i1 %cmp.n2843, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i676.preheader3779

.lr.ph93.i.i676.preheader3779:                    ; preds = %vector.memcheck2828, %.lr.ph93.i.i676.preheader, %middle.block2842
  %.192.i.i677.ph = phi ptr [ %.0.lcssa.i.i675, %vector.memcheck2828 ], [ %.0.lcssa.i.i675, %.lr.ph93.i.i676.preheader ], [ %i.dtm, %middle.block2842 ] ; 2 uses
  %.11991.i.i678.ph = phi i32 [ %.018.lcssa.i.i674, %vector.memcheck2828 ], [ %.018.lcssa.i.i674, %.lr.ph93.i.i676.preheader ], [ %i.dto, %middle.block2842 ] ; 4 uses
  %.12190.i.i679.ph = phi ptr [ %.020.lcssa.i.i673, %vector.memcheck2828 ], [ %.020.lcssa.i.i673, %.lr.ph93.i.i676.preheader ], [ %i.dtp, %middle.block2842 ] ; 2 uses
  %.12389.i.i680.ph = phi ptr [ %.022.lcssa.i.i672, %vector.memcheck2828 ], [ %.022.lcssa.i.i672, %.lr.ph93.i.i676.preheader ], [ %i.dtq, %middle.block2842 ] ; 2 uses
  %i.dtu = sub i32 %i.dsz, %.11991.i.i678.ph
  %xtraiter4060 = and i32 %i.dtu, 3               ; 2 uses
  %lcmp.mod4061.not = icmp eq i32 %xtraiter4060, 0
  br i1 %lcmp.mod4061.not, label %.lr.ph93.i.i676.prol.loopexit, label %.lr.ph93.i.i676.prol

.lr.ph93.i.i676.prol:                             ; preds = %.lr.ph93.i.i676.preheader3779, %.lr.ph93.i.i676.prol
  %.192.i.i677.prol = phi ptr [ %i.dty, %.lr.ph93.i.i676.prol ], [ %.192.i.i677.ph, %.lr.ph93.i.i676.preheader3779 ] ; 2 uses
  %.11991.i.i678.prol = phi i32 [ %i.dub, %.lr.ph93.i.i676.prol ], [ %.11991.i.i678.ph, %.lr.ph93.i.i676.preheader3779 ]
  %.12190.i.i679.prol = phi ptr [ %i.dtz, %.lr.ph93.i.i676.prol ], [ %.12190.i.i679.ph, %.lr.ph93.i.i676.preheader3779 ] ; 2 uses
  %.12389.i.i680.prol = phi ptr [ %i.dua, %.lr.ph93.i.i676.prol ], [ %.12389.i.i680.ph, %.lr.ph93.i.i676.preheader3779 ] ; 2 uses
  %prol.iter4062 = phi i32 [ %prol.iter4062.next, %.lr.ph93.i.i676.prol ], [ 0, %.lr.ph93.i.i676.preheader3779 ]
  %i.dtv = load float, ptr %.12190.i.i679.prol, align 4, !tbaa !59
  %i.dtw = load float, ptr %.192.i.i677.prol, align 4, !tbaa !59
  %i.dtx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dtv, float %i.dtw)
  store float %i.dtx, ptr %.12389.i.i680.prol, align 4, !tbaa !59
  %i.dty = getelementptr inbounds nuw i8, ptr %.192.i.i677.prol, i64 4 ; 2 uses
  %i.dtz = getelementptr inbounds nuw i8, ptr %.12190.i.i679.prol, i64 4 ; 2 uses
  %i.dua = getelementptr inbounds nuw i8, ptr %.12389.i.i680.prol, i64 4 ; 2 uses
  %i.dub = add nuw nsw i32 %.11991.i.i678.prol, 1 ; 2 uses
  %prol.iter4062.next = add i32 %prol.iter4062, 1 ; 2 uses
  %prol.iter4062.cmp.not = icmp eq i32 %prol.iter4062.next, %xtraiter4060
  br i1 %prol.iter4062.cmp.not, label %.lr.ph93.i.i676.prol.loopexit, label %.lr.ph93.i.i676.prol, !llvm.loop !223

.lr.ph93.i.i676.prol.loopexit:                    ; preds = %.lr.ph93.i.i676.prol, %.lr.ph93.i.i676.preheader3779
  %.192.i.i677.unr = phi ptr [ %.192.i.i677.ph, %.lr.ph93.i.i676.preheader3779 ], [ %i.dty, %.lr.ph93.i.i676.prol ]
  %.11991.i.i678.unr = phi i32 [ %.11991.i.i678.ph, %.lr.ph93.i.i676.preheader3779 ], [ %i.dub, %.lr.ph93.i.i676.prol ]
  %.12190.i.i679.unr = phi ptr [ %.12190.i.i679.ph, %.lr.ph93.i.i676.preheader3779 ], [ %i.dtz, %.lr.ph93.i.i676.prol ]
  %.12389.i.i680.unr = phi ptr [ %.12389.i.i680.ph, %.lr.ph93.i.i676.preheader3779 ], [ %i.dua, %.lr.ph93.i.i676.prol ]
  %i.duc = sub i32 %.11991.i.i678.ph, %i.dsz
  %i.dud = icmp ugt i32 %i.duc, -4
  br i1 %i.dud, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i676

.lr.ph.i.i682:                                    ; preds = %bb.gb, %.lr.ph.i.i682
  %.085.i.i683 = phi ptr [ %i.dwt, %.lr.ph.i.i682 ], [ %0, %bb.gb ] ; 2 uses
  %.01884.i.i684 = phi i32 [ %i.dww, %.lr.ph.i.i682 ], [ 0, %bb.gb ]
  %.02083.i.i685 = phi ptr [ %i.dwu, %.lr.ph.i.i682 ], [ %1, %bb.gb ] ; 2 uses
  %.02282.i.i686 = phi ptr [ %i.dwv, %.lr.ph.i.i682 ], [ %2, %bb.gb ] ; 2 uses
  %i.due = load <4 x float>, ptr %.085.i.i683, align 1, !tbaa !60
  %i.duf = load <4 x float>, ptr %.02083.i.i685, align 1, !tbaa !60 ; 2 uses
  %20 = fcmp fast ole <4 x float> %i.duf, zeroinitializer
  %i.dug = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.duf, <4 x float> splat (float f0x00800000))
  %i.duh = bitcast <4 x float> %i.dug to <4 x i32> ; 2 uses
  %i.dui = lshr <4 x i32> %i.duh, splat (i32 23)
  %i.duj = and <4 x i32> %i.duh, splat (i32 -2139095041)
  %i.duk = or disjoint <4 x i32> %i.duj, splat (i32 1056964608)
  %i.dul = bitcast <4 x i32> %i.duk to <4 x float> ; 3 uses
  %i.dum = add nsw <4 x i32> %i.dui, splat (i32 -127)
  %i.dun = sitofp fast <4 x i32> %i.dum to <4 x float> ; 2 uses
  %i.duo = fadd fast <4 x float> %i.dun, splat (float 1.000000e+00)
  %i.dup = fcmp fast olt <4 x float> %i.dul, splat (float f0x3F3504F3) ; 2 uses
  %i.duq = select <4 x i1> %i.dup, <4 x float> %i.dul, <4 x float> zeroinitializer
  %i.dur = fadd fast <4 x float> %i.dul, splat (float -1.000000e+00)
  %i.dus = select fast <4 x i1> %i.dup, <4 x float> %i.dun, <4 x float> %i.duo
  %i.dut = fadd fast <4 x float> %i.dur, %i.duq   ; 12 uses
  %i.duu = fmul fast <4 x float> %i.dut, %i.dut
  %i.duv = fmul fast <4 x float> %i.dut, splat (float f0x3D9021BB)
  %i.duw = fadd fast <4 x float> %i.duv, splat (float f0xBDEBD1B8)
  %i.dux = fmul fast <4 x float> %i.duw, %i.dut
  %i.duy = fadd fast <4 x float> %i.dux, splat (float f0x3DEF251A)
  %i.duz = fmul fast <4 x float> %i.duy, %i.dut
  %i.dva = fadd fast <4 x float> %i.duz, splat (float f0xBDFE5D4F)
  %i.dvb = fmul fast <4 x float> %i.dva, %i.dut
  %i.dvc = fadd fast <4 x float> %i.dvb, splat (float f0x3E11E9BF)
  %i.dvd = fmul fast <4 x float> %i.dvc, %i.dut
  %i.dve = fadd fast <4 x float> %i.dvd, splat (float f0xBE2AAE50)
  %i.dvf = fmul fast <4 x float> %i.dve, %i.dut
  %i.dvg = fadd fast <4 x float> %i.dvf, splat (float f0x3E4CCEAC)
  %i.dvh = fmul fast <4 x float> %i.dvg, %i.dut
  %i.dvi = fadd fast <4 x float> %i.dvh, splat (float f0xBE7FFFFC)
  %i.dvj = fmul fast <4 x float> %i.dvi, %i.dut
  %i.dvk = fadd fast <4 x float> %i.dvj, splat (float f0x3EAAAAAA)
  %i.dvl = fmul fast <4 x float> %i.dvk, %i.dut
  %reass.mul.i.i687 = fmul fast <4 x float> %i.dus, splat (float f0x3F317218)
  %reass.add80.i.i688 = fadd fast <4 x float> %i.dvl, splat (float -5.000000e-01)
  %reass.mul81.i.i689 = fmul fast <4 x float> %i.duu, %reass.add80.i.i688
  %i.dvm = fadd fast <4 x float> %reass.mul.i.i687, %i.dut
  %i.dvn = fadd fast <4 x float> %i.dvm, %reass.mul81.i.i689
  %21 = select <4 x i1> %20, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.dvn
  %i.dvo = fmul fast <4 x float> %21, %i.due
  %i.dvp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dvo, <4 x float> splat (float f0x42B0C0A5))
  %i.dvq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dvp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dvr = fmul fast <4 x float> %i.dvq, splat (float f0x3FB8AA3B)
  %i.dvs = fadd fast <4 x float> %i.dvr, splat (float 5.000000e-01) ; 2 uses
  %i.dvt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dvs)
  %i.dvu = sitofp fast <4 x i32> %i.dvt to <4 x float> ; 2 uses
  %i.dvv = fcmp fast olt <4 x float> %i.dvs, %i.dvu
  %i.dvw = select <4 x i1> %i.dvv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dvx = fsub fast <4 x float> %i.dvu, %i.dvw   ; 2 uses
  %i.dvy = fmul fast <4 x float> %i.dvx, splat (float f0x3F317218)
  %i.dvz = fsub fast <4 x float> %i.dvq, %i.dvy   ; 8 uses
  %i.dwa = fmul fast <4 x float> %i.dvz, %i.dvz
  %i.dwb = fmul fast <4 x float> %i.dvz, splat (float f0x39506967)
  %i.dwc = fadd fast <4 x float> %i.dwb, splat (float f0x3AB743CE)
  %i.dwd = fmul fast <4 x float> %i.dwc, %i.dvz
  %i.dwe = fadd fast <4 x float> %i.dwd, splat (float f0x3C088908)
  %i.dwf = fmul fast <4 x float> %i.dwe, %i.dvz
  %i.dwg = fadd fast <4 x float> %i.dwf, splat (float f0x3D2AA9C1)
  %i.dwh = fmul fast <4 x float> %i.dwg, %i.dvz
  %i.dwi = fadd fast <4 x float> %i.dwh, splat (float f0x3E2AAAAA)
  %i.dwj = fmul fast <4 x float> %i.dwi, %i.dvz
  %i.dwk = fadd fast <4 x float> %i.dwj, splat (float 5.000000e-01)
  %i.dwl = fmul fast <4 x float> %i.dwa, %i.dwk
  %i.dwm = fadd fast <4 x float> %i.dvz, splat (float 1.000000e+00)
  %i.dwn = fadd fast <4 x float> %i.dwm, %i.dwl
  %i.dwo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dvx)
  %i.dwp = shl <4 x i32> %i.dwo, splat (i32 23)
  %i.dwq = add <4 x i32> %i.dwp, splat (i32 1065353216)
  %i.dwr = bitcast <4 x i32> %i.dwq to <4 x float>
  %i.dws = fmul fast <4 x float> %i.dwn, %i.dwr
  store <4 x float> %i.dws, ptr %.02282.i.i686, align 1, !tbaa !60
  %i.dwt = getelementptr inbounds nuw i8, ptr %.085.i.i683, i64 16 ; 2 uses
  %i.dwu = getelementptr inbounds nuw i8, ptr %.02083.i.i685, i64 16 ; 2 uses
  %i.dwv = getelementptr inbounds nuw i8, ptr %.02282.i.i686, i64 16 ; 2 uses
  %i.dww = add nuw nsw i32 %.01884.i.i684, 4      ; 2 uses
  %i.dwx = or disjoint i32 %i.dww, 3
  %i.dwy = icmp slt i32 %i.dwx, %i.dsz
  br i1 %i.dwy, label %.lr.ph.i.i682, label %.preheader.loopexit.i.i690, !llvm.loop !224

.lr.ph93.i.i676:                                  ; preds = %.lr.ph93.i.i676.prol.loopexit, %.lr.ph93.i.i676
  %.192.i.i677 = phi ptr [ %i.dxu, %.lr.ph93.i.i676 ], [ %.192.i.i677.unr, %.lr.ph93.i.i676.prol.loopexit ] ; 5 uses
  %.11991.i.i678 = phi i32 [ %i.dxx, %.lr.ph93.i.i676 ], [ %.11991.i.i678.unr, %.lr.ph93.i.i676.prol.loopexit ]
  %.12190.i.i679 = phi ptr [ %i.dxv, %.lr.ph93.i.i676 ], [ %.12190.i.i679.unr, %.lr.ph93.i.i676.prol.loopexit ] ; 5 uses
  %.12389.i.i680 = phi ptr [ %i.dxw, %.lr.ph93.i.i676 ], [ %.12389.i.i680.unr, %.lr.ph93.i.i676.prol.loopexit ] ; 5 uses
  %i.dwz = load float, ptr %.12190.i.i679, align 4, !tbaa !59
  %i.dxa = load float, ptr %.192.i.i677, align 4, !tbaa !59
  %i.dxb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dwz, float %i.dxa)
  store float %i.dxb, ptr %.12389.i.i680, align 4, !tbaa !59
  %i.dxc = getelementptr inbounds nuw i8, ptr %.192.i.i677, i64 4
  %i.dxd = getelementptr inbounds nuw i8, ptr %.12190.i.i679, i64 4
  %i.dxe = getelementptr inbounds nuw i8, ptr %.12389.i.i680, i64 4
  %i.dxf = load float, ptr %i.dxd, align 4, !tbaa !59
  %i.dxg = load float, ptr %i.dxc, align 4, !tbaa !59
  %i.dxh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dxf, float %i.dxg)
  store float %i.dxh, ptr %i.dxe, align 4, !tbaa !59
  %i.dxi = getelementptr inbounds nuw i8, ptr %.192.i.i677, i64 8
  %i.dxj = getelementptr inbounds nuw i8, ptr %.12190.i.i679, i64 8
  %i.dxk = getelementptr inbounds nuw i8, ptr %.12389.i.i680, i64 8
  %i.dxl = load float, ptr %i.dxj, align 4, !tbaa !59
  %i.dxm = load float, ptr %i.dxi, align 4, !tbaa !59
  %i.dxn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dxl, float %i.dxm)
  store float %i.dxn, ptr %i.dxk, align 4, !tbaa !59
  %i.dxo = getelementptr inbounds nuw i8, ptr %.192.i.i677, i64 12
  %i.dxp = getelementptr inbounds nuw i8, ptr %.12190.i.i679, i64 12
  %i.dxq = getelementptr inbounds nuw i8, ptr %.12389.i.i680, i64 12
  %i.dxr = load float, ptr %i.dxp, align 4, !tbaa !59
  %i.dxs = load float, ptr %i.dxo, align 4, !tbaa !59
  %i.dxt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dxr, float %i.dxs)
  store float %i.dxt, ptr %i.dxq, align 4, !tbaa !59
  %i.dxu = getelementptr inbounds nuw i8, ptr %.192.i.i677, i64 16
  %i.dxv = getelementptr inbounds nuw i8, ptr %.12190.i.i679, i64 16
  %i.dxw = getelementptr inbounds nuw i8, ptr %.12389.i.i680, i64 16
  %i.dxx = add nuw nsw i32 %.11991.i.i678, 4      ; 2 uses
  %exitcond.not.i.i681.3 = icmp eq i32 %i.dxx, %i.dsz
  br i1 %exitcond.not.i.i681.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i676, !llvm.loop !225

bb.gc:                                            ; preds = %bb.ga
  %i.dxy = icmp eq i32 %4, 1
  br i1 %i.dxy, label %bb.gd, label %bb.gi

bb.gd:                                            ; preds = %bb.gc
  %i.dxz = load float, ptr %1, align 4, !tbaa !59 ; 7 uses
  %i.dya = icmp eq i32 %.sroa.speculated.i618, 4
  br i1 %i.dya, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.dyb = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  %i.dyc = insertelement <4 x float> poison, float %i.dxz, i64 0
  %i.dyd = shufflevector <4 x float> %i.dyc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.dye = phi fast <4 x float> [ %i.dyb, %bb.ge ], [ %i.dyd, %bb.gf ] ; 2 uses
  %i.dyf = icmp sgt i32 %i.dsz, 3
  br i1 %i.dyf, label %.lr.ph.i37.i663, label %.preheader.i34.i654

.lr.ph.i37.i663:                                  ; preds = %bb.gg
  %22 = fcmp fast ole <4 x float> %i.dye, zeroinitializer
  %i.dyg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dye, <4 x float> splat (float f0x00800000))
  %i.dyh = bitcast <4 x float> %i.dyg to <4 x i32> ; 2 uses
  %i.dyi = lshr <4 x i32> %i.dyh, splat (i32 23)
  %i.dyj = and <4 x i32> %i.dyh, splat (i32 -2139095041)
  %i.dyk = or disjoint <4 x i32> %i.dyj, splat (i32 1056964608)
  %i.dyl = bitcast <4 x i32> %i.dyk to <4 x float> ; 3 uses
  %i.dym = add nsw <4 x i32> %i.dyi, splat (i32 -127)
  %i.dyn = sitofp fast <4 x i32> %i.dym to <4 x float> ; 2 uses
  %i.dyo = fadd fast <4 x float> %i.dyn, splat (float 1.000000e+00)
  %i.dyp = fcmp fast olt <4 x float> %i.dyl, splat (float f0x3F3504F3) ; 2 uses
  %i.dyq = select <4 x i1> %i.dyp, <4 x float> %i.dyl, <4 x float> zeroinitializer
  %i.dyr = fadd fast <4 x float> %i.dyl, splat (float -1.000000e+00)
  %i.dys = select fast <4 x i1> %i.dyp, <4 x float> %i.dyn, <4 x float> %i.dyo
  %i.dyt = fadd fast <4 x float> %i.dyr, %i.dyq   ; 12 uses
  %i.dyu = fmul fast <4 x float> %i.dyt, %i.dyt
  %i.dyv = fmul fast <4 x float> %i.dyt, splat (float f0x3D9021BB)
  %i.dyw = fadd fast <4 x float> %i.dyv, splat (float f0xBDEBD1B8)
  %i.dyx = fmul fast <4 x float> %i.dyw, %i.dyt
  %i.dyy = fadd fast <4 x float> %i.dyx, splat (float f0x3DEF251A)
  %i.dyz = fmul fast <4 x float> %i.dyy, %i.dyt
  %i.dza = fadd fast <4 x float> %i.dyz, splat (float f0xBDFE5D4F)
  %i.dzb = fmul fast <4 x float> %i.dza, %i.dyt
  %i.dzc = fadd fast <4 x float> %i.dzb, splat (float f0x3E11E9BF)
  %i.dzd = fmul fast <4 x float> %i.dzc, %i.dyt
  %i.dze = fadd fast <4 x float> %i.dzd, splat (float f0xBE2AAE50)
  %i.dzf = fmul fast <4 x float> %i.dze, %i.dyt
  %i.dzg = fadd fast <4 x float> %i.dzf, splat (float f0x3E4CCEAC)
  %i.dzh = fmul fast <4 x float> %i.dzg, %i.dyt
  %i.dzi = fadd fast <4 x float> %i.dzh, splat (float f0xBE7FFFFC)
  %i.dzj = fmul fast <4 x float> %i.dzi, %i.dyt
  %i.dzk = fadd fast <4 x float> %i.dzj, splat (float f0x3EAAAAAA)
  %i.dzl = fmul fast <4 x float> %i.dzk, %i.dyt
  %reass.mul.i38.i664 = fmul fast <4 x float> %i.dys, splat (float f0x3F317218)
  %reass.add78.i.i665 = fadd fast <4 x float> %i.dzl, splat (float -5.000000e-01)
  %reass.mul79.i.i666 = fmul fast <4 x float> %i.dyu, %reass.add78.i.i665
  %i.dzm = fadd fast <4 x float> %reass.mul.i38.i664, %i.dyt
  %i.dzn = fadd fast <4 x float> %i.dzm, %reass.mul79.i.i666
  %23 = select <4 x i1> %22, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.dzn
  br label %bb.gh

.preheader.loopexit.i39.i670:                     ; preds = %bb.gh
  %i.dzo = and i32 %i.dsz, 2147483644
  br label %.preheader.i34.i654

.preheader.i34.i654:                              ; preds = %.preheader.loopexit.i39.i670, %bb.gg
  %.019.lcssa.i.i655 = phi ptr [ %2, %bb.gg ], [ %i.ebu, %.preheader.loopexit.i39.i670 ] ; 4 uses
  %.017.lcssa.i.i656 = phi i32 [ 0, %bb.gg ], [ %i.dzo, %.preheader.loopexit.i39.i670 ] ; 4 uses
  %.0.lcssa.i35.i657 = phi ptr [ %0, %bb.gg ], [ %i.ebt, %.preheader.loopexit.i39.i670 ] ; 4 uses
  %i.dzp = icmp slt i32 %.017.lcssa.i.i656, %i.dsz
  br i1 %i.dzp, label %.lr.ph88.i.i658.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph88.i.i658.preheader:                        ; preds = %.preheader.i34.i654
  %.0.lcssa.i35.i6572798 = ptrtoaddr ptr %.0.lcssa.i35.i657 to i64
  %.019.lcssa.i.i6552797 = ptrtoaddr ptr %.019.lcssa.i.i655 to i64
  %i.dzq = xor i32 %.017.lcssa.i.i656, -1
  %i.dzr = add i32 %i.dsz, %i.dzq                 ; 2 uses
  %i.dzs = zext i32 %i.dzr to i64
  %i.dzt = add nuw nsw i64 %i.dzs, 1              ; 2 uses
  %min.iters.check2800 = icmp ult i32 %i.dzr, 3
  %i.dzu = sub i64 %.0.lcssa.i35.i6572798, %.019.lcssa.i.i6552797
  %diff.check2802 = icmp ugt i64 %i.dzu, -16
  %or.cond3623 = select i1 %min.iters.check2800, i1 true, i1 %diff.check2802
  br i1 %or.cond3623, label %.lr.ph88.i.i658.preheader3784, label %vector.ph2803

vector.ph2803:                                    ; preds = %.lr.ph88.i.i658.preheader
  %n.vec2804 = and i64 %i.dzt, 8589934588         ; 4 uses
  %i.dzv = shl nuw nsw i64 %n.vec2804, 2          ; 2 uses
  %i.dzw = getelementptr i8, ptr %.0.lcssa.i35.i657, i64 %i.dzv
  %i.dzx = trunc i64 %n.vec2804 to i32
  %i.dzy = add i32 %.017.lcssa.i.i656, %i.dzx
  %i.dzz = getelementptr i8, ptr %.019.lcssa.i.i655, i64 %i.dzv
  %i.eaa = insertelement <2 x float> poison, float %i.dxz, i64 0
  %i.eab = shufflevector <2 x float> %i.eaa, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2805

vector.body2805:                                  ; preds = %vector.body2805, %vector.ph2803
  %index2806 = phi i64 [ 0, %vector.ph2803 ], [ %index.next2810, %vector.body2805 ] ; 2 uses
  %i.eac = shl i64 %index2806, 2                  ; 2 uses
  %next.gep2807 = getelementptr i8, ptr %.0.lcssa.i35.i657, i64 %i.eac
  %next.gep2808 = getelementptr i8, ptr %.019.lcssa.i.i655, i64 %i.eac
  %wide.load2809 = load <4 x float>, ptr %next.gep2807, align 4, !tbaa !59
  %i.ead = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.eab, <4 x float> %wide.load2809)
  store <4 x float> %i.ead, ptr %next.gep2808, align 4, !tbaa !59
  %index.next2810 = add nuw i64 %index2806, 4     ; 2 uses
  %i.eae = icmp eq i64 %index.next2810, %n.vec2804
  br i1 %i.eae, label %middle.block2811, label %vector.body2805, !llvm.loop !226

middle.block2811:                                 ; preds = %vector.body2805
  %cmp.n2812 = icmp eq i64 %i.dzt, %n.vec2804
  br i1 %cmp.n2812, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i658.preheader3784

.lr.ph88.i.i658.preheader3784:                    ; preds = %.lr.ph88.i.i658.preheader, %middle.block2811
  %.187.i.i659.ph = phi ptr [ %.0.lcssa.i35.i657, %.lr.ph88.i.i658.preheader ], [ %i.dzw, %middle.block2811 ] ; 2 uses
  %.11886.i.i660.ph = phi i32 [ %.017.lcssa.i.i656, %.lr.ph88.i.i658.preheader ], [ %i.dzy, %middle.block2811 ] ; 4 uses
  %.12085.i.i661.ph = phi ptr [ %.019.lcssa.i.i655, %.lr.ph88.i.i658.preheader ], [ %i.dzz, %middle.block2811 ] ; 2 uses
  %i.eaf = sub i32 %i.dsz, %.11886.i.i660.ph
  %xtraiter4057 = and i32 %i.eaf, 3               ; 2 uses
  %lcmp.mod4058.not = icmp eq i32 %xtraiter4057, 0
  br i1 %lcmp.mod4058.not, label %.lr.ph88.i.i658.prol.loopexit, label %.lr.ph88.i.i658.prol

.lr.ph88.i.i658.prol:                             ; preds = %.lr.ph88.i.i658.preheader3784, %.lr.ph88.i.i658.prol
  %.187.i.i659.prol = phi ptr [ %i.eai, %.lr.ph88.i.i658.prol ], [ %.187.i.i659.ph, %.lr.ph88.i.i658.preheader3784 ] ; 2 uses
  %.11886.i.i660.prol = phi i32 [ %i.eak, %.lr.ph88.i.i658.prol ], [ %.11886.i.i660.ph, %.lr.ph88.i.i658.preheader3784 ]
  %.12085.i.i661.prol = phi ptr [ %i.eaj, %.lr.ph88.i.i658.prol ], [ %.12085.i.i661.ph, %.lr.ph88.i.i658.preheader3784 ] ; 2 uses
  %prol.iter4059 = phi i32 [ %prol.iter4059.next, %.lr.ph88.i.i658.prol ], [ 0, %.lr.ph88.i.i658.preheader3784 ]
  %i.eag = load float, ptr %.187.i.i659.prol, align 4, !tbaa !59
  %i.eah = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dxz, float %i.eag)
  store float %i.eah, ptr %.12085.i.i661.prol, align 4, !tbaa !59
  %i.eai = getelementptr inbounds nuw i8, ptr %.187.i.i659.prol, i64 4 ; 2 uses
  %i.eaj = getelementptr inbounds nuw i8, ptr %.12085.i.i661.prol, i64 4 ; 2 uses
  %i.eak = add nuw nsw i32 %.11886.i.i660.prol, 1 ; 2 uses
  %prol.iter4059.next = add i32 %prol.iter4059, 1 ; 2 uses
  %prol.iter4059.cmp.not = icmp eq i32 %prol.iter4059.next, %xtraiter4057
  br i1 %prol.iter4059.cmp.not, label %.lr.ph88.i.i658.prol.loopexit, label %.lr.ph88.i.i658.prol, !llvm.loop !227

.lr.ph88.i.i658.prol.loopexit:                    ; preds = %.lr.ph88.i.i658.prol, %.lr.ph88.i.i658.preheader3784
  %.187.i.i659.unr = phi ptr [ %.187.i.i659.ph, %.lr.ph88.i.i658.preheader3784 ], [ %i.eai, %.lr.ph88.i.i658.prol ]
  %.11886.i.i660.unr = phi i32 [ %.11886.i.i660.ph, %.lr.ph88.i.i658.preheader3784 ], [ %i.eak, %.lr.ph88.i.i658.prol ]
  %.12085.i.i661.unr = phi ptr [ %.12085.i.i661.ph, %.lr.ph88.i.i658.preheader3784 ], [ %i.eaj, %.lr.ph88.i.i658.prol ]
  %i.eal = sub i32 %.11886.i.i660.ph, %i.dsz
  %i.eam = icmp ugt i32 %i.eal, -4
  br i1 %i.eam, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i658

bb.gh:                                            ; preds = %bb.gh, %.lr.ph.i37.i663
  %.082.i.i667 = phi ptr [ %0, %.lr.ph.i37.i663 ], [ %i.ebt, %bb.gh ] ; 2 uses
  %.01781.i.i668 = phi i32 [ 0, %.lr.ph.i37.i663 ], [ %i.ebv, %bb.gh ]
  %.01980.i.i669 = phi ptr [ %2, %.lr.ph.i37.i663 ], [ %i.ebu, %bb.gh ] ; 2 uses
  %i.ean = load <4 x float>, ptr %.082.i.i667, align 1, !tbaa !60
  %i.eao = fmul fast <4 x float> %i.ean, %23
  %i.eap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eao, <4 x float> splat (float f0x42B0C0A5))
  %i.eaq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eap, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ear = fmul fast <4 x float> %i.eaq, splat (float f0x3FB8AA3B)
  %i.eas = fadd fast <4 x float> %i.ear, splat (float 5.000000e-01) ; 2 uses
  %i.eat = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eas)
  %i.eau = sitofp fast <4 x i32> %i.eat to <4 x float> ; 2 uses
  %i.eav = fcmp fast olt <4 x float> %i.eas, %i.eau
  %i.eaw = select <4 x i1> %i.eav, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eax = fsub fast <4 x float> %i.eau, %i.eaw   ; 2 uses
  %i.eay = fmul fast <4 x float> %i.eax, splat (float f0x3F317218)
  %i.eaz = fsub fast <4 x float> %i.eaq, %i.eay   ; 8 uses
  %i.eba = fmul fast <4 x float> %i.eaz, %i.eaz
  %i.ebb = fmul fast <4 x float> %i.eaz, splat (float f0x39506967)
  %i.ebc = fadd fast <4 x float> %i.ebb, splat (float f0x3AB743CE)
  %i.ebd = fmul fast <4 x float> %i.ebc, %i.eaz
  %i.ebe = fadd fast <4 x float> %i.ebd, splat (float f0x3C088908)
  %i.ebf = fmul fast <4 x float> %i.ebe, %i.eaz
  %i.ebg = fadd fast <4 x float> %i.ebf, splat (float f0x3D2AA9C1)
  %i.ebh = fmul fast <4 x float> %i.ebg, %i.eaz
  %i.ebi = fadd fast <4 x float> %i.ebh, splat (float f0x3E2AAAAA)
  %i.ebj = fmul fast <4 x float> %i.ebi, %i.eaz
  %i.ebk = fadd fast <4 x float> %i.ebj, splat (float 5.000000e-01)
  %i.ebl = fmul fast <4 x float> %i.eba, %i.ebk
  %i.ebm = fadd fast <4 x float> %i.eaz, splat (float 1.000000e+00)
  %i.ebn = fadd fast <4 x float> %i.ebm, %i.ebl
  %i.ebo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eax)
  %i.ebp = shl <4 x i32> %i.ebo, splat (i32 23)
  %i.ebq = add <4 x i32> %i.ebp, splat (i32 1065353216)
  %i.ebr = bitcast <4 x i32> %i.ebq to <4 x float>
  %i.ebs = fmul fast <4 x float> %i.ebn, %i.ebr
  store <4 x float> %i.ebs, ptr %.01980.i.i669, align 1, !tbaa !60
  %i.ebt = getelementptr inbounds nuw i8, ptr %.082.i.i667, i64 16 ; 2 uses
  %i.ebu = getelementptr inbounds nuw i8, ptr %.01980.i.i669, i64 16 ; 2 uses
  %i.ebv = add nuw nsw i32 %.01781.i.i668, 4      ; 2 uses
  %i.ebw = or disjoint i32 %i.ebv, 3
  %i.ebx = icmp slt i32 %i.ebw, %i.dsz
  br i1 %i.ebx, label %bb.gh, label %.preheader.loopexit.i39.i670, !llvm.loop !228

.lr.ph88.i.i658:                                  ; preds = %.lr.ph88.i.i658.prol.loopexit, %.lr.ph88.i.i658
  %.187.i.i659 = phi ptr [ %i.ecm, %.lr.ph88.i.i658 ], [ %.187.i.i659.unr, %.lr.ph88.i.i658.prol.loopexit ] ; 5 uses
  %.11886.i.i660 = phi i32 [ %i.eco, %.lr.ph88.i.i658 ], [ %.11886.i.i660.unr, %.lr.ph88.i.i658.prol.loopexit ]
  %.12085.i.i661 = phi ptr [ %i.ecn, %.lr.ph88.i.i658 ], [ %.12085.i.i661.unr, %.lr.ph88.i.i658.prol.loopexit ] ; 5 uses
  %i.eby = load float, ptr %.187.i.i659, align 4, !tbaa !59
  %i.ebz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dxz, float %i.eby)
  store float %i.ebz, ptr %.12085.i.i661, align 4, !tbaa !59
  %i.eca = getelementptr inbounds nuw i8, ptr %.187.i.i659, i64 4
  %i.ecb = getelementptr inbounds nuw i8, ptr %.12085.i.i661, i64 4
  %i.ecc = load float, ptr %i.eca, align 4, !tbaa !59
  %i.ecd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dxz, float %i.ecc)
  store float %i.ecd, ptr %i.ecb, align 4, !tbaa !59
  %i.ece = getelementptr inbounds nuw i8, ptr %.187.i.i659, i64 8
  %i.ecf = getelementptr inbounds nuw i8, ptr %.12085.i.i661, i64 8
  %i.ecg = load float, ptr %i.ece, align 4, !tbaa !59
  %i.ech = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dxz, float %i.ecg)
  store float %i.ech, ptr %i.ecf, align 4, !tbaa !59
  %i.eci = getelementptr inbounds nuw i8, ptr %.187.i.i659, i64 12
  %i.ecj = getelementptr inbounds nuw i8, ptr %.12085.i.i661, i64 12
  %i.eck = load float, ptr %i.eci, align 4, !tbaa !59
  %i.ecl = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dxz, float %i.eck)
  store float %i.ecl, ptr %i.ecj, align 4, !tbaa !59
  %i.ecm = getelementptr inbounds nuw i8, ptr %.187.i.i659, i64 16
  %i.ecn = getelementptr inbounds nuw i8, ptr %.12085.i.i661, i64 16
  %i.eco = add nuw nsw i32 %.11886.i.i660, 4      ; 2 uses
  %exitcond.not.i36.i662.3 = icmp eq i32 %i.eco, %i.dsz
  br i1 %exitcond.not.i36.i662.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i658, !llvm.loop !229

bb.gi:                                            ; preds = %bb.gc
  %i.ecp = icmp eq i32 %3, 1
  br i1 %i.ecp, label %bb.gj, label %bb.gn

bb.gj:                                            ; preds = %bb.gi
  %i.ecq = load float, ptr %0, align 4, !tbaa !59 ; 7 uses
  %i.ecr = icmp eq i32 %.sroa.speculated.i618, 4
  br i1 %i.ecr, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.ecs = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  %i.ect = insertelement <4 x float> poison, float %i.ecq, i64 0
  %i.ecu = shufflevector <4 x float> %i.ect, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.ecv = phi fast <4 x float> [ %i.ecs, %bb.gk ], [ %i.ecu, %bb.gl ]
  %i.ecw = icmp sgt i32 %i.dsz, 3
  br i1 %i.ecw, label %.lr.ph.i49.i652, label %.preheader.i40.i643

.preheader.loopexit.i56.i653:                     ; preds = %.lr.ph.i49.i652
  %i.ecx = and i32 %i.dsz, 2147483644
  br label %.preheader.i40.i643

.preheader.i40.i643:                              ; preds = %.preheader.loopexit.i56.i653, %bb.gm
  %.019.lcssa.i41.i644 = phi ptr [ %2, %bb.gm ], [ %i.egl, %.preheader.loopexit.i56.i653 ] ; 4 uses
  %.017.lcssa.i42.i645 = phi i32 [ 0, %bb.gm ], [ %i.ecx, %.preheader.loopexit.i56.i653 ] ; 4 uses
  %.0.lcssa.i43.i646 = phi ptr [ %1, %bb.gm ], [ %i.egk, %.preheader.loopexit.i56.i653 ] ; 4 uses
  %i.ecy = icmp slt i32 %.017.lcssa.i42.i645, %i.dsz
  br i1 %i.ecy, label %.lr.ph88.i44.i647.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph88.i44.i647.preheader:                      ; preds = %.preheader.i40.i643
  %.0.lcssa.i43.i6462775 = ptrtoaddr ptr %.0.lcssa.i43.i646 to i64
  %.019.lcssa.i41.i6442774 = ptrtoaddr ptr %.019.lcssa.i41.i644 to i64
  %i.ecz = xor i32 %.017.lcssa.i42.i645, -1
  %i.eda = add i32 %i.dsz, %i.ecz                 ; 2 uses
  %i.edb = zext i32 %i.eda to i64
  %i.edc = add nuw nsw i64 %i.edb, 1              ; 2 uses
  %min.iters.check2777 = icmp ult i32 %i.eda, 3
  %i.edd = sub i64 %.0.lcssa.i43.i6462775, %.019.lcssa.i41.i6442774
  %diff.check2779 = icmp ugt i64 %i.edd, -16
  %or.cond3624 = select i1 %min.iters.check2777, i1 true, i1 %diff.check2779
  br i1 %or.cond3624, label %.lr.ph88.i44.i647.preheader3788, label %vector.ph2780

vector.ph2780:                                    ; preds = %.lr.ph88.i44.i647.preheader
  %n.vec2781 = and i64 %i.edc, 8589934588         ; 4 uses
  %i.ede = shl nuw nsw i64 %n.vec2781, 2          ; 2 uses
  %i.edf = getelementptr i8, ptr %.0.lcssa.i43.i646, i64 %i.ede
  %i.edg = trunc i64 %n.vec2781 to i32
  %i.edh = add i32 %.017.lcssa.i42.i645, %i.edg
  %i.edi = getelementptr i8, ptr %.019.lcssa.i41.i644, i64 %i.ede
  %i.edj = insertelement <2 x float> poison, float %i.ecq, i64 0
  %i.edk = shufflevector <2 x float> %i.edj, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2782

vector.body2782:                                  ; preds = %vector.body2782, %vector.ph2780
  %index2783 = phi i64 [ 0, %vector.ph2780 ], [ %index.next2787, %vector.body2782 ] ; 2 uses
  %i.edl = shl i64 %index2783, 2                  ; 2 uses
  %next.gep2784 = getelementptr i8, ptr %.0.lcssa.i43.i646, i64 %i.edl
  %next.gep2785 = getelementptr i8, ptr %.019.lcssa.i41.i644, i64 %i.edl
  %wide.load2786 = load <4 x float>, ptr %next.gep2784, align 4, !tbaa !59
  %i.edm = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %wide.load2786, <4 x float> %i.edk)
  store <4 x float> %i.edm, ptr %next.gep2785, align 4, !tbaa !59
  %index.next2787 = add nuw i64 %index2783, 4     ; 2 uses
  %i.edn = icmp eq i64 %index.next2787, %n.vec2781
  br i1 %i.edn, label %middle.block2788, label %vector.body2782, !llvm.loop !230

middle.block2788:                                 ; preds = %vector.body2782
  %cmp.n2789 = icmp eq i64 %i.edc, %n.vec2781
  br i1 %cmp.n2789, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i647.preheader3788

.lr.ph88.i44.i647.preheader3788:                  ; preds = %.lr.ph88.i44.i647.preheader, %middle.block2788
  %.187.i45.i648.ph = phi ptr [ %.0.lcssa.i43.i646, %.lr.ph88.i44.i647.preheader ], [ %i.edf, %middle.block2788 ] ; 2 uses
  %.11886.i46.i649.ph = phi i32 [ %.017.lcssa.i42.i645, %.lr.ph88.i44.i647.preheader ], [ %i.edh, %middle.block2788 ] ; 4 uses
  %.12085.i47.i650.ph = phi ptr [ %.019.lcssa.i41.i644, %.lr.ph88.i44.i647.preheader ], [ %i.edi, %middle.block2788 ] ; 2 uses
  %i.edo = sub i32 %i.dsz, %.11886.i46.i649.ph
  %xtraiter4054 = and i32 %i.edo, 3               ; 2 uses
  %lcmp.mod4055.not = icmp eq i32 %xtraiter4054, 0
  br i1 %lcmp.mod4055.not, label %.lr.ph88.i44.i647.prol.loopexit, label %.lr.ph88.i44.i647.prol

.lr.ph88.i44.i647.prol:                           ; preds = %.lr.ph88.i44.i647.preheader3788, %.lr.ph88.i44.i647.prol
  %.187.i45.i648.prol = phi ptr [ %i.edr, %.lr.ph88.i44.i647.prol ], [ %.187.i45.i648.ph, %.lr.ph88.i44.i647.preheader3788 ] ; 2 uses
  %.11886.i46.i649.prol = phi i32 [ %i.edt, %.lr.ph88.i44.i647.prol ], [ %.11886.i46.i649.ph, %.lr.ph88.i44.i647.preheader3788 ]
  %.12085.i47.i650.prol = phi ptr [ %i.eds, %.lr.ph88.i44.i647.prol ], [ %.12085.i47.i650.ph, %.lr.ph88.i44.i647.preheader3788 ] ; 2 uses
  %prol.iter4056 = phi i32 [ %prol.iter4056.next, %.lr.ph88.i44.i647.prol ], [ 0, %.lr.ph88.i44.i647.preheader3788 ]
  %i.edp = load float, ptr %.187.i45.i648.prol, align 4, !tbaa !59
  %i.edq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.edp, float %i.ecq)
  store float %i.edq, ptr %.12085.i47.i650.prol, align 4, !tbaa !59
  %i.edr = getelementptr inbounds nuw i8, ptr %.187.i45.i648.prol, i64 4 ; 2 uses
  %i.eds = getelementptr inbounds nuw i8, ptr %.12085.i47.i650.prol, i64 4 ; 2 uses
  %i.edt = add nuw nsw i32 %.11886.i46.i649.prol, 1 ; 2 uses
  %prol.iter4056.next = add i32 %prol.iter4056, 1 ; 2 uses
  %prol.iter4056.cmp.not = icmp eq i32 %prol.iter4056.next, %xtraiter4054
  br i1 %prol.iter4056.cmp.not, label %.lr.ph88.i44.i647.prol.loopexit, label %.lr.ph88.i44.i647.prol, !llvm.loop !231

.lr.ph88.i44.i647.prol.loopexit:                  ; preds = %.lr.ph88.i44.i647.prol, %.lr.ph88.i44.i647.preheader3788
  %.187.i45.i648.unr = phi ptr [ %.187.i45.i648.ph, %.lr.ph88.i44.i647.preheader3788 ], [ %i.edr, %.lr.ph88.i44.i647.prol ]
  %.11886.i46.i649.unr = phi i32 [ %.11886.i46.i649.ph, %.lr.ph88.i44.i647.preheader3788 ], [ %i.edt, %.lr.ph88.i44.i647.prol ]
  %.12085.i47.i650.unr = phi ptr [ %.12085.i47.i650.ph, %.lr.ph88.i44.i647.preheader3788 ], [ %i.eds, %.lr.ph88.i44.i647.prol ]
  %i.edu = sub i32 %.11886.i46.i649.ph, %i.dsz
  %i.edv = icmp ugt i32 %i.edu, -4
  br i1 %i.edv, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i647

.lr.ph.i49.i652:                                  ; preds = %bb.gm, %.lr.ph.i49.i652
  %.082.i50.i = phi ptr [ %i.egk, %.lr.ph.i49.i652 ], [ %1, %bb.gm ] ; 2 uses
  %.01781.i51.i = phi i32 [ %i.egm, %.lr.ph.i49.i652 ], [ 0, %bb.gm ]
  %.01980.i52.i = phi ptr [ %i.egl, %.lr.ph.i49.i652 ], [ %2, %bb.gm ] ; 2 uses
  %i.edw = load <4 x float>, ptr %.082.i50.i, align 1, !tbaa !60 ; 2 uses
  %24 = fcmp fast ole <4 x float> %i.edw, zeroinitializer
  %i.edx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.edw, <4 x float> splat (float f0x00800000))
  %i.edy = bitcast <4 x float> %i.edx to <4 x i32> ; 2 uses
  %i.edz = lshr <4 x i32> %i.edy, splat (i32 23)
  %i.eea = and <4 x i32> %i.edy, splat (i32 -2139095041)
  %i.eeb = or disjoint <4 x i32> %i.eea, splat (i32 1056964608)
  %i.eec = bitcast <4 x i32> %i.eeb to <4 x float> ; 3 uses
  %i.eed = add nsw <4 x i32> %i.edz, splat (i32 -127)
  %i.eee = sitofp fast <4 x i32> %i.eed to <4 x float> ; 2 uses
  %i.eef = fadd fast <4 x float> %i.eee, splat (float 1.000000e+00)
  %i.eeg = fcmp fast olt <4 x float> %i.eec, splat (float f0x3F3504F3) ; 2 uses
  %i.eeh = select <4 x i1> %i.eeg, <4 x float> %i.eec, <4 x float> zeroinitializer
  %i.eei = fadd fast <4 x float> %i.eec, splat (float -1.000000e+00)
  %i.eej = select fast <4 x i1> %i.eeg, <4 x float> %i.eee, <4 x float> %i.eef
  %i.eek = fadd fast <4 x float> %i.eei, %i.eeh   ; 12 uses
  %i.eel = fmul fast <4 x float> %i.eek, %i.eek
  %i.eem = fmul fast <4 x float> %i.eek, splat (float f0x3D9021BB)
  %i.een = fadd fast <4 x float> %i.eem, splat (float f0xBDEBD1B8)
  %i.eeo = fmul fast <4 x float> %i.een, %i.eek
  %i.eep = fadd fast <4 x float> %i.eeo, splat (float f0x3DEF251A)
  %i.eeq = fmul fast <4 x float> %i.eep, %i.eek
  %i.eer = fadd fast <4 x float> %i.eeq, splat (float f0xBDFE5D4F)
  %i.ees = fmul fast <4 x float> %i.eer, %i.eek
  %i.eet = fadd fast <4 x float> %i.ees, splat (float f0x3E11E9BF)
  %i.eeu = fmul fast <4 x float> %i.eet, %i.eek
  %i.eev = fadd fast <4 x float> %i.eeu, splat (float f0xBE2AAE50)
  %i.eew = fmul fast <4 x float> %i.eev, %i.eek
  %i.eex = fadd fast <4 x float> %i.eew, splat (float f0x3E4CCEAC)
  %i.eey = fmul fast <4 x float> %i.eex, %i.eek
  %i.eez = fadd fast <4 x float> %i.eey, splat (float f0xBE7FFFFC)
  %i.efa = fmul fast <4 x float> %i.eez, %i.eek
  %i.efb = fadd fast <4 x float> %i.efa, splat (float f0x3EAAAAAA)
  %i.efc = fmul fast <4 x float> %i.efb, %i.eek
  %reass.mul.i53.i = fmul fast <4 x float> %i.eej, splat (float f0x3F317218)
  %reass.add78.i54.i = fadd fast <4 x float> %i.efc, splat (float -5.000000e-01)
  %reass.mul79.i55.i = fmul fast <4 x float> %i.eel, %reass.add78.i54.i
  %i.efd = fadd fast <4 x float> %reass.mul.i53.i, %i.eek
  %i.efe = fadd fast <4 x float> %i.efd, %reass.mul79.i55.i
  %25 = select <4 x i1> %24, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.efe
  %i.eff = fmul fast <4 x float> %25, %i.ecv
  %i.efg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eff, <4 x float> splat (float f0x42B0C0A5))
  %i.efh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.efg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.efi = fmul fast <4 x float> %i.efh, splat (float f0x3FB8AA3B)
  %i.efj = fadd fast <4 x float> %i.efi, splat (float 5.000000e-01) ; 2 uses
  %i.efk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.efj)
  %i.efl = sitofp fast <4 x i32> %i.efk to <4 x float> ; 2 uses
  %i.efm = fcmp fast olt <4 x float> %i.efj, %i.efl
  %i.efn = select <4 x i1> %i.efm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.efo = fsub fast <4 x float> %i.efl, %i.efn   ; 2 uses
  %i.efp = fmul fast <4 x float> %i.efo, splat (float f0x3F317218)
  %i.efq = fsub fast <4 x float> %i.efh, %i.efp   ; 8 uses
  %i.efr = fmul fast <4 x float> %i.efq, %i.efq
  %i.efs = fmul fast <4 x float> %i.efq, splat (float f0x39506967)
  %i.eft = fadd fast <4 x float> %i.efs, splat (float f0x3AB743CE)
  %i.efu = fmul fast <4 x float> %i.eft, %i.efq
  %i.efv = fadd fast <4 x float> %i.efu, splat (float f0x3C088908)
  %i.efw = fmul fast <4 x float> %i.efv, %i.efq
  %i.efx = fadd fast <4 x float> %i.efw, splat (float f0x3D2AA9C1)
  %i.efy = fmul fast <4 x float> %i.efx, %i.efq
  %i.efz = fadd fast <4 x float> %i.efy, splat (float f0x3E2AAAAA)
  %i.ega = fmul fast <4 x float> %i.efz, %i.efq
  %i.egb = fadd fast <4 x float> %i.ega, splat (float 5.000000e-01)
  %i.egc = fmul fast <4 x float> %i.efr, %i.egb
  %i.egd = fadd fast <4 x float> %i.efq, splat (float 1.000000e+00)
  %i.ege = fadd fast <4 x float> %i.egd, %i.egc
  %i.egf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.efo)
  %i.egg = shl <4 x i32> %i.egf, splat (i32 23)
  %i.egh = add <4 x i32> %i.egg, splat (i32 1065353216)
  %i.egi = bitcast <4 x i32> %i.egh to <4 x float>
  %i.egj = fmul fast <4 x float> %i.ege, %i.egi
  store <4 x float> %i.egj, ptr %.01980.i52.i, align 1, !tbaa !60
  %i.egk = getelementptr inbounds nuw i8, ptr %.082.i50.i, i64 16 ; 2 uses
  %i.egl = getelementptr inbounds nuw i8, ptr %.01980.i52.i, i64 16 ; 2 uses
  %i.egm = add nuw nsw i32 %.01781.i51.i, 4       ; 2 uses
  %i.egn = or disjoint i32 %i.egm, 3
  %i.ego = icmp slt i32 %i.egn, %i.dsz
  br i1 %i.ego, label %.lr.ph.i49.i652, label %.preheader.loopexit.i56.i653, !llvm.loop !232

.lr.ph88.i44.i647:                                ; preds = %.lr.ph88.i44.i647.prol.loopexit, %.lr.ph88.i44.i647
  %.187.i45.i648 = phi ptr [ %i.ehd, %.lr.ph88.i44.i647 ], [ %.187.i45.i648.unr, %.lr.ph88.i44.i647.prol.loopexit ] ; 5 uses
  %.11886.i46.i649 = phi i32 [ %i.ehf, %.lr.ph88.i44.i647 ], [ %.11886.i46.i649.unr, %.lr.ph88.i44.i647.prol.loopexit ]
  %.12085.i47.i650 = phi ptr [ %i.ehe, %.lr.ph88.i44.i647 ], [ %.12085.i47.i650.unr, %.lr.ph88.i44.i647.prol.loopexit ] ; 5 uses
  %i.egp = load float, ptr %.187.i45.i648, align 4, !tbaa !59
  %i.egq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.egp, float %i.ecq)
  store float %i.egq, ptr %.12085.i47.i650, align 4, !tbaa !59
  %i.egr = getelementptr inbounds nuw i8, ptr %.187.i45.i648, i64 4
  %i.egs = getelementptr inbounds nuw i8, ptr %.12085.i47.i650, i64 4
  %i.egt = load float, ptr %i.egr, align 4, !tbaa !59
  %i.egu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.egt, float %i.ecq)
  store float %i.egu, ptr %i.egs, align 4, !tbaa !59
  %i.egv = getelementptr inbounds nuw i8, ptr %.187.i45.i648, i64 8
  %i.egw = getelementptr inbounds nuw i8, ptr %.12085.i47.i650, i64 8
  %i.egx = load float, ptr %i.egv, align 4, !tbaa !59
  %i.egy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.egx, float %i.ecq)
  store float %i.egy, ptr %i.egw, align 4, !tbaa !59
  %i.egz = getelementptr inbounds nuw i8, ptr %.187.i45.i648, i64 12
  %i.eha = getelementptr inbounds nuw i8, ptr %.12085.i47.i650, i64 12
  %i.ehb = load float, ptr %i.egz, align 4, !tbaa !59
  %i.ehc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ehb, float %i.ecq)
  store float %i.ehc, ptr %i.eha, align 4, !tbaa !59
  %i.ehd = getelementptr inbounds nuw i8, ptr %.187.i45.i648, i64 16
  %i.ehe = getelementptr inbounds nuw i8, ptr %.12085.i47.i650, i64 16
  %i.ehf = add nuw nsw i32 %.11886.i46.i649, 4    ; 2 uses
  %exitcond.not.i48.i651.3 = icmp eq i32 %i.ehf, %i.dsz
  br i1 %exitcond.not.i48.i651.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i647, !llvm.loop !233

bb.gn:                                            ; preds = %bb.gi, %bb.fz
  %i.ehg = icmp eq i32 %6, 1
  br i1 %i.ehg, label %bb.go, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.go:                                            ; preds = %bb.gn
  %i.ehh = icmp eq i32 %3, %4
  br i1 %i.ehh, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ehi = icmp eq i32 %.sroa.speculated.i618, 4
  %i.ehj = icmp sgt i32 %.sroa.speculated75.i, 0
  %or.cond.i.i633 = and i1 %i.ehj, %i.ehi
  br i1 %or.cond.i.i633, label %.lr.ph.i57.i634, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i57.i634:                                  ; preds = %bb.gp, %.lr.ph.i57.i634
  %.074.i.i635 = phi ptr [ %i.ekb, %.lr.ph.i57.i634 ], [ %0, %bb.gp ] ; 2 uses
  %.01073.i.i636 = phi i32 [ %i.eke, %.lr.ph.i57.i634 ], [ 0, %bb.gp ]
  %.01172.i.i637 = phi ptr [ %i.ekc, %.lr.ph.i57.i634 ], [ %1, %bb.gp ] ; 2 uses
  %.01271.i.i638 = phi ptr [ %i.ekd, %.lr.ph.i57.i634 ], [ %2, %bb.gp ] ; 2 uses
  %i.ehk = load <4 x float>, ptr %.074.i.i635, align 1, !tbaa !60
  %i.ehl = load float, ptr %.01172.i.i637, align 4, !tbaa !59
  %i.ehm = insertelement <4 x float> poison, float %i.ehl, i64 0
  %i.ehn = shufflevector <4 x float> %i.ehm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %26 = fcmp fast ole <4 x float> %i.ehn, zeroinitializer
  %i.eho = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ehn, <4 x float> splat (float f0x00800000))
  %i.ehp = bitcast <4 x float> %i.eho to <4 x i32> ; 2 uses
  %i.ehq = lshr <4 x i32> %i.ehp, splat (i32 23)
  %i.ehr = and <4 x i32> %i.ehp, splat (i32 -2139095041)
  %i.ehs = or disjoint <4 x i32> %i.ehr, splat (i32 1056964608)
  %i.eht = bitcast <4 x i32> %i.ehs to <4 x float> ; 3 uses
  %i.ehu = add nsw <4 x i32> %i.ehq, splat (i32 -127)
  %i.ehv = sitofp fast <4 x i32> %i.ehu to <4 x float> ; 2 uses
  %i.ehw = fadd fast <4 x float> %i.ehv, splat (float 1.000000e+00)
  %i.ehx = fcmp fast olt <4 x float> %i.eht, splat (float f0x3F3504F3) ; 2 uses
  %i.ehy = select <4 x i1> %i.ehx, <4 x float> %i.eht, <4 x float> zeroinitializer
  %i.ehz = fadd fast <4 x float> %i.eht, splat (float -1.000000e+00)
  %i.eia = select fast <4 x i1> %i.ehx, <4 x float> %i.ehv, <4 x float> %i.ehw
  %i.eib = fadd fast <4 x float> %i.ehz, %i.ehy   ; 12 uses
  %i.eic = fmul fast <4 x float> %i.eib, %i.eib
  %i.eid = fmul fast <4 x float> %i.eib, splat (float f0x3D9021BB)
  %i.eie = fadd fast <4 x float> %i.eid, splat (float f0xBDEBD1B8)
  %i.eif = fmul fast <4 x float> %i.eie, %i.eib
  %i.eig = fadd fast <4 x float> %i.eif, splat (float f0x3DEF251A)
  %i.eih = fmul fast <4 x float> %i.eig, %i.eib
  %i.eii = fadd fast <4 x float> %i.eih, splat (float f0xBDFE5D4F)
  %i.eij = fmul fast <4 x float> %i.eii, %i.eib
  %i.eik = fadd fast <4 x float> %i.eij, splat (float f0x3E11E9BF)
  %i.eil = fmul fast <4 x float> %i.eik, %i.eib
  %i.eim = fadd fast <4 x float> %i.eil, splat (float f0xBE2AAE50)
  %i.ein = fmul fast <4 x float> %i.eim, %i.eib
  %i.eio = fadd fast <4 x float> %i.ein, splat (float f0x3E4CCEAC)
  %i.eip = fmul fast <4 x float> %i.eio, %i.eib
  %i.eiq = fadd fast <4 x float> %i.eip, splat (float f0xBE7FFFFC)
  %i.eir = fmul fast <4 x float> %i.eiq, %i.eib
  %i.eis = fadd fast <4 x float> %i.eir, splat (float f0x3EAAAAAA)
  %i.eit = fmul fast <4 x float> %i.eis, %i.eib
  %reass.mul.i58.i639 = fmul fast <4 x float> %i.eia, splat (float f0x3F317218)
  %reass.add69.i.i640 = fadd fast <4 x float> %i.eit, splat (float -5.000000e-01)
  %reass.mul70.i.i641 = fmul fast <4 x float> %i.eic, %reass.add69.i.i640
  %i.eiu = fadd fast <4 x float> %reass.mul.i58.i639, %i.eib
  %i.eiv = fadd fast <4 x float> %i.eiu, %reass.mul70.i.i641
  %27 = select <4 x i1> %26, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.eiv
  %i.eiw = fmul fast <4 x float> %27, %i.ehk
  %i.eix = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eiw, <4 x float> splat (float f0x42B0C0A5))
  %i.eiy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eix, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eiz = fmul fast <4 x float> %i.eiy, splat (float f0x3FB8AA3B)
  %i.eja = fadd fast <4 x float> %i.eiz, splat (float 5.000000e-01) ; 2 uses
  %i.ejb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eja)
  %i.ejc = sitofp fast <4 x i32> %i.ejb to <4 x float> ; 2 uses
  %i.ejd = fcmp fast olt <4 x float> %i.eja, %i.ejc
  %i.eje = select <4 x i1> %i.ejd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ejf = fsub fast <4 x float> %i.ejc, %i.eje   ; 2 uses
  %i.ejg = fmul fast <4 x float> %i.ejf, splat (float f0x3F317218)
  %i.ejh = fsub fast <4 x float> %i.eiy, %i.ejg   ; 8 uses
  %i.eji = fmul fast <4 x float> %i.ejh, %i.ejh
  %i.ejj = fmul fast <4 x float> %i.ejh, splat (float f0x39506967)
  %i.ejk = fadd fast <4 x float> %i.ejj, splat (float f0x3AB743CE)
  %i.ejl = fmul fast <4 x float> %i.ejk, %i.ejh
  %i.ejm = fadd fast <4 x float> %i.ejl, splat (float f0x3C088908)
  %i.ejn = fmul fast <4 x float> %i.ejm, %i.ejh
  %i.ejo = fadd fast <4 x float> %i.ejn, splat (float f0x3D2AA9C1)
  %i.ejp = fmul fast <4 x float> %i.ejo, %i.ejh
  %i.ejq = fadd fast <4 x float> %i.ejp, splat (float f0x3E2AAAAA)
  %i.ejr = fmul fast <4 x float> %i.ejq, %i.ejh
  %i.ejs = fadd fast <4 x float> %i.ejr, splat (float 5.000000e-01)
  %i.ejt = fmul fast <4 x float> %i.eji, %i.ejs
  %i.eju = fadd fast <4 x float> %i.ejh, splat (float 1.000000e+00)
  %i.ejv = fadd fast <4 x float> %i.eju, %i.ejt
  %i.ejw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ejf)
  %i.ejx = shl <4 x i32> %i.ejw, splat (i32 23)
  %i.ejy = add <4 x i32> %i.ejx, splat (i32 1065353216)
  %i.ejz = bitcast <4 x i32> %i.ejy to <4 x float>
  %i.eka = fmul fast <4 x float> %i.ejv, %i.ejz
  store <4 x float> %i.eka, ptr %.01271.i.i638, align 1, !tbaa !60
  %i.ekb = getelementptr inbounds nuw i8, ptr %.074.i.i635, i64 16
  %i.ekc = getelementptr inbounds nuw i8, ptr %.01172.i.i637, i64 4
  %i.ekd = getelementptr inbounds nuw i8, ptr %.01271.i.i638, i64 16
  %i.eke = add nuw nsw i32 %.01073.i.i636, 1      ; 2 uses
  %exitcond.not.i59.i642 = icmp eq i32 %i.eke, %.sroa.speculated75.i
  br i1 %exitcond.not.i59.i642, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i57.i634, !llvm.loop !234

bb.gq:                                            ; preds = %bb.go
  %i.ekf = icmp eq i32 %4, 1
  br i1 %i.ekf, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %i.ekg = icmp sgt i32 %i.dsz, 3
  br i1 %i.ekg, label %.lr.ph.i60.i625, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i60.i625:                                  ; preds = %bb.gr
  %.val.i626 = load float, ptr %1, align 4, !tbaa !59
  %i.ekh = insertelement <4 x float> poison, float %.val.i626, i64 0
  %i.eki = shufflevector <4 x float> %i.ekh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %28 = fcmp fast ole <4 x float> %i.eki, zeroinitializer
  %i.ekj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eki, <4 x float> splat (float f0x00800000))
  %i.ekk = bitcast <4 x float> %i.ekj to <4 x i32> ; 2 uses
  %i.ekl = lshr <4 x i32> %i.ekk, splat (i32 23)
  %i.ekm = and <4 x i32> %i.ekk, splat (i32 -2139095041)
  %i.ekn = or disjoint <4 x i32> %i.ekm, splat (i32 1056964608)
  %i.eko = bitcast <4 x i32> %i.ekn to <4 x float> ; 3 uses
  %i.ekp = add nsw <4 x i32> %i.ekl, splat (i32 -127)
  %i.ekq = sitofp fast <4 x i32> %i.ekp to <4 x float> ; 2 uses
  %i.ekr = fadd fast <4 x float> %i.ekq, splat (float 1.000000e+00)
  %i.eks = fcmp fast olt <4 x float> %i.eko, splat (float f0x3F3504F3) ; 2 uses
  %i.ekt = select <4 x i1> %i.eks, <4 x float> %i.eko, <4 x float> zeroinitializer
  %i.eku = fadd fast <4 x float> %i.eko, splat (float -1.000000e+00)
  %i.ekv = select fast <4 x i1> %i.eks, <4 x float> %i.ekq, <4 x float> %i.ekr
  %i.ekw = fadd fast <4 x float> %i.eku, %i.ekt   ; 12 uses
  %i.ekx = fmul fast <4 x float> %i.ekw, %i.ekw
  %i.eky = fmul fast <4 x float> %i.ekw, splat (float f0x3D9021BB)
  %i.ekz = fadd fast <4 x float> %i.eky, splat (float f0xBDEBD1B8)
  %i.ela = fmul fast <4 x float> %i.ekz, %i.ekw
  %i.elb = fadd fast <4 x float> %i.ela, splat (float f0x3DEF251A)
  %i.elc = fmul fast <4 x float> %i.elb, %i.ekw
  %i.eld = fadd fast <4 x float> %i.elc, splat (float f0xBDFE5D4F)
  %i.ele = fmul fast <4 x float> %i.eld, %i.ekw
  %i.elf = fadd fast <4 x float> %i.ele, splat (float f0x3E11E9BF)
  %i.elg = fmul fast <4 x float> %i.elf, %i.ekw
  %i.elh = fadd fast <4 x float> %i.elg, splat (float f0xBE2AAE50)
  %i.eli = fmul fast <4 x float> %i.elh, %i.ekw
  %i.elj = fadd fast <4 x float> %i.eli, splat (float f0x3E4CCEAC)
  %i.elk = fmul fast <4 x float> %i.elj, %i.ekw
  %i.ell = fadd fast <4 x float> %i.elk, splat (float f0xBE7FFFFC)
  %i.elm = fmul fast <4 x float> %i.ell, %i.ekw
  %i.eln = fadd fast <4 x float> %i.elm, splat (float f0x3EAAAAAA)
  %i.elo = fmul fast <4 x float> %i.eln, %i.ekw
  %reass.mul.i61.i627 = fmul fast <4 x float> %i.ekv, splat (float f0x3F317218)
  %reass.add57.i.i628 = fadd fast <4 x float> %i.elo, splat (float -5.000000e-01)
  %reass.mul58.i.i629 = fmul fast <4 x float> %i.ekx, %reass.add57.i.i628
  %i.elp = fadd fast <4 x float> %reass.mul.i61.i627, %i.ekw
  %i.elq = fadd fast <4 x float> %i.elp, %reass.mul58.i.i629
  %29 = select <4 x i1> %28, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.elq
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gs, %.lr.ph.i60.i625
  %.061.i.i630 = phi ptr [ %0, %.lr.ph.i60.i625 ], [ %i.emx, %bb.gs ] ; 2 uses
  %.01060.i.i631 = phi i32 [ 0, %.lr.ph.i60.i625 ], [ %i.emz, %bb.gs ]
  %.01159.i.i632 = phi ptr [ %2, %.lr.ph.i60.i625 ], [ %i.emy, %bb.gs ] ; 2 uses
  %i.elr = load <4 x float>, ptr %.061.i.i630, align 1, !tbaa !60
  %i.els = fmul fast <4 x float> %i.elr, %29
  %i.elt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.els, <4 x float> splat (float f0x42B0C0A5))
  %i.elu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.elt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.elv = fmul fast <4 x float> %i.elu, splat (float f0x3FB8AA3B)
  %i.elw = fadd fast <4 x float> %i.elv, splat (float 5.000000e-01) ; 2 uses
  %i.elx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.elw)
  %i.ely = sitofp fast <4 x i32> %i.elx to <4 x float> ; 2 uses
  %i.elz = fcmp fast olt <4 x float> %i.elw, %i.ely
  %i.ema = select <4 x i1> %i.elz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.emb = fsub fast <4 x float> %i.ely, %i.ema   ; 2 uses
  %i.emc = fmul fast <4 x float> %i.emb, splat (float f0x3F317218)
  %i.emd = fsub fast <4 x float> %i.elu, %i.emc   ; 8 uses
  %i.eme = fmul fast <4 x float> %i.emd, %i.emd
  %i.emf = fmul fast <4 x float> %i.emd, splat (float f0x39506967)
  %i.emg = fadd fast <4 x float> %i.emf, splat (float f0x3AB743CE)
  %i.emh = fmul fast <4 x float> %i.emg, %i.emd
  %i.emi = fadd fast <4 x float> %i.emh, splat (float f0x3C088908)
  %i.emj = fmul fast <4 x float> %i.emi, %i.emd
  %i.emk = fadd fast <4 x float> %i.emj, splat (float f0x3D2AA9C1)
  %i.eml = fmul fast <4 x float> %i.emk, %i.emd
  %i.emm = fadd fast <4 x float> %i.eml, splat (float f0x3E2AAAAA)
  %i.emn = fmul fast <4 x float> %i.emm, %i.emd
  %i.emo = fadd fast <4 x float> %i.emn, splat (float 5.000000e-01)
  %i.emp = fmul fast <4 x float> %i.eme, %i.emo
  %i.emq = fadd fast <4 x float> %i.emd, splat (float 1.000000e+00)
  %i.emr = fadd fast <4 x float> %i.emq, %i.emp
  %i.ems = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.emb)
  %i.emt = shl <4 x i32> %i.ems, splat (i32 23)
  %i.emu = add <4 x i32> %i.emt, splat (i32 1065353216)
  %i.emv = bitcast <4 x i32> %i.emu to <4 x float>
  %i.emw = fmul fast <4 x float> %i.emr, %i.emv
  store <4 x float> %i.emw, ptr %.01159.i.i632, align 1, !tbaa !60
  %i.emx = getelementptr inbounds nuw i8, ptr %.061.i.i630, i64 16
  %i.emy = getelementptr inbounds nuw i8, ptr %.01159.i.i632, i64 16
  %i.emz = add nuw nsw i32 %.01060.i.i631, 4      ; 2 uses
  %i.ena = or disjoint i32 %i.emz, 3
  %i.enb = icmp slt i32 %i.ena, %i.dsz
  br i1 %i.enb, label %bb.gs, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, !llvm.loop !235

bb.gt:                                            ; preds = %bb.gq
  %i.enc = icmp eq i32 %3, 1
  %i.end = icmp eq i32 %.sroa.speculated.i618, 4
  %or.cond.i619 = and i1 %i.enc, %i.end
  br i1 %or.cond.i619, label %bb.gu, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.gu:                                            ; preds = %bb.gt
  %i.ene = load <4 x float>, ptr %0, align 1, !tbaa !60
  br label %.lr.ph.i62.i

.lr.ph.i62.i:                                     ; preds = %.lr.ph.i62.i, %bb.gu
  %.071.i.i620 = phi ptr [ %i.epv, %.lr.ph.i62.i ], [ %1, %bb.gu ] ; 2 uses
  %.0970.i.i621 = phi i32 [ %i.epx, %.lr.ph.i62.i ], [ 0, %bb.gu ]
  %.01069.i.i622 = phi ptr [ %i.epw, %.lr.ph.i62.i ], [ %2, %bb.gu ] ; 2 uses
  %i.enf = load float, ptr %.071.i.i620, align 4, !tbaa !59
  %i.eng = insertelement <4 x float> poison, float %i.enf, i64 0
  %i.enh = shufflevector <4 x float> %i.eng, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %30 = fcmp fast ole <4 x float> %i.enh, zeroinitializer
  %i.eni = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.enh, <4 x float> splat (float f0x00800000))
  %i.enj = bitcast <4 x float> %i.eni to <4 x i32> ; 2 uses
  %i.enk = lshr <4 x i32> %i.enj, splat (i32 23)
  %i.enl = and <4 x i32> %i.enj, splat (i32 -2139095041)
  %i.enm = or disjoint <4 x i32> %i.enl, splat (i32 1056964608)
  %i.enn = bitcast <4 x i32> %i.enm to <4 x float> ; 3 uses
  %i.eno = add nsw <4 x i32> %i.enk, splat (i32 -127)
  %i.enp = sitofp fast <4 x i32> %i.eno to <4 x float> ; 2 uses
  %i.enq = fadd fast <4 x float> %i.enp, splat (float 1.000000e+00)
  %i.enr = fcmp fast olt <4 x float> %i.enn, splat (float f0x3F3504F3) ; 2 uses
  %i.ens = select <4 x i1> %i.enr, <4 x float> %i.enn, <4 x float> zeroinitializer
  %i.ent = fadd fast <4 x float> %i.enn, splat (float -1.000000e+00)
  %i.enu = select fast <4 x i1> %i.enr, <4 x float> %i.enp, <4 x float> %i.enq
  %i.env = fadd fast <4 x float> %i.ent, %i.ens   ; 12 uses
  %i.enw = fmul fast <4 x float> %i.env, %i.env
  %i.enx = fmul fast <4 x float> %i.env, splat (float f0x3D9021BB)
  %i.eny = fadd fast <4 x float> %i.enx, splat (float f0xBDEBD1B8)
  %i.enz = fmul fast <4 x float> %i.eny, %i.env
  %i.eoa = fadd fast <4 x float> %i.enz, splat (float f0x3DEF251A)
  %i.eob = fmul fast <4 x float> %i.eoa, %i.env
  %i.eoc = fadd fast <4 x float> %i.eob, splat (float f0xBDFE5D4F)
  %i.eod = fmul fast <4 x float> %i.eoc, %i.env
  %i.eoe = fadd fast <4 x float> %i.eod, splat (float f0x3E11E9BF)
  %i.eof = fmul fast <4 x float> %i.eoe, %i.env
  %i.eog = fadd fast <4 x float> %i.eof, splat (float f0xBE2AAE50)
  %i.eoh = fmul fast <4 x float> %i.eog, %i.env
  %i.eoi = fadd fast <4 x float> %i.eoh, splat (float f0x3E4CCEAC)
  %i.eoj = fmul fast <4 x float> %i.eoi, %i.env
  %i.eok = fadd fast <4 x float> %i.eoj, splat (float f0xBE7FFFFC)
  %i.eol = fmul fast <4 x float> %i.eok, %i.env
  %i.eom = fadd fast <4 x float> %i.eol, splat (float f0x3EAAAAAA)
  %i.eon = fmul fast <4 x float> %i.eom, %i.env
  %reass.mul.i63.i = fmul fast <4 x float> %i.enu, splat (float f0x3F317218)
  %reass.add67.i.i623 = fadd fast <4 x float> %i.eon, splat (float -5.000000e-01)
  %reass.mul68.i.i624 = fmul fast <4 x float> %i.enw, %reass.add67.i.i623
  %i.eoo = fadd fast <4 x float> %reass.mul.i63.i, %i.env
  %i.eop = fadd fast <4 x float> %i.eoo, %reass.mul68.i.i624
  %31 = select <4 x i1> %30, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.eop
  %i.eoq = fmul fast <4 x float> %31, %i.ene
  %i.eor = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eoq, <4 x float> splat (float f0x42B0C0A5))
  %i.eos = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eor, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eot = fmul fast <4 x float> %i.eos, splat (float f0x3FB8AA3B)
  %i.eou = fadd fast <4 x float> %i.eot, splat (float 5.000000e-01) ; 2 uses
  %i.eov = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eou)
  %i.eow = sitofp fast <4 x i32> %i.eov to <4 x float> ; 2 uses
  %i.eox = fcmp fast olt <4 x float> %i.eou, %i.eow
  %i.eoy = select <4 x i1> %i.eox, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eoz = fsub fast <4 x float> %i.eow, %i.eoy   ; 2 uses
  %i.epa = fmul fast <4 x float> %i.eoz, splat (float f0x3F317218)
  %i.epb = fsub fast <4 x float> %i.eos, %i.epa   ; 8 uses
  %i.epc = fmul fast <4 x float> %i.epb, %i.epb
  %i.epd = fmul fast <4 x float> %i.epb, splat (float f0x39506967)
  %i.epe = fadd fast <4 x float> %i.epd, splat (float f0x3AB743CE)
  %i.epf = fmul fast <4 x float> %i.epe, %i.epb
  %i.epg = fadd fast <4 x float> %i.epf, splat (float f0x3C088908)
  %i.eph = fmul fast <4 x float> %i.epg, %i.epb
  %i.epi = fadd fast <4 x float> %i.eph, splat (float f0x3D2AA9C1)
  %i.epj = fmul fast <4 x float> %i.epi, %i.epb
  %i.epk = fadd fast <4 x float> %i.epj, splat (float f0x3E2AAAAA)
  %i.epl = fmul fast <4 x float> %i.epk, %i.epb
  %i.epm = fadd fast <4 x float> %i.epl, splat (float 5.000000e-01)
  %i.epn = fmul fast <4 x float> %i.epc, %i.epm
  %i.epo = fadd fast <4 x float> %i.epb, splat (float 1.000000e+00)
  %i.epp = fadd fast <4 x float> %i.epo, %i.epn
  %i.epq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eoz)
  %i.epr = shl <4 x i32> %i.epq, splat (i32 23)
  %i.eps = add <4 x i32> %i.epr, splat (i32 1065353216)
  %i.ept = bitcast <4 x i32> %i.eps to <4 x float>
  %i.epu = fmul fast <4 x float> %i.epp, %i.ept
  store <4 x float> %i.epu, ptr %.01069.i.i622, align 1, !tbaa !60
  %i.epv = getelementptr inbounds nuw i8, ptr %.071.i.i620, i64 4
  %i.epw = getelementptr inbounds nuw i8, ptr %.01069.i.i622, i64 16
  %i.epx = add nuw nsw i32 %.0970.i.i621, 1       ; 2 uses
  %exitcond.not.i64.i = icmp eq i32 %i.epx, %.sroa.speculated75.i
  br i1 %exitcond.not.i64.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i62.i, !llvm.loop !236

bb.gv:                                            ; preds = %bb.a
  %.sroa.speculated73.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i691 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.epy = mul i32 %.sroa.speculated.i691, %.sroa.speculated73.i ; 26 uses
  %i.epz = icmp eq i32 %5, %6
  br i1 %i.epz, label %bb.gw, label %bb.hk

bb.gw:                                            ; preds = %bb.gv
  %i.eqa = icmp eq i32 %3, %4
  br i1 %i.eqa, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.eqb = icmp sgt i32 %i.epy, 3
  br i1 %i.eqb, label %.lr.ph.i.i717, label %.preheader.i.i711

.preheader.loopexit.i.i718:                       ; preds = %.lr.ph.i.i717
  %i.eqc = and i32 %i.epy, 2147483644
  br label %.preheader.i.i711

.preheader.i.i711:                                ; preds = %.preheader.loopexit.i.i718, %bb.gx
  %.022.lcssa.i.i712 = phi ptr [ %2, %bb.gx ], [ %i.etc, %.preheader.loopexit.i.i718 ] ; 5 uses
  %.020.lcssa.i.i713 = phi ptr [ %1, %bb.gx ], [ %i.etb, %.preheader.loopexit.i.i718 ] ; 5 uses
  %.018.lcssa.i.i714 = phi i32 [ 0, %bb.gx ], [ %i.eqc, %.preheader.loopexit.i.i718 ] ; 5 uses
  %.0.lcssa.i.i715 = phi ptr [ %0, %bb.gx ], [ %i.eta, %.preheader.loopexit.i.i718 ] ; 5 uses
  %.022.lcssa.i.i7122745 = ptrtoaddr ptr %.022.lcssa.i.i712 to i64 ; 2 uses
  %.0.lcssa.i.i7152746 = ptrtoaddr ptr %.0.lcssa.i.i715 to i64
  %.020.lcssa.i.i7132747 = ptrtoaddr ptr %.020.lcssa.i.i713 to i64
  %i.eqd = icmp slt i32 %.018.lcssa.i.i714, %i.epy
  br i1 %i.eqd, label %.lr.ph70.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph70.i.i.preheader:                           ; preds = %.preheader.i.i711
  %i.eqe = xor i32 %.018.lcssa.i.i714, -1
  %i.eqf = add i32 %i.epy, %i.eqe                 ; 2 uses
  %i.eqg = zext i32 %i.eqf to i64
  %i.eqh = add nuw nsw i64 %i.eqg, 1              ; 2 uses
  %min.iters.check2749 = icmp ult i32 %i.eqf, 7
  br i1 %min.iters.check2749, label %.lr.ph70.i.i.preheader3795, label %vector.memcheck2750

vector.memcheck2750:                              ; preds = %.lr.ph70.i.i.preheader
  %i.eqi = sub i64 %.0.lcssa.i.i7152746, %.022.lcssa.i.i7122745
  %diff.check2751 = icmp ugt i64 %i.eqi, -16
  %i.eqj = sub i64 %.020.lcssa.i.i7132747, %.022.lcssa.i.i7122745
  %diff.check2752 = icmp ugt i64 %i.eqj, -16
  %conflict.rdx2753 = or i1 %diff.check2751, %diff.check2752
  br i1 %conflict.rdx2753, label %.lr.ph70.i.i.preheader3795, label %vector.ph2754

vector.ph2754:                                    ; preds = %vector.memcheck2750
  %n.vec2755 = and i64 %i.eqh, 8589934588         ; 4 uses
  %i.eqk = shl nuw nsw i64 %n.vec2755, 2          ; 3 uses
  %i.eql = getelementptr i8, ptr %.0.lcssa.i.i715, i64 %i.eqk
  %i.eqm = trunc i64 %n.vec2755 to i32
  %i.eqn = add i32 %.018.lcssa.i.i714, %i.eqm
  %i.eqo = getelementptr i8, ptr %.020.lcssa.i.i713, i64 %i.eqk
  %i.eqp = getelementptr i8, ptr %.022.lcssa.i.i712, i64 %i.eqk
  br label %vector.body2756

vector.body2756:                                  ; preds = %vector.body2756, %vector.ph2754
  %index2757 = phi i64 [ 0, %vector.ph2754 ], [ %index.next2763, %vector.body2756 ] ; 2 uses
  %i.eqq = shl i64 %index2757, 2                  ; 3 uses
  %next.gep2758 = getelementptr i8, ptr %.0.lcssa.i.i715, i64 %i.eqq
  %next.gep2759 = getelementptr i8, ptr %.020.lcssa.i.i713, i64 %i.eqq
  %next.gep2760 = getelementptr i8, ptr %.022.lcssa.i.i712, i64 %i.eqq
  %wide.load2761 = load <4 x float>, ptr %next.gep2758, align 4, !tbaa !59
  %wide.load2762 = load <4 x float>, ptr %next.gep2759, align 4, !tbaa !59
  %i.eqr = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %wide.load2761, <4 x float> %wide.load2762)
  store <4 x float> %i.eqr, ptr %next.gep2760, align 4, !tbaa !59
  %index.next2763 = add nuw i64 %index2757, 4     ; 2 uses
  %i.eqs = icmp eq i64 %index.next2763, %n.vec2755
  br i1 %i.eqs, label %middle.block2764, label %vector.body2756, !llvm.loop !237

middle.block2764:                                 ; preds = %vector.body2756
  %cmp.n2765 = icmp eq i64 %i.eqh, %n.vec2755
  br i1 %cmp.n2765, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i.preheader3795

.lr.ph70.i.i.preheader3795:                       ; preds = %vector.memcheck2750, %.lr.ph70.i.i.preheader, %middle.block2764
  %.169.i.i.ph = phi ptr [ %.0.lcssa.i.i715, %vector.memcheck2750 ], [ %.0.lcssa.i.i715, %.lr.ph70.i.i.preheader ], [ %i.eql, %middle.block2764 ] ; 2 uses
  %.11968.i.i.ph = phi i32 [ %.018.lcssa.i.i714, %vector.memcheck2750 ], [ %.018.lcssa.i.i714, %.lr.ph70.i.i.preheader ], [ %i.eqn, %middle.block2764 ] ; 4 uses
  %.12167.i.i.ph = phi ptr [ %.020.lcssa.i.i713, %vector.memcheck2750 ], [ %.020.lcssa.i.i713, %.lr.ph70.i.i.preheader ], [ %i.eqo, %middle.block2764 ] ; 2 uses
  %.12366.i.i.ph = phi ptr [ %.022.lcssa.i.i712, %vector.memcheck2750 ], [ %.022.lcssa.i.i712, %.lr.ph70.i.i.preheader ], [ %i.eqp, %middle.block2764 ] ; 2 uses
  %i.eqt = sub i32 %i.epy, %.11968.i.i.ph
  %xtraiter4051 = and i32 %i.eqt, 3               ; 2 uses
  %lcmp.mod4052.not = icmp eq i32 %xtraiter4051, 0
  br i1 %lcmp.mod4052.not, label %.lr.ph70.i.i.prol.loopexit, label %.lr.ph70.i.i.prol

.lr.ph70.i.i.prol:                                ; preds = %.lr.ph70.i.i.preheader3795, %.lr.ph70.i.i.prol
  %.169.i.i.prol = phi ptr [ %i.eqx, %.lr.ph70.i.i.prol ], [ %.169.i.i.ph, %.lr.ph70.i.i.preheader3795 ] ; 2 uses
  %.11968.i.i.prol = phi i32 [ %i.era, %.lr.ph70.i.i.prol ], [ %.11968.i.i.ph, %.lr.ph70.i.i.preheader3795 ]
  %.12167.i.i.prol = phi ptr [ %i.eqy, %.lr.ph70.i.i.prol ], [ %.12167.i.i.ph, %.lr.ph70.i.i.preheader3795 ] ; 2 uses
  %.12366.i.i.prol = phi ptr [ %i.eqz, %.lr.ph70.i.i.prol ], [ %.12366.i.i.ph, %.lr.ph70.i.i.preheader3795 ] ; 2 uses
  %prol.iter4053 = phi i32 [ %prol.iter4053.next, %.lr.ph70.i.i.prol ], [ 0, %.lr.ph70.i.i.preheader3795 ]
  %i.equ = load float, ptr %.169.i.i.prol, align 4, !tbaa !59
  %i.eqv = load float, ptr %.12167.i.i.prol, align 4, !tbaa !59
  %i.eqw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.equ, float %i.eqv)
  store float %i.eqw, ptr %.12366.i.i.prol, align 4, !tbaa !59
  %i.eqx = getelementptr inbounds nuw i8, ptr %.169.i.i.prol, i64 4 ; 2 uses
  %i.eqy = getelementptr inbounds nuw i8, ptr %.12167.i.i.prol, i64 4 ; 2 uses
  %i.eqz = getelementptr inbounds nuw i8, ptr %.12366.i.i.prol, i64 4 ; 2 uses
  %i.era = add nuw nsw i32 %.11968.i.i.prol, 1    ; 2 uses
  %prol.iter4053.next = add i32 %prol.iter4053, 1 ; 2 uses
  %prol.iter4053.cmp.not = icmp eq i32 %prol.iter4053.next, %xtraiter4051
  br i1 %prol.iter4053.cmp.not, label %.lr.ph70.i.i.prol.loopexit, label %.lr.ph70.i.i.prol, !llvm.loop !238

.lr.ph70.i.i.prol.loopexit:                       ; preds = %.lr.ph70.i.i.prol, %.lr.ph70.i.i.preheader3795
  %.169.i.i.unr = phi ptr [ %.169.i.i.ph, %.lr.ph70.i.i.preheader3795 ], [ %i.eqx, %.lr.ph70.i.i.prol ]
  %.11968.i.i.unr = phi i32 [ %.11968.i.i.ph, %.lr.ph70.i.i.preheader3795 ], [ %i.era, %.lr.ph70.i.i.prol ]
  %.12167.i.i.unr = phi ptr [ %.12167.i.i.ph, %.lr.ph70.i.i.preheader3795 ], [ %i.eqy, %.lr.ph70.i.i.prol ]
  %.12366.i.i.unr = phi ptr [ %.12366.i.i.ph, %.lr.ph70.i.i.preheader3795 ], [ %i.eqz, %.lr.ph70.i.i.prol ]
  %i.erb = sub i32 %.11968.i.i.ph, %i.epy
  %i.erc = icmp ugt i32 %i.erb, -4
  br i1 %i.erc, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i

.lr.ph.i.i717:                                    ; preds = %bb.gx, %.lr.ph.i.i717
  %.062.i.i = phi ptr [ %i.eta, %.lr.ph.i.i717 ], [ %0, %bb.gx ] ; 2 uses
  %.01861.i.i = phi i32 [ %i.etd, %.lr.ph.i.i717 ], [ 0, %bb.gx ]
  %.02060.i.i = phi ptr [ %i.etb, %.lr.ph.i.i717 ], [ %1, %bb.gx ] ; 2 uses
  %.02259.i.i = phi ptr [ %i.etc, %.lr.ph.i.i717 ], [ %2, %bb.gx ] ; 2 uses
  %i.erd = load <4 x float>, ptr %.062.i.i, align 1, !tbaa !60 ; 4 uses
  %i.ere = load <4 x float>, ptr %.02060.i.i, align 1, !tbaa !60 ; 4 uses
  %i.erf = fcmp fast oeq <4 x float> %i.ere, zeroinitializer
  %i.erg = fcmp fast oeq <4 x float> %i.erd, zeroinitializer
  %i.erh = bitcast <4 x float> %i.erd to <4 x i32>
  %i.eri = and <4 x i32> %i.erh, splat (i32 -2147483648)
  %i.erj = fcmp fast olt <4 x float> %i.ere, zeroinitializer
  %i.erk = fcmp fast olt <4 x float> %i.erd, zeroinitializer
  %i.erl = select <4 x i1> %i.erk, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.erm = select <4 x i1> %i.erj, <4 x float> %i.erl, <4 x float> zeroinitializer
  %i.ern = fdiv fast <4 x float> %i.erd, %i.ere   ; 2 uses
  %i.ero = bitcast <4 x float> %i.ern to <4 x i32>
  %i.erp = and <4 x i32> %i.ero, splat (i32 -2147483648)
  %i.erq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ern) ; 3 uses
  %i.err = fcmp fast ogt <4 x float> %i.erq, splat (float 1.000000e+00) ; 2 uses
  %i.ers = select <4 x i1> %i.err, <4 x float> splat (float -1.000000e+00), <4 x float> %i.erq
  %i.ert = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.erq, <4 x float> splat (float 1.000000e+00))
  %i.eru = fdiv fast <4 x float> %i.ers, %i.ert   ; 3 uses
  %i.erv = fmul fast <4 x float> %i.eru, %i.eru   ; 3 uses
  %i.erw = fmul fast <4 x float> %i.erv, %i.erv   ; 7 uses
  %i.erx = fmul fast <4 x float> %i.erw, splat (float f0x3C83A25C)
  %i.ery = fsub fast <4 x float> splat (float f0xBD99B01E), %i.erx
  %i.erz = fmul fast <4 x float> %i.ery, %i.erw
  %i.esa = fadd fast <4 x float> %i.erz, splat (float f0xBE117200)
  %i.esb = fmul fast <4 x float> %i.esa, %i.erw
  %i.esc = fadd fast <4 x float> %i.esb, splat (float f0xBEAAAA53)
  %i.esd = fmul fast <4 x float> %i.erw, splat (float f0x3B3AC537)
  %i.ese = fadd fast <4 x float> %i.esd, splat (float f0x3D2EDD4E)
  %i.esf = fmul fast <4 x float> %i.ese, %i.erw
  %i.esg = fadd fast <4 x float> %i.esf, splat (float f0x3DD9ED24)
  %i.esh = fmul fast <4 x float> %i.esg, %i.erw
  %i.esi = fadd fast <4 x float> %i.esh, splat (float f0x3E4CB974)
  %i.esj = fmul fast <4 x float> %i.esi, %i.erw
  %i.esk = fadd fast <4 x float> %i.esj, splat (float 1.000000e+00)
  %i.esl = fmul fast <4 x float> %i.esc, %i.erv
  %i.esm = fadd fast <4 x float> %i.esk, %i.esl
  %i.esn = fmul fast <4 x float> %i.esm, %i.eru
  %i.eso = select <4 x i1> %i.err, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.esp = fadd fast <4 x float> %i.esn, %i.eso
  %i.esq = bitcast <4 x float> %i.esp to <4 x i32>
  %i.esr = or <4 x i32> %i.erp, %i.esq
  %i.ess = bitcast <4 x i32> %i.esr to <4 x float>
  %i.est = fadd fast <4 x float> %i.erm, %i.ess
  %i.esu = bitcast <4 x float> %i.ere to <4 x i32>
  %i.esv = or disjoint <4 x i32> %i.eri, splat (i32 1070141403)
  %isneg.inv.i.i = icmp slt <4 x i32> %i.esu, zeroinitializer
  %i.esw = select <4 x i1> %isneg.inv.i.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %.112.i.i413 = phi i32 [ %i.cld, %.lr.ph13.i.i412 ], [ %.112.i.i413.unr, %.lr.ph13.i.i412.prol.loopexit ]
  %.11511.i.i414 = phi ptr [ %i.ckt, %.lr.ph13.i.i412 ], [ %.11511.i.i414.unr, %.lr.ph13.i.i412.prol.loopexit ] ; 3 uses
  %.11710.i.i415 = phi ptr [ %i.clc, %.lr.ph13.i.i412 ], [ %.11710.i.i415.unr, %.lr.ph13.i.i412.prol.loopexit ] ; 3 uses
  %i.ckj = getelementptr inbounds nuw i8, ptr %.11511.i.i414, i64 2
  %i.ckk = load i16, ptr %.11511.i.i414, align 2, !tbaa !57
  %i.ckl = zext i16 %i.ckk to i32
  %i.ckm = shl nuw i32 %i.ckl, 16
  %i.ckn = bitcast i32 %i.ckm to float            ; 2 uses
  %i.cko = fcmp fast olt float %i.cif, %i.ckn
  %.sroa.speculated.i61.i416 = select i1 %i.cko, float %i.cif, float %i.ckn
  %i.ckp = bitcast float %.sroa.speculated.i61.i416 to i32
  %i.ckq = lshr i32 %i.ckp, 16
  %i.ckr = trunc nuw i32 %i.ckq to i16
  %i.cks = getelementptr inbounds nuw i8, ptr %.11710.i.i415, i64 2
  store i16 %i.ckr, ptr %.11710.i.i415, align 2, !tbaa !57
  %i.ckt = getelementptr inbounds nuw i8, ptr %.11511.i.i414, i64 4
  %i.cku = load i16, ptr %i.ckj, align 2, !tbaa !57
  %i.ckv = zext i16 %i.cku to i32
  %i.ckw = shl nuw i32 %i.ckv, 16
  %i.ckx = bitcast i32 %i.ckw to float            ; 2 uses
  %i.cky = fcmp fast olt float %i.cif, %i.ckx
  %.sroa.speculated.i61.i416.1 = select i1 %i.cky, float %i.cif, float %i.ckx
  %i.ckz = bitcast float %.sroa.speculated.i61.i416.1 to i32
  %i.cla = lshr i32 %i.ckz, 16
  %i.clb = trunc nuw i32 %i.cla to i16
  %i.clc = getelementptr inbounds nuw i8, ptr %.11710.i.i415, i64 4
  store i16 %i.clb, ptr %i.cks, align 2, !tbaa !57
  %i.cld = add nuw nsw i32 %.112.i.i413, 2        ; 2 uses
  %exitcond.not.i62.i417.1 = icmp eq i32 %i.cld, %i.bxt
  br i1 %exitcond.not.i62.i417.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph13.i.i412, !llvm.loop !503

bb.dp:                                            ; preds = %bb.dn
  %i.cle = icmp eq i32 %3, 1
  %i.clf = icmp eq i32 %.sroa.speculated.i400, 4
  %or.cond.i401 = and i1 %i.cle, %i.clf
  br i1 %or.cond.i401, label %bb.dq, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.dq:                                            ; preds = %bb.dp
  %i.clg = load i64, ptr %0, align 1, !tbaa !60
  %i.clh = insertelement <2 x i64> poison, i64 %i.clg, i64 0
  %i.cli = bitcast <2 x i64> %i.clh to <8 x i16>
  %i.clj = shufflevector <8 x i16> %i.cli, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.clk = bitcast <8 x i16> %i.clj to <4 x float>
  br label %.lr.ph.i65.i402

.lr.ph.i65.i402:                                  ; preds = %.lr.ph.i65.i402, %bb.dq
  %.016.i.i403 = phi i32 [ %i.cma, %.lr.ph.i65.i402 ], [ 0, %bb.dq ]
  %.0815.i.i404 = phi ptr [ %i.cly, %.lr.ph.i65.i402 ], [ %1, %bb.dq ] ; 2 uses
  %.0914.i.i405 = phi ptr [ %i.clz, %.lr.ph.i65.i402 ], [ %2, %bb.dq ] ; 2 uses
  %i.cll = load i16, ptr %.0815.i.i404, align 2, !tbaa !57
  %i.clm = zext i16 %i.cll to i32
  %i.cln = shl nuw i32 %i.clm, 16
  %i.clo = insertelement <4 x i32> poison, i32 %i.cln, i64 0
  %i.clp = bitcast <4 x i32> %i.clo to <4 x float>
  %i.clq = shufflevector <4 x float> %i.clp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.clr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.clk, <4 x float> nofpclass(nan inf) %i.clq)
  %i.cls = bitcast <4 x float> %i.clr to <8 x i16>
  %i.clt = shufflevector <8 x i16> %i.cls, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.clu = bitcast <8 x i16> %i.clt to <4 x float>
  %i.clv = shufflevector <4 x float> %i.clu, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.clw = bitcast <4 x float> %i.clv to <2 x i64>
  %i.clx = extractelement <2 x i64> %i.clw, i64 0
  store i64 %i.clx, ptr %.0914.i.i405, align 1, !tbaa !60
  %i.cly = getelementptr inbounds nuw i8, ptr %.0815.i.i404, i64 2
  %i.clz = getelementptr inbounds nuw i8, ptr %.0914.i.i405, i64 8
  %i.cma = add nuw nsw i32 %.016.i.i403, 1        ; 2 uses
  %exitcond.not.i66.i406 = icmp eq i32 %i.cma, %.sroa.speculated77.i399
  br i1 %exitcond.not.i66.i406, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i65.i402, !llvm.loop !504

bb.dr:                                            ; preds = %bb.a
  %.sroa.speculated82.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i478 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.cmb = mul i32 %.sroa.speculated.i478, %.sroa.speculated82.i ; 32 uses
  %i.cmc = icmp eq i32 %5, %6
  br i1 %i.cmc, label %bb.ds, label %bb.ef

bb.ds:                                            ; preds = %bb.dr
  %i.cmd = icmp eq i32 %3, %4
  br i1 %i.cmd, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.cme = icmp sgt i32 %i.cmb, 3
  br i1 %i.cme, label %.lr.ph.i.i501, label %.preheader.i.i495

.preheader.loopexit.i.i502:                       ; preds = %.lr.ph.i.i501
  %i.cmf = and i32 %i.cmb, 2147483644
  br label %.preheader.i.i495

.preheader.i.i495:                                ; preds = %.preheader.loopexit.i.i502, %bb.dt
  %.018.lcssa.i.i496 = phi ptr [ %1, %bb.dt ], [ %i.crb, %.preheader.loopexit.i.i502 ] ; 5 uses
  %.016.lcssa.i.i497 = phi ptr [ %2, %bb.dt ], [ %i.crc, %.preheader.loopexit.i.i502 ] ; 5 uses
  %.014.lcssa.i.i498 = phi ptr [ %0, %bb.dt ], [ %i.cra, %.preheader.loopexit.i.i502 ] ; 5 uses
  %.0.lcssa.i.i499 = phi i32 [ 0, %bb.dt ], [ %i.cmf, %.preheader.loopexit.i.i502 ] ; 5 uses
  %.016.lcssa.i.i4973550 = ptrtoaddr ptr %.016.lcssa.i.i497 to i64 ; 2 uses
  %.014.lcssa.i.i4983551 = ptrtoaddr ptr %.014.lcssa.i.i498 to i64
  %.018.lcssa.i.i4963552 = ptrtoaddr ptr %.018.lcssa.i.i496 to i64
  %i.cmg = icmp slt i32 %.0.lcssa.i.i499, %i.cmb
  br i1 %i.cmg, label %.lr.ph94.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph94.i.i.preheader:                           ; preds = %.preheader.i.i495
  %i.cmh = xor i32 %.0.lcssa.i.i499, -1
  %i.cmi = add i32 %i.cmb, %i.cmh                 ; 2 uses
  %i.cmj = zext i32 %i.cmi to i64
  %i.cmk = add nuw nsw i64 %i.cmj, 1              ; 2 uses
  %min.iters.check3554 = icmp ult i32 %i.cmi, 7
  br i1 %min.iters.check3554, label %.lr.ph94.i.i.preheader4403, label %vector.memcheck3555

vector.memcheck3555:                              ; preds = %.lr.ph94.i.i.preheader
  %i.cml = sub i64 %.014.lcssa.i.i4983551, %.016.lcssa.i.i4973550
  %diff.check3556 = icmp ugt i64 %i.cml, -16
  %i.cmm = sub i64 %.018.lcssa.i.i4963552, %.016.lcssa.i.i4973550
  %diff.check3557 = icmp ugt i64 %i.cmm, -16
  %conflict.rdx3558 = or i1 %diff.check3556, %diff.check3557
  br i1 %conflict.rdx3558, label %.lr.ph94.i.i.preheader4403, label %vector.ph3559

vector.ph3559:                                    ; preds = %vector.memcheck3555
  %n.vec3560 = and i64 %i.cmk, 8589934584         ; 4 uses
  %i.cmn = trunc i64 %n.vec3560 to i32
  %i.cmo = add i32 %.0.lcssa.i.i499, %i.cmn
  %i.cmp = shl nuw nsw i64 %n.vec3560, 1          ; 3 uses
  %i.cmq = getelementptr i8, ptr %.014.lcssa.i.i498, i64 %i.cmp
  %i.cmr = getelementptr i8, ptr %.016.lcssa.i.i497, i64 %i.cmp
  %i.cms = getelementptr i8, ptr %.018.lcssa.i.i496, i64 %i.cmp
  br label %vector.body3561

vector.body3561:                                  ; preds = %vector.body3561, %vector.ph3559
  %index3562 = phi i64 [ 0, %vector.ph3559 ], [ %index.next3568, %vector.body3561 ] ; 2 uses
  %i.cmt = shl i64 %index3562, 1                  ; 3 uses
  %next.gep3563 = getelementptr i8, ptr %.014.lcssa.i.i498, i64 %i.cmt
  %next.gep3564 = getelementptr i8, ptr %.016.lcssa.i.i497, i64 %i.cmt
  %next.gep3565 = getelementptr i8, ptr %.018.lcssa.i.i496, i64 %i.cmt
  %wide.load3566 = load <8 x i16>, ptr %next.gep3563, align 2, !tbaa !57
  %i.cmu = zext <8 x i16> %wide.load3566 to <8 x i32>
  %i.cmv = shl nuw <8 x i32> %i.cmu, splat (i32 16)
  %i.cmw = bitcast <8 x i32> %i.cmv to <8 x float>
  %wide.load3567 = load <8 x i16>, ptr %next.gep3565, align 2, !tbaa !57
  %i.cmx = zext <8 x i16> %wide.load3567 to <8 x i32>
  %i.cmy = shl nuw <8 x i32> %i.cmx, splat (i32 16)
  %i.cmz = bitcast <8 x i32> %i.cmy to <8 x float>
  %i.cna = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.cmw, <8 x float> %i.cmz)
  %i.cnb = bitcast <8 x float> %i.cna to <8 x i32>
  %i.cnc = lshr <8 x i32> %i.cnb, splat (i32 16)
  %i.cnd = trunc nuw <8 x i32> %i.cnc to <8 x i16>
  store <8 x i16> %i.cnd, ptr %next.gep3564, align 2, !tbaa !57
  %index.next3568 = add nuw i64 %index3562, 8     ; 2 uses
  %i.cne = icmp eq i64 %index.next3568, %n.vec3560
  br i1 %i.cne, label %middle.block3569, label %vector.body3561, !llvm.loop !505

middle.block3569:                                 ; preds = %vector.body3561
  %cmp.n3570 = icmp eq i64 %i.cmk, %n.vec3560
  br i1 %cmp.n3570, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i.preheader4403

.lr.ph94.i.i.preheader4403:                       ; preds = %vector.memcheck3555, %.lr.ph94.i.i.preheader, %middle.block3569
  %.193.i.i.ph = phi i32 [ %.0.lcssa.i.i499, %vector.memcheck3555 ], [ %.0.lcssa.i.i499, %.lr.ph94.i.i.preheader ], [ %i.cmo, %middle.block3569 ] ; 4 uses
  %.11592.i.i.ph = phi ptr [ %.014.lcssa.i.i498, %vector.memcheck3555 ], [ %.014.lcssa.i.i498, %.lr.ph94.i.i.preheader ], [ %i.cmq, %middle.block3569 ] ; 3 uses
  %.11791.i.i.ph = phi ptr [ %.016.lcssa.i.i497, %vector.memcheck3555 ], [ %.016.lcssa.i.i497, %.lr.ph94.i.i.preheader ], [ %i.cmr, %middle.block3569 ] ; 3 uses
  %.11990.i.i.ph = phi ptr [ %.018.lcssa.i.i496, %vector.memcheck3555 ], [ %.018.lcssa.i.i496, %.lr.ph94.i.i.preheader ], [ %i.cms, %middle.block3569 ] ; 3 uses
  %i.cnf = sub i32 %i.cmb, %.193.i.i.ph
  %.neg4792 = add i32 %.193.i.i.ph, 1
  %xtraiter4710 = and i32 %i.cnf, 1
  %lcmp.mod4711.not = icmp eq i32 %xtraiter4710, 0
  br i1 %lcmp.mod4711.not, label %.lr.ph94.i.i.prol.loopexit, label %.lr.ph94.i.i.prol

.lr.ph94.i.i.prol:                                ; preds = %.lr.ph94.i.i.preheader4403
  %i.cng = getelementptr inbounds nuw i8, ptr %.11592.i.i.ph, i64 2
  %i.cnh = load i16, ptr %.11592.i.i.ph, align 2, !tbaa !57
  %i.cni = zext i16 %i.cnh to i32
  %i.cnj = shl nuw i32 %i.cni, 16
  %i.cnk = bitcast i32 %i.cnj to float
  %i.cnl = getelementptr inbounds nuw i8, ptr %.11990.i.i.ph, i64 2
  %i.cnm = load i16, ptr %.11990.i.i.ph, align 2, !tbaa !57
  %i.cnn = zext i16 %i.cnm to i32
  %i.cno = shl nuw i32 %i.cnn, 16
  %i.cnp = bitcast i32 %i.cno to float
  %i.cnq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cnk, float %i.cnp)
  %i.cnr = bitcast float %i.cnq to i32
  %i.cns = lshr i32 %i.cnr, 16
  %i.cnt = trunc nuw i32 %i.cns to i16
  %i.cnu = getelementptr inbounds nuw i8, ptr %.11791.i.i.ph, i64 2
  store i16 %i.cnt, ptr %.11791.i.i.ph, align 2, !tbaa !57
  %i.cnv = add nuw nsw i32 %.193.i.i.ph, 1
  br label %.lr.ph94.i.i.prol.loopexit

.lr.ph94.i.i.prol.loopexit:                       ; preds = %.lr.ph94.i.i.prol, %.lr.ph94.i.i.preheader4403
  %.193.i.i.unr = phi i32 [ %.193.i.i.ph, %.lr.ph94.i.i.preheader4403 ], [ %i.cnv, %.lr.ph94.i.i.prol ]
  %.11592.i.i.unr = phi ptr [ %.11592.i.i.ph, %.lr.ph94.i.i.preheader4403 ], [ %i.cng, %.lr.ph94.i.i.prol ]
  %.11791.i.i.unr = phi ptr [ %.11791.i.i.ph, %.lr.ph94.i.i.preheader4403 ], [ %i.cnu, %.lr.ph94.i.i.prol ]
  %.11990.i.i.unr = phi ptr [ %.11990.i.i.ph, %.lr.ph94.i.i.preheader4403 ], [ %i.cnl, %.lr.ph94.i.i.prol ]
  %i.cnw = icmp eq i32 %i.cmb, %.neg4792
  br i1 %i.cnw, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i

.lr.ph.i.i501:                                    ; preds = %bb.dt, %.lr.ph.i.i501
  %.086.i.i = phi i32 [ %i.crd, %.lr.ph.i.i501 ], [ 0, %bb.dt ]
  %.01485.i.i = phi ptr [ %i.cra, %.lr.ph.i.i501 ], [ %0, %bb.dt ] ; 2 uses
  %.01684.i.i = phi ptr [ %i.crc, %.lr.ph.i.i501 ], [ %2, %bb.dt ] ; 2 uses
  %.01883.i.i = phi ptr [ %i.crb, %.lr.ph.i.i501 ], [ %1, %bb.dt ] ; 2 uses
  %i.cnx = load i64, ptr %.01485.i.i, align 1, !tbaa !60
  %i.cny = insertelement <2 x i64> poison, i64 %i.cnx, i64 0
  %i.cnz = bitcast <2 x i64> %i.cny to <8 x i16>
  %i.coa = shufflevector <8 x i16> %i.cnz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cob = bitcast <8 x i16> %i.coa to <4 x float> ; 2 uses
  %i.coc = load i64, ptr %.01883.i.i, align 1, !tbaa !60
  %i.cod = insertelement <2 x i64> poison, i64 %i.coc, i64 0
  %i.coe = bitcast <2 x i64> %i.cod to <8 x i16>
  %i.cof = shufflevector <8 x i16> %i.coe, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cog = bitcast <8 x i16> %i.cof to <4 x float>
  %8 = fcmp fast ole <4 x float> %i.cob, zeroinitializer
  %i.coh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cob, <4 x float> splat (float f0x00800000))
  %i.coi = bitcast <4 x float> %i.coh to <4 x i32> ; 2 uses
  %i.coj = lshr <4 x i32> %i.coi, splat (i32 23)
  %i.cok = and <4 x i32> %i.coi, splat (i32 -2139095041)
  %i.col = or disjoint <4 x i32> %i.cok, splat (i32 1056964608)
  %i.com = bitcast <4 x i32> %i.col to <4 x float> ; 3 uses
  %i.con = add nsw <4 x i32> %i.coj, splat (i32 -127)
  %i.coo = sitofp fast <4 x i32> %i.con to <4 x float> ; 2 uses
  %i.cop = fadd fast <4 x float> %i.coo, splat (float 1.000000e+00)
  %i.coq = fcmp fast olt <4 x float> %i.com, splat (float f0x3F3504F3) ; 2 uses
  %i.cor = select <4 x i1> %i.coq, <4 x float> %i.com, <4 x float> zeroinitializer
  %i.cos = fadd fast <4 x float> %i.com, splat (float -1.000000e+00)
  %i.cot = select fast <4 x i1> %i.coq, <4 x float> %i.coo, <4 x float> %i.cop
  %i.cou = fadd fast <4 x float> %i.cos, %i.cor   ; 12 uses
  %i.cov = fmul fast <4 x float> %i.cou, %i.cou
  %i.cow = fmul fast <4 x float> %i.cou, splat (float f0x3D9021BB)
  %i.cox = fadd fast <4 x float> %i.cow, splat (float f0xBDEBD1B8)
  %i.coy = fmul fast <4 x float> %i.cox, %i.cou
  %i.coz = fadd fast <4 x float> %i.coy, splat (float f0x3DEF251A)
  %i.cpa = fmul fast <4 x float> %i.coz, %i.cou
  %i.cpb = fadd fast <4 x float> %i.cpa, splat (float f0xBDFE5D4F)
  %i.cpc = fmul fast <4 x float> %i.cpb, %i.cou
  %i.cpd = fadd fast <4 x float> %i.cpc, splat (float f0x3E11E9BF)
  %i.cpe = fmul fast <4 x float> %i.cpd, %i.cou
  %i.cpf = fadd fast <4 x float> %i.cpe, splat (float f0xBE2AAE50)
  %i.cpg = fmul fast <4 x float> %i.cpf, %i.cou
  %i.cph = fadd fast <4 x float> %i.cpg, splat (float f0x3E4CCEAC)
  %i.cpi = fmul fast <4 x float> %i.cph, %i.cou
  %i.cpj = fadd fast <4 x float> %i.cpi, splat (float f0xBE7FFFFC)
  %i.cpk = fmul fast <4 x float> %i.cpj, %i.cou
  %i.cpl = fadd fast <4 x float> %i.cpk, splat (float f0x3EAAAAAA)
  %i.cpm = fmul fast <4 x float> %i.cpl, %i.cou
  %reass.mul.i.i = fmul fast <4 x float> %i.cot, splat (float f0x3F317218)
  %reass.add81.i.i = fadd fast <4 x float> %i.cpm, splat (float -5.000000e-01)
  %reass.mul82.i.i = fmul fast <4 x float> %i.cov, %reass.add81.i.i
  %i.cpn = fadd fast <4 x float> %reass.mul.i.i, %i.cou
  %i.cpo = fadd fast <4 x float> %i.cpn, %reass.mul82.i.i
  %9 = select <4 x i1> %8, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cpo
  %i.cpp = fmul fast <4 x float> %9, %i.cog
  %i.cpq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cpp, <4 x float> splat (float f0x42B0C0A5))
  %i.cpr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cpq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cps = fmul fast <4 x float> %i.cpr, splat (float f0x3FB8AA3B)
  %i.cpt = fadd fast <4 x float> %i.cps, splat (float 5.000000e-01) ; 2 uses
  %i.cpu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cpt)
  %i.cpv = sitofp fast <4 x i32> %i.cpu to <4 x float> ; 2 uses
  %i.cpw = fcmp fast olt <4 x float> %i.cpt, %i.cpv
  %i.cpx = select <4 x i1> %i.cpw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cpy = fsub fast <4 x float> %i.cpv, %i.cpx   ; 2 uses
  %i.cpz = fmul fast <4 x float> %i.cpy, splat (float f0x3F317218)
  %i.cqa = fsub fast <4 x float> %i.cpr, %i.cpz   ; 8 uses
  %i.cqb = fmul fast <4 x float> %i.cqa, %i.cqa
  %i.cqc = fmul fast <4 x float> %i.cqa, splat (float f0x39506967)
  %i.cqd = fadd fast <4 x float> %i.cqc, splat (float f0x3AB743CE)
  %i.cqe = fmul fast <4 x float> %i.cqd, %i.cqa
  %i.cqf = fadd fast <4 x float> %i.cqe, splat (float f0x3C088908)
  %i.cqg = fmul fast <4 x float> %i.cqf, %i.cqa
  %i.cqh = fadd fast <4 x float> %i.cqg, splat (float f0x3D2AA9C1)
  %i.cqi = fmul fast <4 x float> %i.cqh, %i.cqa
  %i.cqj = fadd fast <4 x float> %i.cqi, splat (float f0x3E2AAAAA)
  %i.cqk = fmul fast <4 x float> %i.cqj, %i.cqa
  %i.cql = fadd fast <4 x float> %i.cqk, splat (float 5.000000e-01)
  %i.cqm = fmul fast <4 x float> %i.cqb, %i.cql
  %i.cqn = fadd fast <4 x float> %i.cqa, splat (float 1.000000e+00)
  %i.cqo = fadd fast <4 x float> %i.cqn, %i.cqm
  %i.cqp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cpy)
  %i.cqq = shl <4 x i32> %i.cqp, splat (i32 23)
  %i.cqr = add <4 x i32> %i.cqq, splat (i32 1065353216)
  %i.cqs = bitcast <4 x i32> %i.cqr to <4 x float>
  %i.cqt = fmul fast <4 x float> %i.cqo, %i.cqs
  %i.cqu = bitcast <4 x float> %i.cqt to <8 x i16>
  %i.cqv = shufflevector <8 x i16> %i.cqu, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cqw = bitcast <8 x i16> %i.cqv to <4 x float>
  %i.cqx = shufflevector <4 x float> %i.cqw, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cqy = bitcast <4 x float> %i.cqx to <2 x i64>
  %i.cqz = extractelement <2 x i64> %i.cqy, i64 0
  store i64 %i.cqz, ptr %.01684.i.i, align 1, !tbaa !60
  %i.cra = getelementptr inbounds nuw i8, ptr %.01485.i.i, i64 8 ; 2 uses
  %i.crb = getelementptr inbounds nuw i8, ptr %.01883.i.i, i64 8 ; 2 uses
  %i.crc = getelementptr inbounds nuw i8, ptr %.01684.i.i, i64 8 ; 2 uses
  %i.crd = add nuw nsw i32 %.086.i.i, 4           ; 2 uses
  %i.cre = or disjoint i32 %i.crd, 3
  %i.crf = icmp slt i32 %i.cre, %i.cmb
  br i1 %i.crf, label %.lr.ph.i.i501, label %.preheader.loopexit.i.i502, !llvm.loop !506

.lr.ph94.i.i:                                     ; preds = %.lr.ph94.i.i.prol.loopexit, %.lr.ph94.i.i
  %.193.i.i = phi i32 [ %i.csk, %.lr.ph94.i.i ], [ %.193.i.i.unr, %.lr.ph94.i.i.prol.loopexit ]
  %.11592.i.i = phi ptr [ %i.crv, %.lr.ph94.i.i ], [ %.11592.i.i.unr, %.lr.ph94.i.i.prol.loopexit ] ; 3 uses
  %.11791.i.i = phi ptr [ %i.csj, %.lr.ph94.i.i ], [ %.11791.i.i.unr, %.lr.ph94.i.i.prol.loopexit ] ; 3 uses
  %.11990.i.i = phi ptr [ %i.csa, %.lr.ph94.i.i ], [ %.11990.i.i.unr, %.lr.ph94.i.i.prol.loopexit ] ; 3 uses
  %i.crg = getelementptr inbounds nuw i8, ptr %.11592.i.i, i64 2
  %i.crh = load i16, ptr %.11592.i.i, align 2, !tbaa !57
  %i.cri = zext i16 %i.crh to i32
  %i.crj = shl nuw i32 %i.cri, 16
  %i.crk = bitcast i32 %i.crj to float
  %i.crl = getelementptr inbounds nuw i8, ptr %.11990.i.i, i64 2
  %i.crm = load i16, ptr %.11990.i.i, align 2, !tbaa !57
  %i.crn = zext i16 %i.crm to i32
  %i.cro = shl nuw i32 %i.crn, 16
  %i.crp = bitcast i32 %i.cro to float
  %i.crq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.crk, float %i.crp)
  %i.crr = bitcast float %i.crq to i32
  %i.crs = lshr i32 %i.crr, 16
  %i.crt = trunc nuw i32 %i.crs to i16
  %i.cru = getelementptr inbounds nuw i8, ptr %.11791.i.i, i64 2
  store i16 %i.crt, ptr %.11791.i.i, align 2, !tbaa !57
  %i.crv = getelementptr inbounds nuw i8, ptr %.11592.i.i, i64 4
  %i.crw = load i16, ptr %i.crg, align 2, !tbaa !57
  %i.crx = zext i16 %i.crw to i32
  %i.cry = shl nuw i32 %i.crx, 16
  %i.crz = bitcast i32 %i.cry to float
  %i.csa = getelementptr inbounds nuw i8, ptr %.11990.i.i, i64 4
  %i.csb = load i16, ptr %i.crl, align 2, !tbaa !57
  %i.csc = zext i16 %i.csb to i32
  %i.csd = shl nuw i32 %i.csc, 16
  %i.cse = bitcast i32 %i.csd to float
  %i.csf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.crz, float %i.cse)
  %i.csg = bitcast float %i.csf to i32
  %i.csh = lshr i32 %i.csg, 16
  %i.csi = trunc nuw i32 %i.csh to i16
  %i.csj = getelementptr inbounds nuw i8, ptr %.11791.i.i, i64 4
  store i16 %i.csi, ptr %i.cru, align 2, !tbaa !57
  %i.csk = add nuw nsw i32 %.193.i.i, 2           ; 2 uses
  %exitcond.not.i.i500.1 = icmp eq i32 %i.csk, %i.cmb
  br i1 %exitcond.not.i.i500.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i, !llvm.loop !507

bb.du:                                            ; preds = %bb.ds
  %i.csl = icmp eq i32 %4, 1
  br i1 %i.csl, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %bb.du
  %i.csm = load i16, ptr %1, align 2, !tbaa !57
  %i.csn = zext i16 %i.csm to i32
  %i.cso = shl nuw i32 %i.csn, 16
  %i.csp = bitcast i32 %i.cso to float            ; 6 uses
  %i.csq = icmp eq i32 %.sroa.speculated.i478, 4
  br i1 %i.csq, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.csr = load i64, ptr %1, align 2, !tbaa !60
  %i.css = insertelement <2 x i64> poison, i64 %i.csr, i64 0
  %i.cst = bitcast <2 x i64> %i.css to <8 x i16>
  %i.csu = shufflevector <8 x i16> %i.cst, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.csv = bitcast <8 x i16> %i.csu to <4 x float>
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.csw = insertelement <4 x float> poison, float %i.csp, i64 0
  %i.csx = shufflevector <4 x float> %i.csw, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.csy = phi fast <4 x float> [ %i.csv, %bb.dw ], [ %i.csx, %bb.dx ]
  %i.csz = icmp sgt i32 %i.cmb, 3
  br i1 %i.csz, label %.lr.ph.i37.i493, label %.preheader.i34.i488

.preheader.loopexit.i39.i494:                     ; preds = %.lr.ph.i37.i493
  %i.cta = and i32 %i.cmb, 2147483644
  br label %.preheader.i34.i488

.preheader.i34.i488:                              ; preds = %.preheader.loopexit.i39.i494, %bb.dy
  %.017.lcssa.i.i489 = phi ptr [ %2, %bb.dy ], [ %i.cxp, %.preheader.loopexit.i39.i494 ] ; 4 uses
  %.015.lcssa.i.i490 = phi ptr [ %0, %bb.dy ], [ %i.cxo, %.preheader.loopexit.i39.i494 ] ; 4 uses
  %.0.lcssa.i35.i491 = phi i32 [ 0, %bb.dy ], [ %i.cta, %.preheader.loopexit.i39.i494 ] ; 4 uses
  %i.ctb = icmp slt i32 %.0.lcssa.i35.i491, %i.cmb
  br i1 %i.ctb, label %.lr.ph90.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph90.i.i.preheader:                           ; preds = %.preheader.i34.i488
  %.015.lcssa.i.i4903525 = ptrtoaddr ptr %.015.lcssa.i.i490 to i64
  %.017.lcssa.i.i4893524 = ptrtoaddr ptr %.017.lcssa.i.i489 to i64
  %i.ctc = xor i32 %.0.lcssa.i35.i491, -1
  %i.ctd = add i32 %i.cmb, %i.ctc                 ; 2 uses
  %i.cte = zext i32 %i.ctd to i64
  %i.ctf = add nuw nsw i64 %i.cte, 1              ; 2 uses
  %min.iters.check3527 = icmp ult i32 %i.ctd, 7
  %i.ctg = sub i64 %.015.lcssa.i.i4903525, %.017.lcssa.i.i4893524
  %diff.check3529 = icmp ugt i64 %i.ctg, -16
  %or.cond4234 = select i1 %min.iters.check3527, i1 true, i1 %diff.check3529
  br i1 %or.cond4234, label %.lr.ph90.i.i.preheader4408, label %vector.ph3530

vector.ph3530:                                    ; preds = %.lr.ph90.i.i.preheader
  %n.vec3531 = and i64 %i.ctf, 8589934584         ; 4 uses
  %i.cth = trunc i64 %n.vec3531 to i32
  %i.cti = add i32 %.0.lcssa.i35.i491, %i.cth
  %i.ctj = shl nuw nsw i64 %n.vec3531, 1          ; 2 uses
  %i.ctk = getelementptr i8, ptr %.015.lcssa.i.i490, i64 %i.ctj
  %i.ctl = getelementptr i8, ptr %.017.lcssa.i.i489, i64 %i.ctj
  %i.ctm = insertelement <4 x float> poison, float %i.csp, i64 0
  %i.ctn = shufflevector <4 x float> %i.ctm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cto = insertelement <2 x float> poison, float %i.csp, i64 0
  %i.ctp = shufflevector <2 x float> %i.cto, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3532

vector.body3532:                                  ; preds = %vector.body3532, %vector.ph3530
  %index3533 = phi i64 [ 0, %vector.ph3530 ], [ %index.next3537, %vector.body3532 ] ; 2 uses
  %i.ctq = shl i64 %index3533, 1                  ; 2 uses
  %next.gep3534 = getelementptr i8, ptr %.015.lcssa.i.i490, i64 %i.ctq
  %next.gep3535 = getelementptr i8, ptr %.017.lcssa.i.i489, i64 %i.ctq
  %wide.load3536 = load <8 x i16>, ptr %next.gep3534, align 2, !tbaa !57
  %i.ctr = zext <8 x i16> %wide.load3536 to <8 x i32>
  %i.cts = shl nuw <8 x i32> %i.ctr, splat (i32 16)
  %i.ctt = bitcast <8 x i32> %i.cts to <8 x float> ; 2 uses
  %i.ctu = shufflevector <8 x float> %i.ctt, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ctv = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ctu, <4 x float> %i.ctn)
  %i.ctw = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.ctt, <8 x float> %i.ctp)
  %i.ctx = shufflevector <4 x float> %i.ctv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cty = shufflevector <8 x float> %i.ctw, <8 x float> %i.ctx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ctz = bitcast <8 x float> %i.cty to <8 x i32>
  %i.cua = lshr <8 x i32> %i.ctz, splat (i32 16)
  %i.cub = trunc nuw <8 x i32> %i.cua to <8 x i16>
  store <8 x i16> %i.cub, ptr %next.gep3535, align 2, !tbaa !57
  %index.next3537 = add nuw i64 %index3533, 8     ; 2 uses
  %i.cuc = icmp eq i64 %index.next3537, %n.vec3531
  br i1 %i.cuc, label %middle.block3538, label %vector.body3532, !llvm.loop !508

middle.block3538:                                 ; preds = %vector.body3532
  %cmp.n3539 = icmp eq i64 %i.ctf, %n.vec3531
  br i1 %cmp.n3539, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i.preheader4408

.lr.ph90.i.i.preheader4408:                       ; preds = %.lr.ph90.i.i.preheader, %middle.block3538
  %.189.i.i.ph = phi i32 [ %.0.lcssa.i35.i491, %.lr.ph90.i.i.preheader ], [ %i.cti, %middle.block3538 ] ; 4 uses
  %.11688.i.i.ph = phi ptr [ %.015.lcssa.i.i490, %.lr.ph90.i.i.preheader ], [ %i.ctk, %middle.block3538 ] ; 3 uses
  %.11887.i.i.ph = phi ptr [ %.017.lcssa.i.i489, %.lr.ph90.i.i.preheader ], [ %i.ctl, %middle.block3538 ] ; 3 uses
  %i.cud = sub i32 %i.cmb, %.189.i.i.ph
  %.neg4791 = add i32 %.189.i.i.ph, 1
  %xtraiter4708 = and i32 %i.cud, 1
  %lcmp.mod4709.not = icmp eq i32 %xtraiter4708, 0
  br i1 %lcmp.mod4709.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader4408
  %i.cue = getelementptr inbounds nuw i8, ptr %.11688.i.i.ph, i64 2
  %i.cuf = load i16, ptr %.11688.i.i.ph, align 2, !tbaa !57
  %i.cug = zext i16 %i.cuf to i32
  %i.cuh = shl nuw i32 %i.cug, 16
  %i.cui = bitcast i32 %i.cuh to float
  %i.cuj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cui, float %i.csp)
  %i.cuk = bitcast float %i.cuj to i32
  %i.cul = lshr i32 %i.cuk, 16
  %i.cum = trunc nuw i32 %i.cul to i16
  %i.cun = getelementptr inbounds nuw i8, ptr %.11887.i.i.ph, i64 2
  store i16 %i.cum, ptr %.11887.i.i.ph, align 2, !tbaa !57
  %i.cuo = add nuw nsw i32 %.189.i.i.ph, 1
  br label %.lr.ph90.i.i.prol.loopexit

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader4408
  %.189.i.i.unr = phi i32 [ %.189.i.i.ph, %.lr.ph90.i.i.preheader4408 ], [ %i.cuo, %.lr.ph90.i.i.prol ]
  %.11688.i.i.unr = phi ptr [ %.11688.i.i.ph, %.lr.ph90.i.i.preheader4408 ], [ %i.cue, %.lr.ph90.i.i.prol ]
  %.11887.i.i.unr = phi ptr [ %.11887.i.i.ph, %.lr.ph90.i.i.preheader4408 ], [ %i.cun, %.lr.ph90.i.i.prol ]
  %i.cup = icmp eq i32 %i.cmb, %.neg4791
  br i1 %i.cup, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i

.lr.ph.i37.i493:                                  ; preds = %bb.dy, %.lr.ph.i37.i493
  %.084.i.i = phi i32 [ %i.cxq, %.lr.ph.i37.i493 ], [ 0, %bb.dy ]
  %.01583.i.i = phi ptr [ %i.cxo, %.lr.ph.i37.i493 ], [ %0, %bb.dy ] ; 2 uses
  %.01782.i.i = phi ptr [ %i.cxp, %.lr.ph.i37.i493 ], [ %2, %bb.dy ] ; 2 uses
  %i.cuq = load i64, ptr %.01583.i.i, align 1, !tbaa !60
  %i.cur = insertelement <2 x i64> poison, i64 %i.cuq, i64 0
  %i.cus = bitcast <2 x i64> %i.cur to <8 x i16>
  %i.cut = shufflevector <8 x i16> %i.cus, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cuu = bitcast <8 x i16> %i.cut to <4 x float> ; 2 uses
  %10 = fcmp fast ole <4 x float> %i.cuu, zeroinitializer
  %i.cuv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cuu, <4 x float> splat (float f0x00800000))
  %i.cuw = bitcast <4 x float> %i.cuv to <4 x i32> ; 2 uses
  %i.cux = lshr <4 x i32> %i.cuw, splat (i32 23)
  %i.cuy = and <4 x i32> %i.cuw, splat (i32 -2139095041)
  %i.cuz = or disjoint <4 x i32> %i.cuy, splat (i32 1056964608)
  %i.cva = bitcast <4 x i32> %i.cuz to <4 x float> ; 3 uses
  %i.cvb = add nsw <4 x i32> %i.cux, splat (i32 -127)
  %i.cvc = sitofp fast <4 x i32> %i.cvb to <4 x float> ; 2 uses
  %i.cvd = fadd fast <4 x float> %i.cvc, splat (float 1.000000e+00)
  %i.cve = fcmp fast olt <4 x float> %i.cva, splat (float f0x3F3504F3) ; 2 uses
  %i.cvf = select <4 x i1> %i.cve, <4 x float> %i.cva, <4 x float> zeroinitializer
  %i.cvg = fadd fast <4 x float> %i.cva, splat (float -1.000000e+00)
  %i.cvh = select fast <4 x i1> %i.cve, <4 x float> %i.cvc, <4 x float> %i.cvd
  %i.cvi = fadd fast <4 x float> %i.cvg, %i.cvf   ; 12 uses
  %i.cvj = fmul fast <4 x float> %i.cvi, %i.cvi
  %i.cvk = fmul fast <4 x float> %i.cvi, splat (float f0x3D9021BB)
  %i.cvl = fadd fast <4 x float> %i.cvk, splat (float f0xBDEBD1B8)
  %i.cvm = fmul fast <4 x float> %i.cvl, %i.cvi
  %i.cvn = fadd fast <4 x float> %i.cvm, splat (float f0x3DEF251A)
  %i.cvo = fmul fast <4 x float> %i.cvn, %i.cvi
  %i.cvp = fadd fast <4 x float> %i.cvo, splat (float f0xBDFE5D4F)
  %i.cvq = fmul fast <4 x float> %i.cvp, %i.cvi
  %i.cvr = fadd fast <4 x float> %i.cvq, splat (float f0x3E11E9BF)
  %i.cvs = fmul fast <4 x float> %i.cvr, %i.cvi
  %i.cvt = fadd fast <4 x float> %i.cvs, splat (float f0xBE2AAE50)
  %i.cvu = fmul fast <4 x float> %i.cvt, %i.cvi
  %i.cvv = fadd fast <4 x float> %i.cvu, splat (float f0x3E4CCEAC)
  %i.cvw = fmul fast <4 x float> %i.cvv, %i.cvi
  %i.cvx = fadd fast <4 x float> %i.cvw, splat (float f0xBE7FFFFC)
  %i.cvy = fmul fast <4 x float> %i.cvx, %i.cvi
  %i.cvz = fadd fast <4 x float> %i.cvy, splat (float f0x3EAAAAAA)
  %i.cwa = fmul fast <4 x float> %i.cvz, %i.cvi
  %reass.mul.i38.i = fmul fast <4 x float> %i.cvh, splat (float f0x3F317218)
  %reass.add80.i.i = fadd fast <4 x float> %i.cwa, splat (float -5.000000e-01)
  %reass.mul81.i.i = fmul fast <4 x float> %i.cvj, %reass.add80.i.i
  %i.cwb = fadd fast <4 x float> %reass.mul.i38.i, %i.cvi
  %i.cwc = fadd fast <4 x float> %i.cwb, %reass.mul81.i.i
  %11 = select <4 x i1> %10, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cwc
  %i.cwd = fmul fast <4 x float> %11, %i.csy
  %i.cwe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cwd, <4 x float> splat (float f0x42B0C0A5))
  %i.cwf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cwe, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cwg = fmul fast <4 x float> %i.cwf, splat (float f0x3FB8AA3B)
  %i.cwh = fadd fast <4 x float> %i.cwg, splat (float 5.000000e-01) ; 2 uses
  %i.cwi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cwh)
  %i.cwj = sitofp fast <4 x i32> %i.cwi to <4 x float> ; 2 uses
  %i.cwk = fcmp fast olt <4 x float> %i.cwh, %i.cwj
  %i.cwl = select <4 x i1> %i.cwk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cwm = fsub fast <4 x float> %i.cwj, %i.cwl   ; 2 uses
  %i.cwn = fmul fast <4 x float> %i.cwm, splat (float f0x3F317218)
  %i.cwo = fsub fast <4 x float> %i.cwf, %i.cwn   ; 8 uses
  %i.cwp = fmul fast <4 x float> %i.cwo, %i.cwo
  %i.cwq = fmul fast <4 x float> %i.cwo, splat (float f0x39506967)
  %i.cwr = fadd fast <4 x float> %i.cwq, splat (float f0x3AB743CE)
  %i.cws = fmul fast <4 x float> %i.cwr, %i.cwo
  %i.cwt = fadd fast <4 x float> %i.cws, splat (float f0x3C088908)
  %i.cwu = fmul fast <4 x float> %i.cwt, %i.cwo
  %i.cwv = fadd fast <4 x float> %i.cwu, splat (float f0x3D2AA9C1)
  %i.cww = fmul fast <4 x float> %i.cwv, %i.cwo
  %i.cwx = fadd fast <4 x float> %i.cww, splat (float f0x3E2AAAAA)
  %i.cwy = fmul fast <4 x float> %i.cwx, %i.cwo
  %i.cwz = fadd fast <4 x float> %i.cwy, splat (float 5.000000e-01)
  %i.cxa = fmul fast <4 x float> %i.cwp, %i.cwz
  %i.cxb = fadd fast <4 x float> %i.cwo, splat (float 1.000000e+00)
  %i.cxc = fadd fast <4 x float> %i.cxb, %i.cxa
  %i.cxd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cwm)
  %i.cxe = shl <4 x i32> %i.cxd, splat (i32 23)
  %i.cxf = add <4 x i32> %i.cxe, splat (i32 1065353216)
  %i.cxg = bitcast <4 x i32> %i.cxf to <4 x float>
  %i.cxh = fmul fast <4 x float> %i.cxc, %i.cxg
  %i.cxi = bitcast <4 x float> %i.cxh to <8 x i16>
  %i.cxj = shufflevector <8 x i16> %i.cxi, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cxk = bitcast <8 x i16> %i.cxj to <4 x float>
  %i.cxl = shufflevector <4 x float> %i.cxk, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cxm = bitcast <4 x float> %i.cxl to <2 x i64>
  %i.cxn = extractelement <2 x i64> %i.cxm, i64 0
  store i64 %i.cxn, ptr %.01782.i.i, align 1, !tbaa !60
  %i.cxo = getelementptr inbounds nuw i8, ptr %.01583.i.i, i64 8 ; 2 uses
  %i.cxp = getelementptr inbounds nuw i8, ptr %.01782.i.i, i64 8 ; 2 uses
  %i.cxq = add nuw nsw i32 %.084.i.i, 4           ; 2 uses
  %i.cxr = or disjoint i32 %i.cxq, 3
  %i.cxs = icmp slt i32 %i.cxr, %i.cmb
  br i1 %i.cxs, label %.lr.ph.i37.i493, label %.preheader.loopexit.i39.i494, !llvm.loop !509

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i.prol.loopexit, %.lr.ph90.i.i
  %.189.i.i = phi i32 [ %i.cyn, %.lr.ph90.i.i ], [ %.189.i.i.unr, %.lr.ph90.i.i.prol.loopexit ]
  %.11688.i.i = phi ptr [ %i.cyd, %.lr.ph90.i.i ], [ %.11688.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 3 uses
  %.11887.i.i = phi ptr [ %i.cym, %.lr.ph90.i.i ], [ %.11887.i.i.unr, %.lr.ph90.i.i.prol.loopexit ] ; 3 uses
  %i.cxt = getelementptr inbounds nuw i8, ptr %.11688.i.i, i64 2
  %i.cxu = load i16, ptr %.11688.i.i, align 2, !tbaa !57
  %i.cxv = zext i16 %i.cxu to i32
  %i.cxw = shl nuw i32 %i.cxv, 16
  %i.cxx = bitcast i32 %i.cxw to float
  %i.cxy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cxx, float %i.csp)
  %i.cxz = bitcast float %i.cxy to i32
  %i.cya = lshr i32 %i.cxz, 16
  %i.cyb = trunc nuw i32 %i.cya to i16
  %i.cyc = getelementptr inbounds nuw i8, ptr %.11887.i.i, i64 2
  store i16 %i.cyb, ptr %.11887.i.i, align 2, !tbaa !57
  %i.cyd = getelementptr inbounds nuw i8, ptr %.11688.i.i, i64 4
  %i.cye = load i16, ptr %i.cxt, align 2, !tbaa !57
  %i.cyf = zext i16 %i.cye to i32
  %i.cyg = shl nuw i32 %i.cyf, 16
  %i.cyh = bitcast i32 %i.cyg to float
  %i.cyi = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cyh, float %i.csp)
  %i.cyj = bitcast float %i.cyi to i32
  %i.cyk = lshr i32 %i.cyj, 16
  %i.cyl = trunc nuw i32 %i.cyk to i16
  %i.cym = getelementptr inbounds nuw i8, ptr %.11887.i.i, i64 4
  store i16 %i.cyl, ptr %i.cyc, align 2, !tbaa !57
  %i.cyn = add nuw nsw i32 %.189.i.i, 2           ; 2 uses
  %exitcond.not.i36.i492.1 = icmp eq i32 %i.cyn, %i.cmb
  br i1 %exitcond.not.i36.i492.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i, !llvm.loop !510

bb.dz:                                            ; preds = %bb.du
  %i.cyo = icmp eq i32 %3, 1
  br i1 %i.cyo, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  %i.cyp = load i16, ptr %0, align 2, !tbaa !57
  %i.cyq = zext i16 %i.cyp to i32
  %i.cyr = shl nuw i32 %i.cyq, 16
  %i.cys = bitcast i32 %i.cyr to float            ; 6 uses
  %i.cyt = icmp eq i32 %.sroa.speculated.i478, 4
  br i1 %i.cyt, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.cyu = load i64, ptr %0, align 2, !tbaa !60
  %i.cyv = insertelement <2 x i64> poison, i64 %i.cyu, i64 0
  %i.cyw = bitcast <2 x i64> %i.cyv to <8 x i16>
  %i.cyx = shufflevector <8 x i16> %i.cyw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cyy = bitcast <8 x i16> %i.cyx to <4 x float>
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.cyz = insertelement <4 x float> poison, float %i.cys, i64 0
  %i.cza = shufflevector <4 x float> %i.cyz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.czb = phi fast <4 x float> [ %i.cyy, %bb.eb ], [ %i.cza, %bb.ec ] ; 2 uses
  %i.czc = icmp sgt i32 %i.cmb, 3
  br i1 %i.czc, label %.lr.ph.i49.i, label %.preheader.i40.i484

.lr.ph.i49.i:                                     ; preds = %bb.ed
  %12 = fcmp fast ole <4 x float> %i.czb, zeroinitializer
  %i.czd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.czb, <4 x float> splat (float f0x00800000))
  %i.cze = bitcast <4 x float> %i.czd to <4 x i32> ; 2 uses
  %i.czf = lshr <4 x i32> %i.cze, splat (i32 23)
  %i.czg = and <4 x i32> %i.cze, splat (i32 -2139095041)
  %i.czh = or disjoint <4 x i32> %i.czg, splat (i32 1056964608)
  %i.czi = bitcast <4 x i32> %i.czh to <4 x float> ; 3 uses
  %i.czj = add nsw <4 x i32> %i.czf, splat (i32 -127)
  %i.czk = sitofp fast <4 x i32> %i.czj to <4 x float> ; 2 uses
  %i.czl = fadd fast <4 x float> %i.czk, splat (float 1.000000e+00)
  %i.czm = fcmp fast olt <4 x float> %i.czi, splat (float f0x3F3504F3) ; 2 uses
  %i.czn = select <4 x i1> %i.czm, <4 x float> %i.czi, <4 x float> zeroinitializer
  %i.czo = fadd fast <4 x float> %i.czi, splat (float -1.000000e+00)
  %i.czp = select fast <4 x i1> %i.czm, <4 x float> %i.czk, <4 x float> %i.czl
  %i.czq = fadd fast <4 x float> %i.czo, %i.czn   ; 12 uses
  %i.czr = fmul fast <4 x float> %i.czq, %i.czq
  %i.czs = fmul fast <4 x float> %i.czq, splat (float f0x3D9021BB)
  %i.czt = fadd fast <4 x float> %i.czs, splat (float f0xBDEBD1B8)
  %i.czu = fmul fast <4 x float> %i.czt, %i.czq
  %i.czv = fadd fast <4 x float> %i.czu, splat (float f0x3DEF251A)
  %i.czw = fmul fast <4 x float> %i.czv, %i.czq
  %i.czx = fadd fast <4 x float> %i.czw, splat (float f0xBDFE5D4F)
  %i.czy = fmul fast <4 x float> %i.czx, %i.czq
  %i.czz = fadd fast <4 x float> %i.czy, splat (float f0x3E11E9BF)
  %i.daa = fmul fast <4 x float> %i.czz, %i.czq
  %i.dab = fadd fast <4 x float> %i.daa, splat (float f0xBE2AAE50)
  %i.dac = fmul fast <4 x float> %i.dab, %i.czq
  %i.dad = fadd fast <4 x float> %i.dac, splat (float f0x3E4CCEAC)
  %i.dae = fmul fast <4 x float> %i.dad, %i.czq
  %i.daf = fadd fast <4 x float> %i.dae, splat (float f0xBE7FFFFC)
  %i.dag = fmul fast <4 x float> %i.daf, %i.czq
  %i.dah = fadd fast <4 x float> %i.dag, splat (float f0x3EAAAAAA)
  %i.dai = fmul fast <4 x float> %i.dah, %i.czq
  %reass.mul.i50.i = fmul fast <4 x float> %i.czp, splat (float f0x3F317218)
  %reass.add80.i51.i = fadd fast <4 x float> %i.dai, splat (float -5.000000e-01)
  %reass.mul81.i52.i = fmul fast <4 x float> %i.czr, %reass.add80.i51.i
  %i.daj = fadd fast <4 x float> %reass.mul.i50.i, %i.czq
  %i.dak = fadd fast <4 x float> %i.daj, %reass.mul81.i52.i
  %13 = select <4 x i1> %12, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.dak
  br label %bb.ee

.preheader.loopexit.i56.i:                        ; preds = %bb.ee
  %i.dal = and i32 %i.cmb, 2147483644
  br label %.preheader.i40.i484

.preheader.i40.i484:                              ; preds = %.preheader.loopexit.i56.i, %bb.ed
  %.017.lcssa.i41.i485 = phi ptr [ %2, %bb.ed ], [ %i.dds, %.preheader.loopexit.i56.i ] ; 4 uses
  %.015.lcssa.i42.i486 = phi ptr [ %1, %bb.ed ], [ %i.ddr, %.preheader.loopexit.i56.i ] ; 4 uses
  %.0.lcssa.i43.i487 = phi i32 [ 0, %bb.ed ], [ %i.dal, %.preheader.loopexit.i56.i ] ; 4 uses
  %i.dam = icmp slt i32 %.0.lcssa.i43.i487, %i.cmb
  br i1 %i.dam, label %.lr.ph90.i44.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph90.i44.i.preheader:                         ; preds = %.preheader.i40.i484
  %.015.lcssa.i42.i4863502 = ptrtoaddr ptr %.015.lcssa.i42.i486 to i64
  %.017.lcssa.i41.i4853501 = ptrtoaddr ptr %.017.lcssa.i41.i485 to i64
  %i.dan = xor i32 %.0.lcssa.i43.i487, -1
  %i.dao = add i32 %i.cmb, %i.dan                 ; 2 uses
  %i.dap = zext i32 %i.dao to i64
  %i.daq = add nuw nsw i64 %i.dap, 1              ; 2 uses
  %min.iters.check3504 = icmp ult i32 %i.dao, 7
  %i.dar = sub i64 %.015.lcssa.i42.i4863502, %.017.lcssa.i41.i4853501
  %diff.check3506 = icmp ugt i64 %i.dar, -16
  %or.cond4235 = select i1 %min.iters.check3504, i1 true, i1 %diff.check3506
  br i1 %or.cond4235, label %.lr.ph90.i44.i.preheader4412, label %vector.ph3507

vector.ph3507:                                    ; preds = %.lr.ph90.i44.i.preheader
  %n.vec3508 = and i64 %i.daq, 8589934584         ; 4 uses
  %i.das = trunc i64 %n.vec3508 to i32
  %i.dat = add i32 %.0.lcssa.i43.i487, %i.das
  %i.dau = shl nuw nsw i64 %n.vec3508, 1          ; 2 uses
  %i.dav = getelementptr i8, ptr %.015.lcssa.i42.i486, i64 %i.dau
  %i.daw = getelementptr i8, ptr %.017.lcssa.i41.i485, i64 %i.dau
  %i.dax = insertelement <4 x float> poison, float %i.cys, i64 0
  %i.day = shufflevector <4 x float> %i.dax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.daz = insertelement <2 x float> poison, float %i.cys, i64 0
  %i.dba = shufflevector <2 x float> %i.daz, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3509

vector.body3509:                                  ; preds = %vector.body3509, %vector.ph3507
  %index3510 = phi i64 [ 0, %vector.ph3507 ], [ %index.next3514, %vector.body3509 ] ; 2 uses
  %i.dbb = shl i64 %index3510, 1                  ; 2 uses
  %next.gep3511 = getelementptr i8, ptr %.015.lcssa.i42.i486, i64 %i.dbb
  %next.gep3512 = getelementptr i8, ptr %.017.lcssa.i41.i485, i64 %i.dbb
  %wide.load3513 = load <8 x i16>, ptr %next.gep3511, align 2, !tbaa !57
  %i.dbc = zext <8 x i16> %wide.load3513 to <8 x i32>
  %i.dbd = shl nuw <8 x i32> %i.dbc, splat (i32 16)
  %i.dbe = bitcast <8 x i32> %i.dbd to <8 x float> ; 2 uses
  %i.dbf = shufflevector <8 x float> %i.dbe, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dbg = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.day, <4 x float> %i.dbf)
  %i.dbh = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.dba, <8 x float> %i.dbe)
  %i.dbi = shufflevector <4 x float> %i.dbg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbj = shufflevector <8 x float> %i.dbh, <8 x float> %i.dbi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dbk = bitcast <8 x float> %i.dbj to <8 x i32>
  %i.dbl = lshr <8 x i32> %i.dbk, splat (i32 16)
  %i.dbm = trunc nuw <8 x i32> %i.dbl to <8 x i16>
  store <8 x i16> %i.dbm, ptr %next.gep3512, align 2, !tbaa !57
  %index.next3514 = add nuw i64 %index3510, 8     ; 2 uses
  %i.dbn = icmp eq i64 %index.next3514, %n.vec3508
  br i1 %i.dbn, label %middle.block3515, label %vector.body3509, !llvm.loop !511

middle.block3515:                                 ; preds = %vector.body3509
  %cmp.n3516 = icmp eq i64 %i.daq, %n.vec3508
  br i1 %cmp.n3516, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i.preheader4412

.lr.ph90.i44.i.preheader4412:                     ; preds = %.lr.ph90.i44.i.preheader, %middle.block3515
  %.189.i45.i.ph = phi i32 [ %.0.lcssa.i43.i487, %.lr.ph90.i44.i.preheader ], [ %i.dat, %middle.block3515 ] ; 4 uses
  %.11688.i46.i.ph = phi ptr [ %.015.lcssa.i42.i486, %.lr.ph90.i44.i.preheader ], [ %i.dav, %middle.block3515 ] ; 3 uses
  %.11887.i47.i.ph = phi ptr [ %.017.lcssa.i41.i485, %.lr.ph90.i44.i.preheader ], [ %i.daw, %middle.block3515 ] ; 3 uses
  %i.dbo = sub i32 %i.cmb, %.189.i45.i.ph
  %.neg4790 = add i32 %.189.i45.i.ph, 1
  %xtraiter4706 = and i32 %i.dbo, 1
  %lcmp.mod4707.not = icmp eq i32 %xtraiter4706, 0
  br i1 %lcmp.mod4707.not, label %.lr.ph90.i44.i.prol.loopexit, label %.lr.ph90.i44.i.prol

.lr.ph90.i44.i.prol:                              ; preds = %.lr.ph90.i44.i.preheader4412
  %i.dbp = getelementptr inbounds nuw i8, ptr %.11688.i46.i.ph, i64 2
  %i.dbq = load i16, ptr %.11688.i46.i.ph, align 2, !tbaa !57
  %i.dbr = zext i16 %i.dbq to i32
  %i.dbs = shl nuw i32 %i.dbr, 16
  %i.dbt = bitcast i32 %i.dbs to float
  %i.dbu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cys, float %i.dbt)
  %i.dbv = bitcast float %i.dbu to i32
  %i.dbw = lshr i32 %i.dbv, 16
  %i.dbx = trunc nuw i32 %i.dbw to i16
  %i.dby = getelementptr inbounds nuw i8, ptr %.11887.i47.i.ph, i64 2
  store i16 %i.dbx, ptr %.11887.i47.i.ph, align 2, !tbaa !57
  %i.dbz = add nuw nsw i32 %.189.i45.i.ph, 1
  br label %.lr.ph90.i44.i.prol.loopexit

.lr.ph90.i44.i.prol.loopexit:                     ; preds = %.lr.ph90.i44.i.prol, %.lr.ph90.i44.i.preheader4412
  %.189.i45.i.unr = phi i32 [ %.189.i45.i.ph, %.lr.ph90.i44.i.preheader4412 ], [ %i.dbz, %.lr.ph90.i44.i.prol ]
  %.11688.i46.i.unr = phi ptr [ %.11688.i46.i.ph, %.lr.ph90.i44.i.preheader4412 ], [ %i.dbp, %.lr.ph90.i44.i.prol ]
  %.11887.i47.i.unr = phi ptr [ %.11887.i47.i.ph, %.lr.ph90.i44.i.preheader4412 ], [ %i.dby, %.lr.ph90.i44.i.prol ]
  %i.dca = icmp eq i32 %i.cmb, %.neg4790
  br i1 %i.dca, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i

bb.ee:                                            ; preds = %bb.ee, %.lr.ph.i49.i
  %.084.i53.i = phi i32 [ 0, %.lr.ph.i49.i ], [ %i.ddt, %bb.ee ]
  %.01583.i54.i = phi ptr [ %1, %.lr.ph.i49.i ], [ %i.ddr, %bb.ee ] ; 2 uses
  %.01782.i55.i = phi ptr [ %2, %.lr.ph.i49.i ], [ %i.dds, %bb.ee ] ; 2 uses
  %i.dcb = load i64, ptr %.01583.i54.i, align 1, !tbaa !60
  %i.dcc = insertelement <2 x i64> poison, i64 %i.dcb, i64 0
  %i.dcd = bitcast <2 x i64> %i.dcc to <8 x i16>
  %i.dce = shufflevector <8 x i16> %i.dcd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dcf = bitcast <8 x i16> %i.dce to <4 x float>
  %i.dcg = fmul fast <4 x float> %13, %i.dcf
  %i.dch = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dcg, <4 x float> splat (float f0x42B0C0A5))
  %i.dci = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dch, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dcj = fmul fast <4 x float> %i.dci, splat (float f0x3FB8AA3B)
  %i.dck = fadd fast <4 x float> %i.dcj, splat (float 5.000000e-01) ; 2 uses
  %i.dcl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dck)
  %i.dcm = sitofp fast <4 x i32> %i.dcl to <4 x float> ; 2 uses
  %i.dcn = fcmp fast olt <4 x float> %i.dck, %i.dcm
  %i.dco = select <4 x i1> %i.dcn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dcp = fsub fast <4 x float> %i.dcm, %i.dco   ; 2 uses
  %i.dcq = fmul fast <4 x float> %i.dcp, splat (float f0x3F317218)
  %i.dcr = fsub fast <4 x float> %i.dci, %i.dcq   ; 8 uses
  %i.dcs = fmul fast <4 x float> %i.dcr, %i.dcr
  %i.dct = fmul fast <4 x float> %i.dcr, splat (float f0x39506967)
  %i.dcu = fadd fast <4 x float> %i.dct, splat (float f0x3AB743CE)
  %i.dcv = fmul fast <4 x float> %i.dcu, %i.dcr
  %i.dcw = fadd fast <4 x float> %i.dcv, splat (float f0x3C088908)
  %i.dcx = fmul fast <4 x float> %i.dcw, %i.dcr
  %i.dcy = fadd fast <4 x float> %i.dcx, splat (float f0x3D2AA9C1)
  %i.dcz = fmul fast <4 x float> %i.dcy, %i.dcr
  %i.dda = fadd fast <4 x float> %i.dcz, splat (float f0x3E2AAAAA)
  %i.ddb = fmul fast <4 x float> %i.dda, %i.dcr
  %i.ddc = fadd fast <4 x float> %i.ddb, splat (float 5.000000e-01)
  %i.ddd = fmul fast <4 x float> %i.dcs, %i.ddc
  %i.dde = fadd fast <4 x float> %i.dcr, splat (float 1.000000e+00)
  %i.ddf = fadd fast <4 x float> %i.dde, %i.ddd
  %i.ddg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dcp)
  %i.ddh = shl <4 x i32> %i.ddg, splat (i32 23)
  %i.ddi = add <4 x i32> %i.ddh, splat (i32 1065353216)
  %i.ddj = bitcast <4 x i32> %i.ddi to <4 x float>
  %i.ddk = fmul fast <4 x float> %i.ddf, %i.ddj
  %i.ddl = bitcast <4 x float> %i.ddk to <8 x i16>
  %i.ddm = shufflevector <8 x i16> %i.ddl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ddn = bitcast <8 x i16> %i.ddm to <4 x float>
  %i.ddo = shufflevector <4 x float> %i.ddn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ddp = bitcast <4 x float> %i.ddo to <2 x i64>
  %i.ddq = extractelement <2 x i64> %i.ddp, i64 0
  store i64 %i.ddq, ptr %.01782.i55.i, align 1, !tbaa !60
  %i.ddr = getelementptr inbounds nuw i8, ptr %.01583.i54.i, i64 8 ; 2 uses
  %i.dds = getelementptr inbounds nuw i8, ptr %.01782.i55.i, i64 8 ; 2 uses
  %i.ddt = add nuw nsw i32 %.084.i53.i, 4         ; 2 uses
  %i.ddu = or disjoint i32 %i.ddt, 3
  %i.ddv = icmp slt i32 %i.ddu, %i.cmb
  br i1 %i.ddv, label %bb.ee, label %.preheader.loopexit.i56.i, !llvm.loop !512

.lr.ph90.i44.i:                                   ; preds = %.lr.ph90.i44.i.prol.loopexit, %.lr.ph90.i44.i
  %.189.i45.i = phi i32 [ %i.deq, %.lr.ph90.i44.i ], [ %.189.i45.i.unr, %.lr.ph90.i44.i.prol.loopexit ]
  %.11688.i46.i = phi ptr [ %i.deg, %.lr.ph90.i44.i ], [ %.11688.i46.i.unr, %.lr.ph90.i44.i.prol.loopexit ] ; 3 uses
  %.11887.i47.i = phi ptr [ %i.dep, %.lr.ph90.i44.i ], [ %.11887.i47.i.unr, %.lr.ph90.i44.i.prol.loopexit ] ; 3 uses
  %i.ddw = getelementptr inbounds nuw i8, ptr %.11688.i46.i, i64 2
  %i.ddx = load i16, ptr %.11688.i46.i, align 2, !tbaa !57
  %i.ddy = zext i16 %i.ddx to i32
  %i.ddz = shl nuw i32 %i.ddy, 16
  %i.dea = bitcast i32 %i.ddz to float
  %i.deb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cys, float %i.dea)
  %i.dec = bitcast float %i.deb to i32
  %i.ded = lshr i32 %i.dec, 16
  %i.dee = trunc nuw i32 %i.ded to i16
  %i.def = getelementptr inbounds nuw i8, ptr %.11887.i47.i, i64 2
  store i16 %i.dee, ptr %.11887.i47.i, align 2, !tbaa !57
  %i.deg = getelementptr inbounds nuw i8, ptr %.11688.i46.i, i64 4
  %i.deh = load i16, ptr %i.ddw, align 2, !tbaa !57
  %i.dei = zext i16 %i.deh to i32
  %i.dej = shl nuw i32 %i.dei, 16
  %i.dek = bitcast i32 %i.dej to float
  %i.del = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cys, float %i.dek)
  %i.dem = bitcast float %i.del to i32
  %i.den = lshr i32 %i.dem, 16
  %i.deo = trunc nuw i32 %i.den to i16
  %i.dep = getelementptr inbounds nuw i8, ptr %.11887.i47.i, i64 4
  store i16 %i.deo, ptr %i.def, align 2, !tbaa !57
  %i.deq = add nuw nsw i32 %.189.i45.i, 2         ; 2 uses
  %exitcond.not.i48.i.1 = icmp eq i32 %i.deq, %i.cmb
  br i1 %exitcond.not.i48.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i, !llvm.loop !513

bb.ef:                                            ; preds = %bb.dz, %bb.dr
  %i.der = icmp eq i32 %6, 1
  br i1 %i.der, label %bb.eg, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.eg:                                            ; preds = %bb.ef
  %i.des = icmp eq i32 %3, %4
  br i1 %i.des, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.det = icmp eq i32 %.sroa.speculated.i478, 4
  %i.deu = icmp sgt i32 %.sroa.speculated82.i, 0
  %or.cond.i.i482 = and i1 %i.deu, %i.det
  br i1 %or.cond.i.i482, label %.lr.ph.i57.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i57.i:                                     ; preds = %bb.eh, %.lr.ph.i57.i
  %.076.i.i = phi i32 [ %i.dic, %.lr.ph.i57.i ], [ 0, %bb.eh ]
  %.0975.i.i = phi ptr [ %i.dhz, %.lr.ph.i57.i ], [ %0, %bb.eh ] ; 2 uses
  %.01074.i.i = phi ptr [ %i.dia, %.lr.ph.i57.i ], [ %1, %bb.eh ] ; 2 uses
  %.01173.i.i = phi ptr [ %i.dib, %.lr.ph.i57.i ], [ %2, %bb.eh ] ; 2 uses
  %i.dev = load i64, ptr %.0975.i.i, align 1, !tbaa !60
  %i.dew = insertelement <2 x i64> poison, i64 %i.dev, i64 0
  %i.dex = bitcast <2 x i64> %i.dew to <8 x i16>
  %i.dey = shufflevector <8 x i16> %i.dex, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dez = bitcast <8 x i16> %i.dey to <4 x float> ; 2 uses
  %i.dfa = load i16, ptr %.01074.i.i, align 2, !tbaa !57
  %i.dfb = zext i16 %i.dfa to i32
  %i.dfc = shl nuw i32 %i.dfb, 16
  %i.dfd = insertelement <4 x i32> poison, i32 %i.dfc, i64 0
  %i.dfe = bitcast <4 x i32> %i.dfd to <4 x float>
  %i.dff = shufflevector <4 x float> %i.dfe, <4 x float> poison, <4 x i32> zeroinitializer
  %14 = fcmp fast ole <4 x float> %i.dez, zeroinitializer
  %i.dfg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dez, <4 x float> splat (float f0x00800000))
  %i.dfh = bitcast <4 x float> %i.dfg to <4 x i32> ; 2 uses
  %i.dfi = lshr <4 x i32> %i.dfh, splat (i32 23)
  %i.dfj = and <4 x i32> %i.dfh, splat (i32 -2139095041)
  %i.dfk = or disjoint <4 x i32> %i.dfj, splat (i32 1056964608)
  %i.dfl = bitcast <4 x i32> %i.dfk to <4 x float> ; 3 uses
  %i.dfm = add nsw <4 x i32> %i.dfi, splat (i32 -127)
  %i.dfn = sitofp fast <4 x i32> %i.dfm to <4 x float> ; 2 uses
  %i.dfo = fadd fast <4 x float> %i.dfn, splat (float 1.000000e+00)
  %i.dfp = fcmp fast olt <4 x float> %i.dfl, splat (float f0x3F3504F3) ; 2 uses
  %i.dfq = select <4 x i1> %i.dfp, <4 x float> %i.dfl, <4 x float> zeroinitializer
  %i.dfr = fadd fast <4 x float> %i.dfl, splat (float -1.000000e+00)
  %i.dfs = select fast <4 x i1> %i.dfp, <4 x float> %i.dfn, <4 x float> %i.dfo
  %i.dft = fadd fast <4 x float> %i.dfr, %i.dfq   ; 12 uses
  %i.dfu = fmul fast <4 x float> %i.dft, %i.dft
  %i.dfv = fmul fast <4 x float> %i.dft, splat (float f0x3D9021BB)
  %i.dfw = fadd fast <4 x float> %i.dfv, splat (float f0xBDEBD1B8)
  %i.dfx = fmul fast <4 x float> %i.dfw, %i.dft
  %i.dfy = fadd fast <4 x float> %i.dfx, splat (float f0x3DEF251A)
  %i.dfz = fmul fast <4 x float> %i.dfy, %i.dft
  %i.dga = fadd fast <4 x float> %i.dfz, splat (float f0xBDFE5D4F)
  %i.dgb = fmul fast <4 x float> %i.dga, %i.dft
  %i.dgc = fadd fast <4 x float> %i.dgb, splat (float f0x3E11E9BF)
  %i.dgd = fmul fast <4 x float> %i.dgc, %i.dft
  %i.dge = fadd fast <4 x float> %i.dgd, splat (float f0xBE2AAE50)
  %i.dgf = fmul fast <4 x float> %i.dge, %i.dft
  %i.dgg = fadd fast <4 x float> %i.dgf, splat (float f0x3E4CCEAC)
  %i.dgh = fmul fast <4 x float> %i.dgg, %i.dft
  %i.dgi = fadd fast <4 x float> %i.dgh, splat (float f0xBE7FFFFC)
  %i.dgj = fmul fast <4 x float> %i.dgi, %i.dft
  %i.dgk = fadd fast <4 x float> %i.dgj, splat (float f0x3EAAAAAA)
  %i.dgl = fmul fast <4 x float> %i.dgk, %i.dft
  %reass.mul.i58.i = fmul fast <4 x float> %i.dfs, splat (float f0x3F317218)
  %reass.add71.i.i = fadd fast <4 x float> %i.dgl, splat (float -5.000000e-01)
  %reass.mul72.i.i = fmul fast <4 x float> %i.dfu, %reass.add71.i.i
  %i.dgm = fadd fast <4 x float> %reass.mul.i58.i, %i.dft
  %i.dgn = fadd fast <4 x float> %i.dgm, %reass.mul72.i.i
  %15 = select <4 x i1> %14, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.dgn
  %i.dgo = fmul fast <4 x float> %15, %i.dff
  %i.dgp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dgo, <4 x float> splat (float f0x42B0C0A5))
  %i.dgq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dgp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dgr = fmul fast <4 x float> %i.dgq, splat (float f0x3FB8AA3B)
  %i.dgs = fadd fast <4 x float> %i.dgr, splat (float 5.000000e-01) ; 2 uses
  %i.dgt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dgs)
  %i.dgu = sitofp fast <4 x i32> %i.dgt to <4 x float> ; 2 uses
  %i.dgv = fcmp fast olt <4 x float> %i.dgs, %i.dgu
  %i.dgw = select <4 x i1> %i.dgv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dgx = fsub fast <4 x float> %i.dgu, %i.dgw   ; 2 uses
  %i.dgy = fmul fast <4 x float> %i.dgx, splat (float f0x3F317218)
  %i.dgz = fsub fast <4 x float> %i.dgq, %i.dgy   ; 8 uses
  %i.dha = fmul fast <4 x float> %i.dgz, %i.dgz
  %i.dhb = fmul fast <4 x float> %i.dgz, splat (float f0x39506967)
  %i.dhc = fadd fast <4 x float> %i.dhb, splat (float f0x3AB743CE)
  %i.dhd = fmul fast <4 x float> %i.dhc, %i.dgz
  %i.dhe = fadd fast <4 x float> %i.dhd, splat (float f0x3C088908)
  %i.dhf = fmul fast <4 x float> %i.dhe, %i.dgz
  %i.dhg = fadd fast <4 x float> %i.dhf, splat (float f0x3D2AA9C1)
  %i.dhh = fmul fast <4 x float> %i.dhg, %i.dgz
  %i.dhi = fadd fast <4 x float> %i.dhh, splat (float f0x3E2AAAAA)
  %i.dhj = fmul fast <4 x float> %i.dhi, %i.dgz
  %i.dhk = fadd fast <4 x float> %i.dhj, splat (float 5.000000e-01)
  %i.dhl = fmul fast <4 x float> %i.dha, %i.dhk
  %i.dhm = fadd fast <4 x float> %i.dgz, splat (float 1.000000e+00)
  %i.dhn = fadd fast <4 x float> %i.dhm, %i.dhl
  %i.dho = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dgx)
  %i.dhp = shl <4 x i32> %i.dho, splat (i32 23)
  %i.dhq = add <4 x i32> %i.dhp, splat (i32 1065353216)
  %i.dhr = bitcast <4 x i32> %i.dhq to <4 x float>
  %i.dhs = fmul fast <4 x float> %i.dhn, %i.dhr
  %i.dht = bitcast <4 x float> %i.dhs to <8 x i16>
  %i.dhu = shufflevector <8 x i16> %i.dht, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dhv = bitcast <8 x i16> %i.dhu to <4 x float>
  %i.dhw = shufflevector <4 x float> %i.dhv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dhx = bitcast <4 x float> %i.dhw to <2 x i64>
  %i.dhy = extractelement <2 x i64> %i.dhx, i64 0
  store i64 %i.dhy, ptr %.01173.i.i, align 1, !tbaa !60
  %i.dhz = getelementptr inbounds nuw i8, ptr %.0975.i.i, i64 8
  %i.dia = getelementptr inbounds nuw i8, ptr %.01074.i.i, i64 2
  %i.dib = getelementptr inbounds nuw i8, ptr %.01173.i.i, i64 8
  %i.dic = add nuw nsw i32 %.076.i.i, 1           ; 2 uses
  %exitcond.not.i59.i483 = icmp eq i32 %i.dic, %.sroa.speculated82.i
  br i1 %exitcond.not.i59.i483, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i57.i, !llvm.loop !514

bb.ei:                                            ; preds = %bb.eg
  %i.did = icmp eq i32 %4, 1
  br i1 %i.did, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %.val.i480 = load i16, ptr %1, align 2, !tbaa !57
  %i.die = zext i16 %.val.i480 to i32
  %i.dif = shl nuw i32 %i.die, 16
  %i.dig = bitcast i32 %i.dif to float            ; 6 uses
  %i.dih = insertelement <4 x float> poison, float %i.dig, i64 0
  %i.dii = shufflevector <4 x float> %i.dih, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dij = icmp sgt i32 %i.cmb, 3
  br i1 %i.dij, label %.lr.ph.i65.i481, label %.preheader.i60.i

.preheader.loopexit.i67.i:                        ; preds = %.lr.ph.i65.i481
  %i.dik = and i32 %i.cmb, 2147483644
  br label %.preheader.i60.i

.preheader.i60.i:                                 ; preds = %.preheader.loopexit.i67.i, %bb.ej
  %.016.lcssa.i61.i = phi ptr [ %2, %bb.ej ], [ %i.dmz, %.preheader.loopexit.i67.i ] ; 4 uses
  %.014.lcssa.i62.i = phi ptr [ %0, %bb.ej ], [ %i.dmy, %.preheader.loopexit.i67.i ] ; 4 uses
  %.0.lcssa.i63.i = phi i32 [ 0, %bb.ej ], [ %i.dik, %.preheader.loopexit.i67.i ] ; 4 uses
  %i.dil = icmp slt i32 %.0.lcssa.i63.i, %i.cmb
  br i1 %i.dil, label %.lr.ph71.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph71.i.i.preheader:                           ; preds = %.preheader.i60.i
  %.014.lcssa.i62.i3479 = ptrtoaddr ptr %.014.lcssa.i62.i to i64
  %.016.lcssa.i61.i3478 = ptrtoaddr ptr %.016.lcssa.i61.i to i64
  %i.dim = xor i32 %.0.lcssa.i63.i, -1
  %i.din = add i32 %i.cmb, %i.dim                 ; 2 uses
  %i.dio = zext i32 %i.din to i64
  %i.dip = add nuw nsw i64 %i.dio, 1              ; 2 uses
  %min.iters.check3481 = icmp ult i32 %i.din, 7
  %i.diq = sub i64 %.014.lcssa.i62.i3479, %.016.lcssa.i61.i3478
  %diff.check3483 = icmp ugt i64 %i.diq, -16
  %or.cond4236 = select i1 %min.iters.check3481, i1 true, i1 %diff.check3483
  br i1 %or.cond4236, label %.lr.ph71.i.i.preheader4417, label %vector.ph3484

vector.ph3484:                                    ; preds = %.lr.ph71.i.i.preheader
  %n.vec3485 = and i64 %i.dip, 8589934584         ; 4 uses
  %i.dir = trunc i64 %n.vec3485 to i32
  %i.dis = add i32 %.0.lcssa.i63.i, %i.dir
  %i.dit = shl nuw nsw i64 %n.vec3485, 1          ; 2 uses
  %i.diu = getelementptr i8, ptr %.014.lcssa.i62.i, i64 %i.dit
  %i.div = getelementptr i8, ptr %.016.lcssa.i61.i, i64 %i.dit
  %i.diw = insertelement <4 x float> poison, float %i.dig, i64 0
  %i.dix = shufflevector <4 x float> %i.diw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.diy = insertelement <2 x float> poison, float %i.dig, i64 0
  %i.diz = shufflevector <2 x float> %i.diy, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3486

vector.body3486:                                  ; preds = %vector.body3486, %vector.ph3484
  %index3487 = phi i64 [ 0, %vector.ph3484 ], [ %index.next3491, %vector.body3486 ] ; 2 uses
  %i.dja = shl i64 %index3487, 1                  ; 2 uses
  %next.gep3488 = getelementptr i8, ptr %.014.lcssa.i62.i, i64 %i.dja
  %next.gep3489 = getelementptr i8, ptr %.016.lcssa.i61.i, i64 %i.dja
  %wide.load3490 = load <8 x i16>, ptr %next.gep3488, align 2, !tbaa !57
  %i.djb = zext <8 x i16> %wide.load3490 to <8 x i32>
  %i.djc = shl nuw <8 x i32> %i.djb, splat (i32 16)
  %i.djd = bitcast <8 x i32> %i.djc to <8 x float> ; 2 uses
  %i.dje = shufflevector <8 x float> %i.djd, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.djf = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.dje, <4 x float> %i.dix)
  %i.djg = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.djd, <8 x float> %i.diz)
  %i.djh = shufflevector <4 x float> %i.djf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dji = shufflevector <8 x float> %i.djg, <8 x float> %i.djh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.djj = bitcast <8 x float> %i.dji to <8 x i32>
  %i.djk = lshr <8 x i32> %i.djj, splat (i32 16)
  %i.djl = trunc nuw <8 x i32> %i.djk to <8 x i16>
  store <8 x i16> %i.djl, ptr %next.gep3489, align 2, !tbaa !57
  %index.next3491 = add nuw i64 %index3487, 8     ; 2 uses
  %i.djm = icmp eq i64 %index.next3491, %n.vec3485
  br i1 %i.djm, label %middle.block3492, label %vector.body3486, !llvm.loop !515

middle.block3492:                                 ; preds = %vector.body3486
  %cmp.n3493 = icmp eq i64 %i.dip, %n.vec3485
  br i1 %cmp.n3493, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i.preheader4417

.lr.ph71.i.i.preheader4417:                       ; preds = %.lr.ph71.i.i.preheader, %middle.block3492
  %.170.i.i.ph = phi i32 [ %.0.lcssa.i63.i, %.lr.ph71.i.i.preheader ], [ %i.dis, %middle.block3492 ] ; 4 uses
  %.11569.i.i.ph = phi ptr [ %.014.lcssa.i62.i, %.lr.ph71.i.i.preheader ], [ %i.diu, %middle.block3492 ] ; 3 uses
  %.11768.i.i.ph = phi ptr [ %.016.lcssa.i61.i, %.lr.ph71.i.i.preheader ], [ %i.div, %middle.block3492 ] ; 3 uses
  %i.djn = sub i32 %i.cmb, %.170.i.i.ph
  %.neg4789 = add i32 %.170.i.i.ph, 1
  %xtraiter4704 = and i32 %i.djn, 1
  %lcmp.mod4705.not = icmp eq i32 %xtraiter4704, 0
  br i1 %lcmp.mod4705.not, label %.lr.ph71.i.i.prol.loopexit, label %.lr.ph71.i.i.prol

.lr.ph71.i.i.prol:                                ; preds = %.lr.ph71.i.i.preheader4417
  %i.djo = getelementptr inbounds nuw i8, ptr %.11569.i.i.ph, i64 2
  %i.djp = load i16, ptr %.11569.i.i.ph, align 2, !tbaa !57
  %i.djq = zext i16 %i.djp to i32
  %i.djr = shl nuw i32 %i.djq, 16
  %i.djs = bitcast i32 %i.djr to float
  %i.djt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.djs, float %i.dig)
  %i.dju = bitcast float %i.djt to i32
  %i.djv = lshr i32 %i.dju, 16
  %i.djw = trunc nuw i32 %i.djv to i16
  %i.djx = getelementptr inbounds nuw i8, ptr %.11768.i.i.ph, i64 2
  store i16 %i.djw, ptr %.11768.i.i.ph, align 2, !tbaa !57
  %i.djy = add nuw nsw i32 %.170.i.i.ph, 1
  br label %.lr.ph71.i.i.prol.loopexit

.lr.ph71.i.i.prol.loopexit:                       ; preds = %.lr.ph71.i.i.prol, %.lr.ph71.i.i.preheader4417
  %.170.i.i.unr = phi i32 [ %.170.i.i.ph, %.lr.ph71.i.i.preheader4417 ], [ %i.djy, %.lr.ph71.i.i.prol ]
  %.11569.i.i.unr = phi ptr [ %.11569.i.i.ph, %.lr.ph71.i.i.preheader4417 ], [ %i.djo, %.lr.ph71.i.i.prol ]
  %.11768.i.i.unr = phi ptr [ %.11768.i.i.ph, %.lr.ph71.i.i.preheader4417 ], [ %i.djx, %.lr.ph71.i.i.prol ]
  %i.djz = icmp eq i32 %i.cmb, %.neg4789
  br i1 %i.djz, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i

.lr.ph.i65.i481:                                  ; preds = %bb.ej, %.lr.ph.i65.i481
  %.065.i.i = phi i32 [ %i.dna, %.lr.ph.i65.i481 ], [ 0, %bb.ej ]
  %.01464.i.i = phi ptr [ %i.dmy, %.lr.ph.i65.i481 ], [ %0, %bb.ej ] ; 2 uses
  %.01663.i.i = phi ptr [ %i.dmz, %.lr.ph.i65.i481 ], [ %2, %bb.ej ] ; 2 uses
  %i.dka = load i64, ptr %.01464.i.i, align 1, !tbaa !60
  %i.dkb = insertelement <2 x i64> poison, i64 %i.dka, i64 0
  %i.dkc = bitcast <2 x i64> %i.dkb to <8 x i16>
  %i.dkd = shufflevector <8 x i16> %i.dkc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dke = bitcast <8 x i16> %i.dkd to <4 x float> ; 2 uses
  %16 = fcmp fast ole <4 x float> %i.dke, zeroinitializer
  %i.dkf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dke, <4 x float> splat (float f0x00800000))
  %i.dkg = bitcast <4 x float> %i.dkf to <4 x i32> ; 2 uses
  %i.dkh = lshr <4 x i32> %i.dkg, splat (i32 23)
  %i.dki = and <4 x i32> %i.dkg, splat (i32 -2139095041)
  %i.dkj = or disjoint <4 x i32> %i.dki, splat (i32 1056964608)
  %i.dkk = bitcast <4 x i32> %i.dkj to <4 x float> ; 3 uses
  %i.dkl = add nsw <4 x i32> %i.dkh, splat (i32 -127)
  %i.dkm = sitofp fast <4 x i32> %i.dkl to <4 x float> ; 2 uses
  %i.dkn = fadd fast <4 x float> %i.dkm, splat (float 1.000000e+00)
  %i.dko = fcmp fast olt <4 x float> %i.dkk, splat (float f0x3F3504F3) ; 2 uses
  %i.dkp = select <4 x i1> %i.dko, <4 x float> %i.dkk, <4 x float> zeroinitializer
  %i.dkq = fadd fast <4 x float> %i.dkk, splat (float -1.000000e+00)
  %i.dkr = select fast <4 x i1> %i.dko, <4 x float> %i.dkm, <4 x float> %i.dkn
  %i.dks = fadd fast <4 x float> %i.dkq, %i.dkp   ; 12 uses
  %i.dkt = fmul fast <4 x float> %i.dks, %i.dks
  %i.dku = fmul fast <4 x float> %i.dks, splat (float f0x3D9021BB)
  %i.dkv = fadd fast <4 x float> %i.dku, splat (float f0xBDEBD1B8)
  %i.dkw = fmul fast <4 x float> %i.dkv, %i.dks
  %i.dkx = fadd fast <4 x float> %i.dkw, splat (float f0x3DEF251A)
  %i.dky = fmul fast <4 x float> %i.dkx, %i.dks
  %i.dkz = fadd fast <4 x float> %i.dky, splat (float f0xBDFE5D4F)
  %i.dla = fmul fast <4 x float> %i.dkz, %i.dks
  %i.dlb = fadd fast <4 x float> %i.dla, splat (float f0x3E11E9BF)
  %i.dlc = fmul fast <4 x float> %i.dlb, %i.dks
  %i.dld = fadd fast <4 x float> %i.dlc, splat (float f0xBE2AAE50)
  %i.dle = fmul fast <4 x float> %i.dld, %i.dks
  %i.dlf = fadd fast <4 x float> %i.dle, splat (float f0x3E4CCEAC)
  %i.dlg = fmul fast <4 x float> %i.dlf, %i.dks
  %i.dlh = fadd fast <4 x float> %i.dlg, splat (float f0xBE7FFFFC)
  %i.dli = fmul fast <4 x float> %i.dlh, %i.dks
  %i.dlj = fadd fast <4 x float> %i.dli, splat (float f0x3EAAAAAA)
  %i.dlk = fmul fast <4 x float> %i.dlj, %i.dks
  %reass.mul.i66.i = fmul fast <4 x float> %i.dkr, splat (float f0x3F317218)
  %reass.add61.i.i = fadd fast <4 x float> %i.dlk, splat (float -5.000000e-01)
  %reass.mul62.i.i = fmul fast <4 x float> %i.dkt, %reass.add61.i.i
  %i.dll = fadd fast <4 x float> %reass.mul.i66.i, %i.dks
  %i.dlm = fadd fast <4 x float> %i.dll, %reass.mul62.i.i
  %17 = select <4 x i1> %16, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.dlm
  %i.dln = fmul fast <4 x float> %17, %i.dii
  %i.dlo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dln, <4 x float> splat (float f0x42B0C0A5))
  %i.dlp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dlo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dlq = fmul fast <4 x float> %i.dlp, splat (float f0x3FB8AA3B)
  %i.dlr = fadd fast <4 x float> %i.dlq, splat (float 5.000000e-01) ; 2 uses
  %i.dls = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dlr)
  %i.dlt = sitofp fast <4 x i32> %i.dls to <4 x float> ; 2 uses
  %i.dlu = fcmp fast olt <4 x float> %i.dlr, %i.dlt
  %i.dlv = select <4 x i1> %i.dlu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dlw = fsub fast <4 x float> %i.dlt, %i.dlv   ; 2 uses
  %i.dlx = fmul fast <4 x float> %i.dlw, splat (float f0x3F317218)
  %i.dly = fsub fast <4 x float> %i.dlp, %i.dlx   ; 8 uses
  %i.dlz = fmul fast <4 x float> %i.dly, %i.dly
  %i.dma = fmul fast <4 x float> %i.dly, splat (float f0x39506967)
  %i.dmb = fadd fast <4 x float> %i.dma, splat (float f0x3AB743CE)
  %i.dmc = fmul fast <4 x float> %i.dmb, %i.dly
  %i.dmd = fadd fast <4 x float> %i.dmc, splat (float f0x3C088908)
  %i.dme = fmul fast <4 x float> %i.dmd, %i.dly
  %i.dmf = fadd fast <4 x float> %i.dme, splat (float f0x3D2AA9C1)
  %i.dmg = fmul fast <4 x float> %i.dmf, %i.dly
  %i.dmh = fadd fast <4 x float> %i.dmg, splat (float f0x3E2AAAAA)
  %i.dmi = fmul fast <4 x float> %i.dmh, %i.dly
  %i.dmj = fadd fast <4 x float> %i.dmi, splat (float 5.000000e-01)
  %i.dmk = fmul fast <4 x float> %i.dlz, %i.dmj
  %i.dml = fadd fast <4 x float> %i.dly, splat (float 1.000000e+00)
  %i.dmm = fadd fast <4 x float> %i.dml, %i.dmk
  %i.dmn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dlw)
  %i.dmo = shl <4 x i32> %i.dmn, splat (i32 23)
  %i.dmp = add <4 x i32> %i.dmo, splat (i32 1065353216)
  %i.dmq = bitcast <4 x i32> %i.dmp to <4 x float>
  %i.dmr = fmul fast <4 x float> %i.dmm, %i.dmq
  %i.dms = bitcast <4 x float> %i.dmr to <8 x i16>
  %i.dmt = shufflevector <8 x i16> %i.dms, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dmu = bitcast <8 x i16> %i.dmt to <4 x float>
  %i.dmv = shufflevector <4 x float> %i.dmu, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dmw = bitcast <4 x float> %i.dmv to <2 x i64>
  %i.dmx = extractelement <2 x i64> %i.dmw, i64 0
  store i64 %i.dmx, ptr %.01663.i.i, align 1, !tbaa !60
  %i.dmy = getelementptr inbounds nuw i8, ptr %.01464.i.i, i64 8 ; 2 uses
  %i.dmz = getelementptr inbounds nuw i8, ptr %.01663.i.i, i64 8 ; 2 uses
  %i.dna = add nuw nsw i32 %.065.i.i, 4           ; 2 uses
  %i.dnb = or disjoint i32 %i.dna, 3
  %i.dnc = icmp slt i32 %i.dnb, %i.cmb
  br i1 %i.dnc, label %.lr.ph.i65.i481, label %.preheader.loopexit.i67.i, !llvm.loop !516

.lr.ph71.i.i:                                     ; preds = %.lr.ph71.i.i.prol.loopexit, %.lr.ph71.i.i
  %.170.i.i = phi i32 [ %i.dnx, %.lr.ph71.i.i ], [ %.170.i.i.unr, %.lr.ph71.i.i.prol.loopexit ]
  %.11569.i.i = phi ptr [ %i.dnn, %.lr.ph71.i.i ], [ %.11569.i.i.unr, %.lr.ph71.i.i.prol.loopexit ] ; 3 uses
  %.11768.i.i = phi ptr [ %i.dnw, %.lr.ph71.i.i ], [ %.11768.i.i.unr, %.lr.ph71.i.i.prol.loopexit ] ; 3 uses
  %i.dnd = getelementptr inbounds nuw i8, ptr %.11569.i.i, i64 2
  %i.dne = load i16, ptr %.11569.i.i, align 2, !tbaa !57
  %i.dnf = zext i16 %i.dne to i32
  %i.dng = shl nuw i32 %i.dnf, 16
  %i.dnh = bitcast i32 %i.dng to float
  %i.dni = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dnh, float %i.dig)
  %i.dnj = bitcast float %i.dni to i32
  %i.dnk = lshr i32 %i.dnj, 16
  %i.dnl = trunc nuw i32 %i.dnk to i16
  %i.dnm = getelementptr inbounds nuw i8, ptr %.11768.i.i, i64 2
  store i16 %i.dnl, ptr %.11768.i.i, align 2, !tbaa !57
  %i.dnn = getelementptr inbounds nuw i8, ptr %.11569.i.i, i64 4
  %i.dno = load i16, ptr %i.dnd, align 2, !tbaa !57
  %i.dnp = zext i16 %i.dno to i32
  %i.dnq = shl nuw i32 %i.dnp, 16
  %i.dnr = bitcast i32 %i.dnq to float
  %i.dns = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dnr, float %i.dig)
  %i.dnt = bitcast float %i.dns to i32
  %i.dnu = lshr i32 %i.dnt, 16
  %i.dnv = trunc nuw i32 %i.dnu to i16
  %i.dnw = getelementptr inbounds nuw i8, ptr %.11768.i.i, i64 4
  store i16 %i.dnv, ptr %i.dnm, align 2, !tbaa !57
  %i.dnx = add nuw nsw i32 %.170.i.i, 2           ; 2 uses
  %exitcond.not.i64.i.1 = icmp eq i32 %i.dnx, %i.cmb
  br i1 %exitcond.not.i64.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i, !llvm.loop !517

bb.ek:                                            ; preds = %bb.ei
  %i.dny = icmp eq i32 %3, 1
  %i.dnz = icmp eq i32 %.sroa.speculated.i478, 4
  %or.cond.i479 = and i1 %i.dny, %i.dnz
  br i1 %or.cond.i479, label %.lr.ph.i69.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i69.i:                                     ; preds = %bb.ek
  %i.doa = load i64, ptr %0, align 1, !tbaa !60
  %i.dob = insertelement <2 x i64> poison, i64 %i.doa, i64 0
  %i.doc = bitcast <2 x i64> %i.dob to <8 x i16>
  %i.dod = shufflevector <8 x i16> %i.doc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.doe = bitcast <8 x i16> %i.dod to <4 x float> ; 2 uses
  %18 = fcmp fast ole <4 x float> %i.doe, zeroinitializer
  %i.dof = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.doe, <4 x float> splat (float f0x00800000))
  %i.dog = bitcast <4 x float> %i.dof to <4 x i32> ; 2 uses
  %i.doh = lshr <4 x i32> %i.dog, splat (i32 23)
  %i.doi = and <4 x i32> %i.dog, splat (i32 -2139095041)
  %i.doj = or disjoint <4 x i32> %i.doi, splat (i32 1056964608)
  %i.dok = bitcast <4 x i32> %i.doj to <4 x float> ; 3 uses
  %i.dol = add nsw <4 x i32> %i.doh, splat (i32 -127)
  %i.dom = sitofp fast <4 x i32> %i.dol to <4 x float> ; 2 uses
  %i.don = fadd fast <4 x float> %i.dom, splat (float 1.000000e+00)
  %i.doo = fcmp fast olt <4 x float> %i.dok, splat (float f0x3F3504F3) ; 2 uses
  %i.dop = select <4 x i1> %i.doo, <4 x float> %i.dok, <4 x float> zeroinitializer
  %i.doq = fadd fast <4 x float> %i.dok, splat (float -1.000000e+00)
  %i.dor = select fast <4 x i1> %i.doo, <4 x float> %i.dom, <4 x float> %i.don
  %i.dos = fadd fast <4 x float> %i.doq, %i.dop   ; 12 uses
  %i.dot = fmul fast <4 x float> %i.dos, %i.dos
  %i.dou = fmul fast <4 x float> %i.dos, splat (float f0x3D9021BB)
  %i.dov = fadd fast <4 x float> %i.dou, splat (float f0xBDEBD1B8)
  %i.dow = fmul fast <4 x float> %i.dov, %i.dos
  %i.dox = fadd fast <4 x float> %i.dow, splat (float f0x3DEF251A)
  %i.doy = fmul fast <4 x float> %i.dox, %i.dos
  %i.doz = fadd fast <4 x float> %i.doy, splat (float f0xBDFE5D4F)
  %i.dpa = fmul fast <4 x float> %i.doz, %i.dos
  %i.dpb = fadd fast <4 x float> %i.dpa, splat (float f0x3E11E9BF)
  %i.dpc = fmul fast <4 x float> %i.dpb, %i.dos
  %i.dpd = fadd fast <4 x float> %i.dpc, splat (float f0xBE2AAE50)
  %i.dpe = fmul fast <4 x float> %i.dpd, %i.dos
  %i.dpf = fadd fast <4 x float> %i.dpe, splat (float f0x3E4CCEAC)
  %i.dpg = fmul fast <4 x float> %i.dpf, %i.dos
  %i.dph = fadd fast <4 x float> %i.dpg, splat (float f0xBE7FFFFC)
  %i.dpi = fmul fast <4 x float> %i.dph, %i.dos
  %i.dpj = fadd fast <4 x float> %i.dpi, splat (float f0x3EAAAAAA)
  %i.dpk = fmul fast <4 x float> %i.dpj, %i.dos
  %reass.mul.i70.i = fmul fast <4 x float> %i.dor, splat (float f0x3F317218)
  %reass.add69.i.i = fadd fast <4 x float> %i.dpk, splat (float -5.000000e-01)
  %reass.mul70.i.i = fmul fast <4 x float> %i.dot, %reass.add69.i.i
  %i.dpl = fadd fast <4 x float> %reass.mul.i70.i, %i.dos
  %i.dpm = fadd fast <4 x float> %i.dpl, %reass.mul70.i.i
  %19 = select <4 x i1> %18, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.dpm
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %.lr.ph.i69.i
  %.073.i.i = phi i32 [ 0, %.lr.ph.i69.i ], [ %i.drg, %bb.el ]
  %.0872.i.i = phi ptr [ %1, %.lr.ph.i69.i ], [ %i.dre, %bb.el ] ; 2 uses
  %.0971.i.i = phi ptr [ %2, %.lr.ph.i69.i ], [ %i.drf, %bb.el ] ; 2 uses
  %i.dpn = load i16, ptr %.0872.i.i, align 2, !tbaa !57
  %i.dpo = zext i16 %i.dpn to i32
  %i.dpp = shl nuw i32 %i.dpo, 16
  %i.dpq = insertelement <4 x i32> poison, i32 %i.dpp, i64 0
  %i.dpr = bitcast <4 x i32> %i.dpq to <4 x float>
  %i.dps = shufflevector <4 x float> %i.dpr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dpt = fmul fast <4 x float> %i.dps, %19
  %i.dpu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dpt, <4 x float> splat (float f0x42B0C0A5))
  %i.dpv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dpu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dpw = fmul fast <4 x float> %i.dpv, splat (float f0x3FB8AA3B)
  %i.dpx = fadd fast <4 x float> %i.dpw, splat (float 5.000000e-01) ; 2 uses
  %i.dpy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dpx)
  %i.dpz = sitofp fast <4 x i32> %i.dpy to <4 x float> ; 2 uses
  %i.dqa = fcmp fast olt <4 x float> %i.dpx, %i.dpz
  %i.dqb = select <4 x i1> %i.dqa, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dqc = fsub fast <4 x float> %i.dpz, %i.dqb   ; 2 uses
  %i.dqd = fmul fast <4 x float> %i.dqc, splat (float f0x3F317218)
  %i.dqe = fsub fast <4 x float> %i.dpv, %i.dqd   ; 8 uses
  %i.dqf = fmul fast <4 x float> %i.dqe, %i.dqe
  %i.dqg = fmul fast <4 x float> %i.dqe, splat (float f0x39506967)
  %i.dqh = fadd fast <4 x float> %i.dqg, splat (float f0x3AB743CE)
  %i.dqi = fmul fast <4 x float> %i.dqh, %i.dqe
  %i.dqj = fadd fast <4 x float> %i.dqi, splat (float f0x3C088908)
  %i.dqk = fmul fast <4 x float> %i.dqj, %i.dqe
  %i.dql = fadd fast <4 x float> %i.dqk, splat (float f0x3D2AA9C1)
  %i.dqm = fmul fast <4 x float> %i.dql, %i.dqe
  %i.dqn = fadd fast <4 x float> %i.dqm, splat (float f0x3E2AAAAA)
  %i.dqo = fmul fast <4 x float> %i.dqn, %i.dqe
  %i.dqp = fadd fast <4 x float> %i.dqo, splat (float 5.000000e-01)
  %i.dqq = fmul fast <4 x float> %i.dqf, %i.dqp
  %i.dqr = fadd fast <4 x float> %i.dqe, splat (float 1.000000e+00)
  %i.dqs = fadd fast <4 x float> %i.dqr, %i.dqq
  %i.dqt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dqc)
  %i.dqu = shl <4 x i32> %i.dqt, splat (i32 23)
  %i.dqv = add <4 x i32> %i.dqu, splat (i32 1065353216)
  %i.dqw = bitcast <4 x i32> %i.dqv to <4 x float>
  %i.dqx = fmul fast <4 x float> %i.dqs, %i.dqw
  %i.dqy = bitcast <4 x float> %i.dqx to <8 x i16>
  %i.dqz = shufflevector <8 x i16> %i.dqy, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dra = bitcast <8 x i16> %i.dqz to <4 x float>
  %i.drb = shufflevector <4 x float> %i.dra, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.drc = bitcast <4 x float> %i.drb to <2 x i64>
  %i.drd = extractelement <2 x i64> %i.drc, i64 0
  store i64 %i.drd, ptr %.0971.i.i, align 1, !tbaa !60
  %i.dre = getelementptr inbounds nuw i8, ptr %.0872.i.i, i64 2
  %i.drf = getelementptr inbounds nuw i8, ptr %.0971.i.i, i64 8
  %i.drg = add nuw nsw i32 %.073.i.i, 1           ; 2 uses
  %exitcond.not.i71.i = icmp eq i32 %i.drg, %.sroa.speculated82.i
  br i1 %exitcond.not.i71.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.el, !llvm.loop !518

bb.em:                                            ; preds = %bb.a
  %.sroa.speculated74.i503 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i504 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.drh = mul i32 %.sroa.speculated.i504, %.sroa.speculated74.i503 ; 32 uses
  %i.dri = icmp eq i32 %5, %6
  br i1 %i.dri, label %bb.en, label %bb.ez

bb.en:                                            ; preds = %bb.em
  %i.drj = icmp eq i32 %3, %4
  br i1 %i.drj, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.drk = icmp sgt i32 %i.drh, 3
  br i1 %i.drk, label %.lr.ph.i.i572, label %.preheader.i.i561

.preheader.loopexit.i.i577:                       ; preds = %.lr.ph.i.i572
  %i.drl = and i32 %i.drh, 2147483644
  br label %.preheader.i.i561

.preheader.i.i561:                                ; preds = %.preheader.loopexit.i.i577, %bb.eo
  %.018.lcssa.i.i562 = phi ptr [ %1, %bb.eo ], [ %i.dtv, %.preheader.loopexit.i.i577 ] ; 5 uses
  %.016.lcssa.i.i563 = phi ptr [ %2, %bb.eo ], [ %i.dtw, %.preheader.loopexit.i.i577 ] ; 5 uses
  %.014.lcssa.i.i564 = phi ptr [ %0, %bb.eo ], [ %i.dtu, %.preheader.loopexit.i.i577 ] ; 5 uses
  %.0.lcssa.i.i565 = phi i32 [ 0, %bb.eo ], [ %i.drl, %.preheader.loopexit.i.i577 ] ; 5 uses
  %.016.lcssa.i.i5633449 = ptrtoaddr ptr %.016.lcssa.i.i563 to i64 ; 2 uses
  %.014.lcssa.i.i5643450 = ptrtoaddr ptr %.014.lcssa.i.i564 to i64
  %.018.lcssa.i.i5623451 = ptrtoaddr ptr %.018.lcssa.i.i562 to i64
  %i.drm = icmp slt i32 %.0.lcssa.i.i565, %i.drh
  br i1 %i.drm, label %.lr.ph37.i.i566.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph37.i.i566.preheader:                        ; preds = %.preheader.i.i561
  %i.drn = xor i32 %.0.lcssa.i.i565, -1
  %i.dro = add i32 %i.drh, %i.drn                 ; 2 uses
  %i.drp = zext i32 %i.dro to i64
  %i.drq = add nuw nsw i64 %i.drp, 1              ; 2 uses
  %min.iters.check3453 = icmp ult i32 %i.dro, 7
  br i1 %min.iters.check3453, label %.lr.ph37.i.i566.preheader4422, label %vector.memcheck3454

vector.memcheck3454:                              ; preds = %.lr.ph37.i.i566.preheader
  %i.drr = sub i64 %.014.lcssa.i.i5643450, %.016.lcssa.i.i5633449
  %diff.check3455 = icmp ugt i64 %i.drr, -16
  %i.drs = sub i64 %.018.lcssa.i.i5623451, %.016.lcssa.i.i5633449
  %diff.check3456 = icmp ugt i64 %i.drs, -16
  %conflict.rdx3457 = or i1 %diff.check3455, %diff.check3456
  br i1 %conflict.rdx3457, label %.lr.ph37.i.i566.preheader4422, label %vector.ph3458

vector.ph3458:                                    ; preds = %vector.memcheck3454
  %n.vec3459 = and i64 %i.drq, 8589934584         ; 4 uses
  %i.drt = trunc i64 %n.vec3459 to i32
  %i.dru = add i32 %.0.lcssa.i.i565, %i.drt
  %i.drv = shl nuw nsw i64 %n.vec3459, 1          ; 3 uses
  %i.drw = getelementptr i8, ptr %.014.lcssa.i.i564, i64 %i.drv
  %i.drx = getelementptr i8, ptr %.016.lcssa.i.i563, i64 %i.drv
  %i.dry = getelementptr i8, ptr %.018.lcssa.i.i562, i64 %i.drv
  br label %vector.body3460

vector.body3460:                                  ; preds = %vector.body3460, %vector.ph3458
  %index3461 = phi i64 [ 0, %vector.ph3458 ], [ %index.next3467, %vector.body3460 ] ; 2 uses
  %i.drz = shl i64 %index3461, 1                  ; 3 uses
  %next.gep3462 = getelementptr i8, ptr %.014.lcssa.i.i564, i64 %i.drz
  %next.gep3463 = getelementptr i8, ptr %.016.lcssa.i.i563, i64 %i.drz
  %next.gep3464 = getelementptr i8, ptr %.018.lcssa.i.i562, i64 %i.drz
  %wide.load3465 = load <8 x i16>, ptr %next.gep3462, align 2, !tbaa !57
  %i.dsa = zext <8 x i16> %wide.load3465 to <8 x i32>
  %i.dsb = shl nuw <8 x i32> %i.dsa, splat (i32 16)
  %i.dsc = bitcast <8 x i32> %i.dsb to <8 x float>
  %wide.load3466 = load <8 x i16>, ptr %next.gep3464, align 2, !tbaa !57
  %i.dsd = zext <8 x i16> %wide.load3466 to <8 x i32>
  %i.dse = shl nuw <8 x i32> %i.dsd, splat (i32 16)
  %i.dsf = bitcast <8 x i32> %i.dse to <8 x float>
  %i.dsg = fsub fast <8 x float> %i.dsf, %i.dsc
  %i.dsh = bitcast <8 x float> %i.dsg to <8 x i32>
  %i.dsi = lshr <8 x i32> %i.dsh, splat (i32 16)
  %i.dsj = trunc nuw <8 x i32> %i.dsi to <8 x i16>
  store <8 x i16> %i.dsj, ptr %next.gep3463, align 2, !tbaa !57
  %index.next3467 = add nuw i64 %index3461, 8     ; 2 uses
  %i.dsk = icmp eq i64 %index.next3467, %n.vec3459
  br i1 %i.dsk, label %middle.block3468, label %vector.body3460, !llvm.loop !519

middle.block3468:                                 ; preds = %vector.body3460
  %cmp.n3469 = icmp eq i64 %i.drq, %n.vec3459
  br i1 %cmp.n3469, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph37.i.i566.preheader4422

.lr.ph37.i.i566.preheader4422:                    ; preds = %vector.memcheck3454, %.lr.ph37.i.i566.preheader, %middle.block3468
  %.136.i.i567.ph = phi i32 [ %.0.lcssa.i.i565, %vector.memcheck3454 ], [ %.0.lcssa.i.i565, %.lr.ph37.i.i566.preheader ], [ %i.dru, %middle.block3468 ] ; 4 uses
  %.11535.i.i568.ph = phi ptr [ %.014.lcssa.i.i564, %vector.memcheck3454 ], [ %.014.lcssa.i.i564, %.lr.ph37.i.i566.preheader ], [ %i.drw, %middle.block3468 ] ; 3 uses
  %.11734.i.i569.ph = phi ptr [ %.016.lcssa.i.i563, %vector.memcheck3454 ], [ %.016.lcssa.i.i563, %.lr.ph37.i.i566.preheader ], [ %i.drx, %middle.block3468 ] ; 3 uses
  %.11933.i.i570.ph = phi ptr [ %.018.lcssa.i.i562, %vector.memcheck3454 ], [ %.018.lcssa.i.i562, %.lr.ph37.i.i566.preheader ], [ %i.dry, %middle.block3468 ] ; 3 uses
  %i.dsl = sub i32 %i.drh, %.136.i.i567.ph
  %.neg4788 = add i32 %.136.i.i567.ph, 1
  %xtraiter4702 = and i32 %i.dsl, 1
  %lcmp.mod4703.not = icmp eq i32 %xtraiter4702, 0
  br i1 %lcmp.mod4703.not, label %.lr.ph37.i.i566.prol.loopexit, label %.lr.ph37.i.i566.prol

.lr.ph37.i.i566.prol:                             ; preds = %.lr.ph37.i.i566.preheader4422
  %i.dsm = getelementptr inbounds nuw i8, ptr %.11535.i.i568.ph, i64 2
  %i.dsn = load i16, ptr %.11535.i.i568.ph, align 2, !tbaa !57
  %i.dso = zext i16 %i.dsn to i32
  %i.dsp = shl nuw i32 %i.dso, 16
  %i.dsq = bitcast i32 %i.dsp to float
  %i.dsr = getelementptr inbounds nuw i8, ptr %.11933.i.i570.ph, i64 2
  %i.dss = load i16, ptr %.11933.i.i570.ph, align 2, !tbaa !57
  %i.dst = zext i16 %i.dss to i32
  %i.dsu = shl nuw i32 %i.dst, 16
  %i.dsv = bitcast i32 %i.dsu to float
  %i.dsw = fsub fast float %i.dsv, %i.dsq
  %i.dsx = bitcast float %i.dsw to i32
  %i.dsy = lshr i32 %i.dsx, 16
  %i.dsz = trunc nuw i32 %i.dsy to i16
  %i.dta = getelementptr inbounds nuw i8, ptr %.11734.i.i569.ph, i64 2
  store i16 %i.dsz, ptr %.11734.i.i569.ph, align 2, !tbaa !57
  %i.dtb = add nuw nsw i32 %.136.i.i567.ph, 1
  br label %.lr.ph37.i.i566.prol.loopexit

.lr.ph37.i.i566.prol.loopexit:                    ; preds = %.lr.ph37.i.i566.prol, %.lr.ph37.i.i566.preheader4422
  %.136.i.i567.unr = phi i32 [ %.136.i.i567.ph, %.lr.ph37.i.i566.preheader4422 ], [ %i.dtb, %.lr.ph37.i.i566.prol ]
  %.11535.i.i568.unr = phi ptr [ %.11535.i.i568.ph, %.lr.ph37.i.i566.preheader4422 ], [ %i.dsm, %.lr.ph37.i.i566.prol ]
  %.11734.i.i569.unr = phi ptr [ %.11734.i.i569.ph, %.lr.ph37.i.i566.preheader4422 ], [ %i.dta, %.lr.ph37.i.i566.prol ]
  %.11933.i.i570.unr = phi ptr [ %.11933.i.i570.ph, %.lr.ph37.i.i566.preheader4422 ], [ %i.dsr, %.lr.ph37.i.i566.prol ]
  %i.dtc = icmp eq i32 %i.drh, %.neg4788
  br i1 %i.dtc, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph37.i.i566

.lr.ph.i.i572:                                    ; preds = %bb.eo, %.lr.ph.i.i572
  %.029.i.i573 = phi i32 [ %i.dtx, %.lr.ph.i.i572 ], [ 0, %bb.eo ]
  %.01428.i.i574 = phi ptr [ %i.dtu, %.lr.ph.i.i572 ], [ %0, %bb.eo ] ; 2 uses
  %.01627.i.i575 = phi ptr [ %i.dtw, %.lr.ph.i.i572 ], [ %2, %bb.eo ] ; 2 uses
  %.01826.i.i576 = phi ptr [ %i.dtv, %.lr.ph.i.i572 ], [ %1, %bb.eo ] ; 2 uses
  %i.dtd = load i64, ptr %.01428.i.i574, align 1, !tbaa !60
  %i.dte = insertelement <2 x i64> poison, i64 %i.dtd, i64 0
  %i.dtf = bitcast <2 x i64> %i.dte to <8 x i16>
  %i.dtg = shufflevector <8 x i16> %i.dtf, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dth = bitcast <8 x i16> %i.dtg to <4 x float>
  %i.dti = load i64, ptr %.01826.i.i576, align 1, !tbaa !60
  %i.dtj = insertelement <2 x i64> poison, i64 %i.dti, i64 0
  %i.dtk = bitcast <2 x i64> %i.dtj to <8 x i16>
  %i.dtl = shufflevector <8 x i16> %i.dtk, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dtm = bitcast <8 x i16> %i.dtl to <4 x float>
  %i.dtn = fsub fast <4 x float> %i.dtm, %i.dth
  %i.dto = bitcast <4 x float> %i.dtn to <8 x i16>
  %i.dtp = shufflevector <8 x i16> %i.dto, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dtq = bitcast <8 x i16> %i.dtp to <4 x float>
  %i.dtr = shufflevector <4 x float> %i.dtq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dts = bitcast <4 x float> %i.dtr to <2 x i64>
  %i.dtt = extractelement <2 x i64> %i.dts, i64 0
  store i64 %i.dtt, ptr %.01627.i.i575, align 1, !tbaa !60
  %i.dtu = getelementptr inbounds nuw i8, ptr %.01428.i.i574, i64 8 ; 2 uses
  %i.dtv = getelementptr inbounds nuw i8, ptr %.01826.i.i576, i64 8 ; 2 uses
  %i.dtw = getelementptr inbounds nuw i8, ptr %.01627.i.i575, i64 8 ; 2 uses
  %i.dtx = add nuw nsw i32 %.029.i.i573, 4        ; 2 uses
  %i.dty = or disjoint i32 %i.dtx, 3
  %i.dtz = icmp slt i32 %i.dty, %i.drh
  br i1 %i.dtz, label %.lr.ph.i.i572, label %.preheader.loopexit.i.i577, !llvm.loop !520

.lr.ph37.i.i566:                                  ; preds = %.lr.ph37.i.i566.prol.loopexit, %.lr.ph37.i.i566
  %.136.i.i567 = phi i32 [ %i.dve, %.lr.ph37.i.i566 ], [ %.136.i.i567.unr, %.lr.ph37.i.i566.prol.loopexit ]
  %.11535.i.i568 = phi ptr [ %i.dup, %.lr.ph37.i.i566 ], [ %.11535.i.i568.unr, %.lr.ph37.i.i566.prol.loopexit ] ; 3 uses
  %.11734.i.i569 = phi ptr [ %i.dvd, %.lr.ph37.i.i566 ], [ %.11734.i.i569.unr, %.lr.ph37.i.i566.prol.loopexit ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.euw = load i16, ptr %.11512.i.i592, align 2, !tbaa !57
  %i.eux = zext i16 %i.euw to i32
  %i.euy = shl nuw i32 %i.eux, 16
  %i.euz = bitcast i32 %i.euy to float
  %i.eva = fdiv fast float %i.ess, %i.euz
  %i.evb = bitcast float %i.eva to i32
  %i.evc = lshr i32 %i.evb, 16
  %i.evd = trunc nuw i32 %i.evc to i16
  %i.eve = getelementptr inbounds nuw i8, ptr %.11711.i.i593, i64 2
  store i16 %i.evd, ptr %.11711.i.i593, align 2, !tbaa !57
  %i.evf = getelementptr inbounds nuw i8, ptr %.11512.i.i592, i64 4
  %i.evg = load i16, ptr %i.euv, align 2, !tbaa !57
  %i.evh = zext i16 %i.evg to i32
  %i.evi = shl nuw i32 %i.evh, 16
  %i.evj = bitcast i32 %i.evi to float
  %i.evk = fdiv fast float %i.ess, %i.evj
  %i.evl = bitcast float %i.evk to i32
  %i.evm = lshr i32 %i.evl, 16
  %i.evn = trunc nuw i32 %i.evm to i16
  %i.evo = getelementptr inbounds nuw i8, ptr %.11711.i.i593, i64 4
  store i16 %i.evn, ptr %i.eve, align 2, !tbaa !57
  %i.evp = add nuw nsw i32 %.113.i.i591, 2        ; 2 uses
  %exitcond.not.i59.i594.1 = icmp eq i32 %i.evp, %i.egv
  br i1 %exitcond.not.i59.i594.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph14.i.i590, !llvm.loop !545

bb.fy:                                            ; preds = %bb.fw
  %i.evq = icmp eq i32 %3, 1
  %i.evr = icmp eq i32 %.sroa.speculated.i578, 4
  %or.cond.i579 = and i1 %i.evq, %i.evr
  br i1 %or.cond.i579, label %.lr.ph.preheader.i62.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.preheader.i62.i:                           ; preds = %bb.fy
  %i.evs = load i64, ptr %0, align 1, !tbaa !60
  %i.evt = insertelement <2 x i64> poison, i64 %i.evs, i64 0
  %i.evu = bitcast <2 x i64> %i.evt to <8 x i16>
  %i.evv = shufflevector <8 x i16> %i.evu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.evw = bitcast <8 x i16> %i.evv to <4 x float>
  %i.evx = fdiv fast <4 x float> splat (float 1.000000e+00), %i.evw
  br label %.lr.ph.i63.i580

.lr.ph.i63.i580:                                  ; preds = %.lr.ph.i63.i580, %.lr.ph.preheader.i62.i
  %.016.i.i581 = phi i32 [ %i.ewn, %.lr.ph.i63.i580 ], [ 0, %.lr.ph.preheader.i62.i ]
  %.0815.i.i582 = phi ptr [ %i.ewl, %.lr.ph.i63.i580 ], [ %1, %.lr.ph.preheader.i62.i ] ; 2 uses
  %.0914.i.i583 = phi ptr [ %i.ewm, %.lr.ph.i63.i580 ], [ %2, %.lr.ph.preheader.i62.i ] ; 2 uses
  %i.evy = load i16, ptr %.0815.i.i582, align 2, !tbaa !57
  %i.evz = zext i16 %i.evy to i32
  %i.ewa = shl nuw i32 %i.evz, 16
  %i.ewb = insertelement <4 x i32> poison, i32 %i.ewa, i64 0
  %i.ewc = bitcast <4 x i32> %i.ewb to <4 x float>
  %i.ewd = shufflevector <4 x float> %i.ewc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ewe = fmul fast <4 x float> %i.ewd, %i.evx
  %i.ewf = bitcast <4 x float> %i.ewe to <8 x i16>
  %i.ewg = shufflevector <8 x i16> %i.ewf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ewh = bitcast <8 x i16> %i.ewg to <4 x float>
  %i.ewi = shufflevector <4 x float> %i.ewh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ewj = bitcast <4 x float> %i.ewi to <2 x i64>
  %i.ewk = extractelement <2 x i64> %i.ewj, i64 0
  store i64 %i.ewk, ptr %.0914.i.i583, align 1, !tbaa !60
  %i.ewl = getelementptr inbounds nuw i8, ptr %.0815.i.i582, i64 2
  %i.ewm = getelementptr inbounds nuw i8, ptr %.0914.i.i583, i64 8
  %i.ewn = add nuw nsw i32 %.016.i.i581, 1        ; 2 uses
  %exitcond.not.i64.i584 = icmp eq i32 %i.ewn, %.sroa.speculated75.i
  br i1 %exitcond.not.i64.i584, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i63.i580, !llvm.loop !546

bb.fz:                                            ; preds = %bb.a
  %.sroa.speculated81.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i652 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.ewo = mul i32 %.sroa.speculated.i652, %.sroa.speculated81.i ; 32 uses
  %i.ewp = icmp eq i32 %5, %6
  br i1 %i.ewp, label %bb.ga, label %bb.gn

bb.ga:                                            ; preds = %bb.fz
  %i.ewq = icmp eq i32 %3, %4
  br i1 %i.ewq, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ewr = icmp sgt i32 %i.ewo, 3
  br i1 %i.ewr, label %.lr.ph.i.i726, label %.preheader.i.i715

.preheader.loopexit.i.i734:                       ; preds = %.lr.ph.i.i726
  %i.ews = and i32 %i.ewo, 2147483644
  br label %.preheader.i.i715

.preheader.i.i715:                                ; preds = %.preheader.loopexit.i.i734, %bb.gb
  %.018.lcssa.i.i716 = phi ptr [ %1, %bb.gb ], [ %i.fbo, %.preheader.loopexit.i.i734 ] ; 5 uses
  %.016.lcssa.i.i717 = phi ptr [ %2, %bb.gb ], [ %i.fbp, %.preheader.loopexit.i.i734 ] ; 5 uses
  %.014.lcssa.i.i718 = phi ptr [ %0, %bb.gb ], [ %i.fbn, %.preheader.loopexit.i.i734 ] ; 5 uses
  %.0.lcssa.i.i719 = phi i32 [ 0, %bb.gb ], [ %i.ews, %.preheader.loopexit.i.i734 ] ; 5 uses
  %.016.lcssa.i.i7173235 = ptrtoaddr ptr %.016.lcssa.i.i717 to i64 ; 2 uses
  %.014.lcssa.i.i7183236 = ptrtoaddr ptr %.014.lcssa.i.i718 to i64
  %.018.lcssa.i.i7163237 = ptrtoaddr ptr %.018.lcssa.i.i716 to i64
  %i.ewt = icmp slt i32 %.0.lcssa.i.i719, %i.ewo
  br i1 %i.ewt, label %.lr.ph94.i.i720.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph94.i.i720.preheader:                        ; preds = %.preheader.i.i715
  %i.ewu = xor i32 %.0.lcssa.i.i719, -1
  %i.ewv = add i32 %i.ewo, %i.ewu                 ; 2 uses
  %i.eww = zext i32 %i.ewv to i64
  %i.ewx = add nuw nsw i64 %i.eww, 1              ; 2 uses
  %min.iters.check3239 = icmp ult i32 %i.ewv, 7
  br i1 %min.iters.check3239, label %.lr.ph94.i.i720.preheader4460, label %vector.memcheck3240

vector.memcheck3240:                              ; preds = %.lr.ph94.i.i720.preheader
  %i.ewy = sub i64 %.014.lcssa.i.i7183236, %.016.lcssa.i.i7173235
  %diff.check3241 = icmp ugt i64 %i.ewy, -16
  %i.ewz = sub i64 %.018.lcssa.i.i7163237, %.016.lcssa.i.i7173235
  %diff.check3242 = icmp ugt i64 %i.ewz, -16
  %conflict.rdx3243 = or i1 %diff.check3241, %diff.check3242
  br i1 %conflict.rdx3243, label %.lr.ph94.i.i720.preheader4460, label %vector.ph3244

vector.ph3244:                                    ; preds = %vector.memcheck3240
  %n.vec3245 = and i64 %i.ewx, 8589934584         ; 4 uses
  %i.exa = trunc i64 %n.vec3245 to i32
  %i.exb = add i32 %.0.lcssa.i.i719, %i.exa
  %i.exc = shl nuw nsw i64 %n.vec3245, 1          ; 3 uses
  %i.exd = getelementptr i8, ptr %.014.lcssa.i.i718, i64 %i.exc
  %i.exe = getelementptr i8, ptr %.016.lcssa.i.i717, i64 %i.exc
  %i.exf = getelementptr i8, ptr %.018.lcssa.i.i716, i64 %i.exc
  br label %vector.body3246

vector.body3246:                                  ; preds = %vector.body3246, %vector.ph3244
  %index3247 = phi i64 [ 0, %vector.ph3244 ], [ %index.next3253, %vector.body3246 ] ; 2 uses
  %i.exg = shl i64 %index3247, 1                  ; 3 uses
  %next.gep3248 = getelementptr i8, ptr %.014.lcssa.i.i718, i64 %i.exg
  %next.gep3249 = getelementptr i8, ptr %.016.lcssa.i.i717, i64 %i.exg
  %next.gep3250 = getelementptr i8, ptr %.018.lcssa.i.i716, i64 %i.exg
  %wide.load3251 = load <8 x i16>, ptr %next.gep3248, align 2, !tbaa !57
  %i.exh = zext <8 x i16> %wide.load3251 to <8 x i32>
  %i.exi = shl nuw <8 x i32> %i.exh, splat (i32 16)
  %i.exj = bitcast <8 x i32> %i.exi to <8 x float>
  %wide.load3252 = load <8 x i16>, ptr %next.gep3250, align 2, !tbaa !57
  %i.exk = zext <8 x i16> %wide.load3252 to <8 x i32>
  %i.exl = shl nuw <8 x i32> %i.exk, splat (i32 16)
  %i.exm = bitcast <8 x i32> %i.exl to <8 x float>
  %i.exn = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.exm, <8 x float> %i.exj)
  %i.exo = bitcast <8 x float> %i.exn to <8 x i32>
  %i.exp = lshr <8 x i32> %i.exo, splat (i32 16)
  %i.exq = trunc nuw <8 x i32> %i.exp to <8 x i16>
  store <8 x i16> %i.exq, ptr %next.gep3249, align 2, !tbaa !57
  %index.next3253 = add nuw i64 %index3247, 8     ; 2 uses
  %i.exr = icmp eq i64 %index.next3253, %n.vec3245
  br i1 %i.exr, label %middle.block3254, label %vector.body3246, !llvm.loop !547

middle.block3254:                                 ; preds = %vector.body3246
  %cmp.n3255 = icmp eq i64 %i.ewx, %n.vec3245
  br i1 %cmp.n3255, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i720.preheader4460

.lr.ph94.i.i720.preheader4460:                    ; preds = %vector.memcheck3240, %.lr.ph94.i.i720.preheader, %middle.block3254
  %.193.i.i721.ph = phi i32 [ %.0.lcssa.i.i719, %vector.memcheck3240 ], [ %.0.lcssa.i.i719, %.lr.ph94.i.i720.preheader ], [ %i.exb, %middle.block3254 ] ; 4 uses
  %.11592.i.i722.ph = phi ptr [ %.014.lcssa.i.i718, %vector.memcheck3240 ], [ %.014.lcssa.i.i718, %.lr.ph94.i.i720.preheader ], [ %i.exd, %middle.block3254 ] ; 3 uses
  %.11791.i.i723.ph = phi ptr [ %.016.lcssa.i.i717, %vector.memcheck3240 ], [ %.016.lcssa.i.i717, %.lr.ph94.i.i720.preheader ], [ %i.exe, %middle.block3254 ] ; 3 uses
  %.11990.i.i724.ph = phi ptr [ %.018.lcssa.i.i716, %vector.memcheck3240 ], [ %.018.lcssa.i.i716, %.lr.ph94.i.i720.preheader ], [ %i.exf, %middle.block3254 ] ; 3 uses
  %i.exs = sub i32 %i.ewo, %.193.i.i721.ph
  %.neg4780 = add i32 %.193.i.i721.ph, 1
  %xtraiter4686 = and i32 %i.exs, 1
  %lcmp.mod4687.not = icmp eq i32 %xtraiter4686, 0
  br i1 %lcmp.mod4687.not, label %.lr.ph94.i.i720.prol.loopexit, label %.lr.ph94.i.i720.prol

.lr.ph94.i.i720.prol:                             ; preds = %.lr.ph94.i.i720.preheader4460
  %i.ext = getelementptr inbounds nuw i8, ptr %.11592.i.i722.ph, i64 2
  %i.exu = load i16, ptr %.11592.i.i722.ph, align 2, !tbaa !57
  %i.exv = zext i16 %i.exu to i32
  %i.exw = shl nuw i32 %i.exv, 16
  %i.exx = bitcast i32 %i.exw to float
  %i.exy = getelementptr inbounds nuw i8, ptr %.11990.i.i724.ph, i64 2
  %i.exz = load i16, ptr %.11990.i.i724.ph, align 2, !tbaa !57
  %i.eya = zext i16 %i.exz to i32
  %i.eyb = shl nuw i32 %i.eya, 16
  %i.eyc = bitcast i32 %i.eyb to float
  %i.eyd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eyc, float %i.exx)
  %i.eye = bitcast float %i.eyd to i32
  %i.eyf = lshr i32 %i.eye, 16
  %i.eyg = trunc nuw i32 %i.eyf to i16
  %i.eyh = getelementptr inbounds nuw i8, ptr %.11791.i.i723.ph, i64 2
  store i16 %i.eyg, ptr %.11791.i.i723.ph, align 2, !tbaa !57
  %i.eyi = add nuw nsw i32 %.193.i.i721.ph, 1
  br label %.lr.ph94.i.i720.prol.loopexit

.lr.ph94.i.i720.prol.loopexit:                    ; preds = %.lr.ph94.i.i720.prol, %.lr.ph94.i.i720.preheader4460
  %.193.i.i721.unr = phi i32 [ %.193.i.i721.ph, %.lr.ph94.i.i720.preheader4460 ], [ %i.eyi, %.lr.ph94.i.i720.prol ]
  %.11592.i.i722.unr = phi ptr [ %.11592.i.i722.ph, %.lr.ph94.i.i720.preheader4460 ], [ %i.ext, %.lr.ph94.i.i720.prol ]
  %.11791.i.i723.unr = phi ptr [ %.11791.i.i723.ph, %.lr.ph94.i.i720.preheader4460 ], [ %i.eyh, %.lr.ph94.i.i720.prol ]
  %.11990.i.i724.unr = phi ptr [ %.11990.i.i724.ph, %.lr.ph94.i.i720.preheader4460 ], [ %i.exy, %.lr.ph94.i.i720.prol ]
  %i.eyj = icmp eq i32 %i.ewo, %.neg4780
  br i1 %i.eyj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i720

.lr.ph.i.i726:                                    ; preds = %bb.gb, %.lr.ph.i.i726
  %.086.i.i727 = phi i32 [ %i.fbq, %.lr.ph.i.i726 ], [ 0, %bb.gb ]
  %.01485.i.i728 = phi ptr [ %i.fbn, %.lr.ph.i.i726 ], [ %0, %bb.gb ] ; 2 uses
  %.01684.i.i729 = phi ptr [ %i.fbp, %.lr.ph.i.i726 ], [ %2, %bb.gb ] ; 2 uses
  %.01883.i.i730 = phi ptr [ %i.fbo, %.lr.ph.i.i726 ], [ %1, %bb.gb ] ; 2 uses
  %i.eyk = load i64, ptr %.01485.i.i728, align 1, !tbaa !60
  %i.eyl = insertelement <2 x i64> poison, i64 %i.eyk, i64 0
  %i.eym = bitcast <2 x i64> %i.eyl to <8 x i16>
  %i.eyn = shufflevector <8 x i16> %i.eym, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.eyo = bitcast <8 x i16> %i.eyn to <4 x float>
  %i.eyp = load i64, ptr %.01883.i.i730, align 1, !tbaa !60
  %i.eyq = insertelement <2 x i64> poison, i64 %i.eyp, i64 0
  %i.eyr = bitcast <2 x i64> %i.eyq to <8 x i16>
  %i.eys = shufflevector <8 x i16> %i.eyr, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.eyt = bitcast <8 x i16> %i.eys to <4 x float> ; 2 uses
  %20 = fcmp fast ole <4 x float> %i.eyt, zeroinitializer
  %i.eyu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eyt, <4 x float> splat (float f0x00800000))
  %i.eyv = bitcast <4 x float> %i.eyu to <4 x i32> ; 2 uses
  %i.eyw = lshr <4 x i32> %i.eyv, splat (i32 23)
  %i.eyx = and <4 x i32> %i.eyv, splat (i32 -2139095041)
  %i.eyy = or disjoint <4 x i32> %i.eyx, splat (i32 1056964608)
  %i.eyz = bitcast <4 x i32> %i.eyy to <4 x float> ; 3 uses
  %i.eza = add nsw <4 x i32> %i.eyw, splat (i32 -127)
  %i.ezb = sitofp fast <4 x i32> %i.eza to <4 x float> ; 2 uses
  %i.ezc = fadd fast <4 x float> %i.ezb, splat (float 1.000000e+00)
  %i.ezd = fcmp fast olt <4 x float> %i.eyz, splat (float f0x3F3504F3) ; 2 uses
  %i.eze = select <4 x i1> %i.ezd, <4 x float> %i.eyz, <4 x float> zeroinitializer
  %i.ezf = fadd fast <4 x float> %i.eyz, splat (float -1.000000e+00)
  %i.ezg = select fast <4 x i1> %i.ezd, <4 x float> %i.ezb, <4 x float> %i.ezc
  %i.ezh = fadd fast <4 x float> %i.ezf, %i.eze   ; 12 uses
  %i.ezi = fmul fast <4 x float> %i.ezh, %i.ezh
  %i.ezj = fmul fast <4 x float> %i.ezh, splat (float f0x3D9021BB)
  %i.ezk = fadd fast <4 x float> %i.ezj, splat (float f0xBDEBD1B8)
  %i.ezl = fmul fast <4 x float> %i.ezk, %i.ezh
  %i.ezm = fadd fast <4 x float> %i.ezl, splat (float f0x3DEF251A)
  %i.ezn = fmul fast <4 x float> %i.ezm, %i.ezh
  %i.ezo = fadd fast <4 x float> %i.ezn, splat (float f0xBDFE5D4F)
  %i.ezp = fmul fast <4 x float> %i.ezo, %i.ezh
  %i.ezq = fadd fast <4 x float> %i.ezp, splat (float f0x3E11E9BF)
  %i.ezr = fmul fast <4 x float> %i.ezq, %i.ezh
  %i.ezs = fadd fast <4 x float> %i.ezr, splat (float f0xBE2AAE50)
  %i.ezt = fmul fast <4 x float> %i.ezs, %i.ezh
  %i.ezu = fadd fast <4 x float> %i.ezt, splat (float f0x3E4CCEAC)
  %i.ezv = fmul fast <4 x float> %i.ezu, %i.ezh
  %i.ezw = fadd fast <4 x float> %i.ezv, splat (float f0xBE7FFFFC)
  %i.ezx = fmul fast <4 x float> %i.ezw, %i.ezh
  %i.ezy = fadd fast <4 x float> %i.ezx, splat (float f0x3EAAAAAA)
  %i.ezz = fmul fast <4 x float> %i.ezy, %i.ezh
  %reass.mul.i.i731 = fmul fast <4 x float> %i.ezg, splat (float f0x3F317218)
  %reass.add81.i.i732 = fadd fast <4 x float> %i.ezz, splat (float -5.000000e-01)
  %reass.mul82.i.i733 = fmul fast <4 x float> %i.ezi, %reass.add81.i.i732
  %i.faa = fadd fast <4 x float> %reass.mul.i.i731, %i.ezh
  %i.fab = fadd fast <4 x float> %i.faa, %reass.mul82.i.i733
  %21 = select <4 x i1> %20, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.fab
  %i.fac = fmul fast <4 x float> %21, %i.eyo
  %i.fad = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fac, <4 x float> splat (float f0x42B0C0A5))
  %i.fae = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fad, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.faf = fmul fast <4 x float> %i.fae, splat (float f0x3FB8AA3B)
  %i.fag = fadd fast <4 x float> %i.faf, splat (float 5.000000e-01) ; 2 uses
  %i.fah = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fag)
  %i.fai = sitofp fast <4 x i32> %i.fah to <4 x float> ; 2 uses
  %i.faj = fcmp fast olt <4 x float> %i.fag, %i.fai
  %i.fak = select <4 x i1> %i.faj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fal = fsub fast <4 x float> %i.fai, %i.fak   ; 2 uses
  %i.fam = fmul fast <4 x float> %i.fal, splat (float f0x3F317218)
  %i.fan = fsub fast <4 x float> %i.fae, %i.fam   ; 8 uses
  %i.fao = fmul fast <4 x float> %i.fan, %i.fan
  %i.fap = fmul fast <4 x float> %i.fan, splat (float f0x39506967)
  %i.faq = fadd fast <4 x float> %i.fap, splat (float f0x3AB743CE)
  %i.far = fmul fast <4 x float> %i.faq, %i.fan
  %i.fas = fadd fast <4 x float> %i.far, splat (float f0x3C088908)
  %i.fat = fmul fast <4 x float> %i.fas, %i.fan
  %i.fau = fadd fast <4 x float> %i.fat, splat (float f0x3D2AA9C1)
  %i.fav = fmul fast <4 x float> %i.fau, %i.fan
  %i.faw = fadd fast <4 x float> %i.fav, splat (float f0x3E2AAAAA)
  %i.fax = fmul fast <4 x float> %i.faw, %i.fan
  %i.fay = fadd fast <4 x float> %i.fax, splat (float 5.000000e-01)
  %i.faz = fmul fast <4 x float> %i.fao, %i.fay
  %i.fba = fadd fast <4 x float> %i.fan, splat (float 1.000000e+00)
  %i.fbb = fadd fast <4 x float> %i.fba, %i.faz
  %i.fbc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fal)
  %i.fbd = shl <4 x i32> %i.fbc, splat (i32 23)
  %i.fbe = add <4 x i32> %i.fbd, splat (i32 1065353216)
  %i.fbf = bitcast <4 x i32> %i.fbe to <4 x float>
  %i.fbg = fmul fast <4 x float> %i.fbb, %i.fbf
  %i.fbh = bitcast <4 x float> %i.fbg to <8 x i16>
  %i.fbi = shufflevector <8 x i16> %i.fbh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fbj = bitcast <8 x i16> %i.fbi to <4 x float>
  %i.fbk = shufflevector <4 x float> %i.fbj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fbl = bitcast <4 x float> %i.fbk to <2 x i64>
  %i.fbm = extractelement <2 x i64> %i.fbl, i64 0
  store i64 %i.fbm, ptr %.01684.i.i729, align 1, !tbaa !60
  %i.fbn = getelementptr inbounds nuw i8, ptr %.01485.i.i728, i64 8 ; 2 uses
  %i.fbo = getelementptr inbounds nuw i8, ptr %.01883.i.i730, i64 8 ; 2 uses
  %i.fbp = getelementptr inbounds nuw i8, ptr %.01684.i.i729, i64 8 ; 2 uses
  %i.fbq = add nuw nsw i32 %.086.i.i727, 4        ; 2 uses
  %i.fbr = or disjoint i32 %i.fbq, 3
  %i.fbs = icmp slt i32 %i.fbr, %i.ewo
  br i1 %i.fbs, label %.lr.ph.i.i726, label %.preheader.loopexit.i.i734, !llvm.loop !548

.lr.ph94.i.i720:                                  ; preds = %.lr.ph94.i.i720.prol.loopexit, %.lr.ph94.i.i720
  %.193.i.i721 = phi i32 [ %i.fcx, %.lr.ph94.i.i720 ], [ %.193.i.i721.unr, %.lr.ph94.i.i720.prol.loopexit ]
  %.11592.i.i722 = phi ptr [ %i.fci, %.lr.ph94.i.i720 ], [ %.11592.i.i722.unr, %.lr.ph94.i.i720.prol.loopexit ] ; 3 uses
  %.11791.i.i723 = phi ptr [ %i.fcw, %.lr.ph94.i.i720 ], [ %.11791.i.i723.unr, %.lr.ph94.i.i720.prol.loopexit ] ; 3 uses
  %.11990.i.i724 = phi ptr [ %i.fcn, %.lr.ph94.i.i720 ], [ %.11990.i.i724.unr, %.lr.ph94.i.i720.prol.loopexit ] ; 3 uses
  %i.fbt = getelementptr inbounds nuw i8, ptr %.11592.i.i722, i64 2
  %i.fbu = load i16, ptr %.11592.i.i722, align 2, !tbaa !57
  %i.fbv = zext i16 %i.fbu to i32
  %i.fbw = shl nuw i32 %i.fbv, 16
  %i.fbx = bitcast i32 %i.fbw to float
  %i.fby = getelementptr inbounds nuw i8, ptr %.11990.i.i724, i64 2
  %i.fbz = load i16, ptr %.11990.i.i724, align 2, !tbaa !57
  %i.fca = zext i16 %i.fbz to i32
  %i.fcb = shl nuw i32 %i.fca, 16
  %i.fcc = bitcast i32 %i.fcb to float
  %i.fcd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fcc, float %i.fbx)
  %i.fce = bitcast float %i.fcd to i32
  %i.fcf = lshr i32 %i.fce, 16
  %i.fcg = trunc nuw i32 %i.fcf to i16
  %i.fch = getelementptr inbounds nuw i8, ptr %.11791.i.i723, i64 2
  store i16 %i.fcg, ptr %.11791.i.i723, align 2, !tbaa !57
  %i.fci = getelementptr inbounds nuw i8, ptr %.11592.i.i722, i64 4
  %i.fcj = load i16, ptr %i.fbt, align 2, !tbaa !57
  %i.fck = zext i16 %i.fcj to i32
  %i.fcl = shl nuw i32 %i.fck, 16
  %i.fcm = bitcast i32 %i.fcl to float
  %i.fcn = getelementptr inbounds nuw i8, ptr %.11990.i.i724, i64 4
  %i.fco = load i16, ptr %i.fby, align 2, !tbaa !57
  %i.fcp = zext i16 %i.fco to i32
  %i.fcq = shl nuw i32 %i.fcp, 16
  %i.fcr = bitcast i32 %i.fcq to float
  %i.fcs = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fcr, float %i.fcm)
  %i.fct = bitcast float %i.fcs to i32
  %i.fcu = lshr i32 %i.fct, 16
  %i.fcv = trunc nuw i32 %i.fcu to i16
  %i.fcw = getelementptr inbounds nuw i8, ptr %.11791.i.i723, i64 4
  store i16 %i.fcv, ptr %i.fch, align 2, !tbaa !57
  %i.fcx = add nuw nsw i32 %.193.i.i721, 2        ; 2 uses
  %exitcond.not.i.i725.1 = icmp eq i32 %i.fcx, %i.ewo
  br i1 %exitcond.not.i.i725.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i720, !llvm.loop !549

bb.gc:                                            ; preds = %bb.ga
  %i.fcy = icmp eq i32 %4, 1
  br i1 %i.fcy, label %bb.gd, label %bb.gi

bb.gd:                                            ; preds = %bb.gc
  %i.fcz = load i16, ptr %1, align 2, !tbaa !57
  %i.fda = zext i16 %i.fcz to i32
  %i.fdb = shl nuw i32 %i.fda, 16
  %i.fdc = bitcast i32 %i.fdb to float            ; 6 uses
  %i.fdd = icmp eq i32 %.sroa.speculated.i652, 4
  br i1 %i.fdd, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.fde = load i64, ptr %1, align 2, !tbaa !60
  %i.fdf = insertelement <2 x i64> poison, i64 %i.fde, i64 0
  %i.fdg = bitcast <2 x i64> %i.fdf to <8 x i16>
  %i.fdh = shufflevector <8 x i16> %i.fdg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fdi = bitcast <8 x i16> %i.fdh to <4 x float>
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  %i.fdj = insertelement <4 x float> poison, float %i.fdc, i64 0
  %i.fdk = shufflevector <4 x float> %i.fdj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.fdl = phi fast <4 x float> [ %i.fdi, %bb.ge ], [ %i.fdk, %bb.gf ] ; 2 uses
  %i.fdm = icmp sgt i32 %i.ewo, 3
  br i1 %i.fdm, label %.lr.ph.i37.i707, label %.preheader.i34.i698

.lr.ph.i37.i707:                                  ; preds = %bb.gg
  %22 = fcmp fast ole <4 x float> %i.fdl, zeroinitializer
  %i.fdn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fdl, <4 x float> splat (float f0x00800000))
  %i.fdo = bitcast <4 x float> %i.fdn to <4 x i32> ; 2 uses
  %i.fdp = lshr <4 x i32> %i.fdo, splat (i32 23)
  %i.fdq = and <4 x i32> %i.fdo, splat (i32 -2139095041)
  %i.fdr = or disjoint <4 x i32> %i.fdq, splat (i32 1056964608)
  %i.fds = bitcast <4 x i32> %i.fdr to <4 x float> ; 3 uses
  %i.fdt = add nsw <4 x i32> %i.fdp, splat (i32 -127)
  %i.fdu = sitofp fast <4 x i32> %i.fdt to <4 x float> ; 2 uses
  %i.fdv = fadd fast <4 x float> %i.fdu, splat (float 1.000000e+00)
  %i.fdw = fcmp fast olt <4 x float> %i.fds, splat (float f0x3F3504F3) ; 2 uses
  %i.fdx = select <4 x i1> %i.fdw, <4 x float> %i.fds, <4 x float> zeroinitializer
  %i.fdy = fadd fast <4 x float> %i.fds, splat (float -1.000000e+00)
  %i.fdz = select fast <4 x i1> %i.fdw, <4 x float> %i.fdu, <4 x float> %i.fdv
  %i.fea = fadd fast <4 x float> %i.fdy, %i.fdx   ; 12 uses
  %i.feb = fmul fast <4 x float> %i.fea, %i.fea
  %i.fec = fmul fast <4 x float> %i.fea, splat (float f0x3D9021BB)
  %i.fed = fadd fast <4 x float> %i.fec, splat (float f0xBDEBD1B8)
  %i.fee = fmul fast <4 x float> %i.fed, %i.fea
  %i.fef = fadd fast <4 x float> %i.fee, splat (float f0x3DEF251A)
  %i.feg = fmul fast <4 x float> %i.fef, %i.fea
  %i.feh = fadd fast <4 x float> %i.feg, splat (float f0xBDFE5D4F)
  %i.fei = fmul fast <4 x float> %i.feh, %i.fea
  %i.fej = fadd fast <4 x float> %i.fei, splat (float f0x3E11E9BF)
  %i.fek = fmul fast <4 x float> %i.fej, %i.fea
  %i.fel = fadd fast <4 x float> %i.fek, splat (float f0xBE2AAE50)
  %i.fem = fmul fast <4 x float> %i.fel, %i.fea
  %i.fen = fadd fast <4 x float> %i.fem, splat (float f0x3E4CCEAC)
  %i.feo = fmul fast <4 x float> %i.fen, %i.fea
  %i.fep = fadd fast <4 x float> %i.feo, splat (float f0xBE7FFFFC)
  %i.feq = fmul fast <4 x float> %i.fep, %i.fea
  %i.fer = fadd fast <4 x float> %i.feq, splat (float f0x3EAAAAAA)
  %i.fes = fmul fast <4 x float> %i.fer, %i.fea
  %reass.mul.i38.i708 = fmul fast <4 x float> %i.fdz, splat (float f0x3F317218)
  %reass.add80.i.i709 = fadd fast <4 x float> %i.fes, splat (float -5.000000e-01)
  %reass.mul81.i.i710 = fmul fast <4 x float> %i.feb, %reass.add80.i.i709
  %i.fet = fadd fast <4 x float> %reass.mul.i38.i708, %i.fea
  %i.feu = fadd fast <4 x float> %i.fet, %reass.mul81.i.i710
  %23 = select <4 x i1> %22, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.feu
  br label %bb.gh

.preheader.loopexit.i39.i714:                     ; preds = %bb.gh
  %i.fev = and i32 %i.ewo, 2147483644
  br label %.preheader.i34.i698

.preheader.i34.i698:                              ; preds = %.preheader.loopexit.i39.i714, %bb.gg
  %.017.lcssa.i.i699 = phi ptr [ %2, %bb.gg ], [ %i.fic, %.preheader.loopexit.i39.i714 ] ; 4 uses
  %.015.lcssa.i.i700 = phi ptr [ %0, %bb.gg ], [ %i.fib, %.preheader.loopexit.i39.i714 ] ; 4 uses
  %.0.lcssa.i35.i701 = phi i32 [ 0, %bb.gg ], [ %i.fev, %.preheader.loopexit.i39.i714 ] ; 4 uses
  %i.few = icmp slt i32 %.0.lcssa.i35.i701, %i.ewo
  br i1 %i.few, label %.lr.ph90.i.i702.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph90.i.i702.preheader:                        ; preds = %.preheader.i34.i698
  %.015.lcssa.i.i7003210 = ptrtoaddr ptr %.015.lcssa.i.i700 to i64
  %.017.lcssa.i.i6993209 = ptrtoaddr ptr %.017.lcssa.i.i699 to i64
  %i.fex = xor i32 %.0.lcssa.i35.i701, -1
  %i.fey = add i32 %i.ewo, %i.fex                 ; 2 uses
  %i.fez = zext i32 %i.fey to i64
  %i.ffa = add nuw nsw i64 %i.fez, 1              ; 2 uses
  %min.iters.check3212 = icmp ult i32 %i.fey, 7
  %i.ffb = sub i64 %.015.lcssa.i.i7003210, %.017.lcssa.i.i6993209
  %diff.check3214 = icmp ugt i64 %i.ffb, -16
  %or.cond4243 = select i1 %min.iters.check3212, i1 true, i1 %diff.check3214
  br i1 %or.cond4243, label %.lr.ph90.i.i702.preheader4465, label %vector.ph3215

vector.ph3215:                                    ; preds = %.lr.ph90.i.i702.preheader
  %n.vec3216 = and i64 %i.ffa, 8589934584         ; 4 uses
  %i.ffc = trunc i64 %n.vec3216 to i32
  %i.ffd = add i32 %.0.lcssa.i35.i701, %i.ffc
  %i.ffe = shl nuw nsw i64 %n.vec3216, 1          ; 2 uses
  %i.fff = getelementptr i8, ptr %.015.lcssa.i.i700, i64 %i.ffe
  %i.ffg = getelementptr i8, ptr %.017.lcssa.i.i699, i64 %i.ffe
  %i.ffh = insertelement <4 x float> poison, float %i.fdc, i64 0
  %i.ffi = shufflevector <4 x float> %i.ffh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ffj = insertelement <2 x float> poison, float %i.fdc, i64 0
  %i.ffk = shufflevector <2 x float> %i.ffj, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3217

vector.body3217:                                  ; preds = %vector.body3217, %vector.ph3215
  %index3218 = phi i64 [ 0, %vector.ph3215 ], [ %index.next3222, %vector.body3217 ] ; 2 uses
  %i.ffl = shl i64 %index3218, 1                  ; 2 uses
  %next.gep3219 = getelementptr i8, ptr %.015.lcssa.i.i700, i64 %i.ffl
  %next.gep3220 = getelementptr i8, ptr %.017.lcssa.i.i699, i64 %i.ffl
  %wide.load3221 = load <8 x i16>, ptr %next.gep3219, align 2, !tbaa !57
  %i.ffm = zext <8 x i16> %wide.load3221 to <8 x i32>
  %i.ffn = shl nuw <8 x i32> %i.ffm, splat (i32 16)
  %i.ffo = bitcast <8 x i32> %i.ffn to <8 x float> ; 2 uses
  %i.ffp = shufflevector <8 x float> %i.ffo, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ffq = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ffi, <4 x float> %i.ffp)
  %i.ffr = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.ffk, <8 x float> %i.ffo)
  %i.ffs = shufflevector <4 x float> %i.ffq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fft = shufflevector <8 x float> %i.ffr, <8 x float> %i.ffs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ffu = bitcast <8 x float> %i.fft to <8 x i32>
  %i.ffv = lshr <8 x i32> %i.ffu, splat (i32 16)
  %i.ffw = trunc nuw <8 x i32> %i.ffv to <8 x i16>
  store <8 x i16> %i.ffw, ptr %next.gep3220, align 2, !tbaa !57
  %index.next3222 = add nuw i64 %index3218, 8     ; 2 uses
  %i.ffx = icmp eq i64 %index.next3222, %n.vec3216
  br i1 %i.ffx, label %middle.block3223, label %vector.body3217, !llvm.loop !550

middle.block3223:                                 ; preds = %vector.body3217
  %cmp.n3224 = icmp eq i64 %i.ffa, %n.vec3216
  br i1 %cmp.n3224, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i702.preheader4465

.lr.ph90.i.i702.preheader4465:                    ; preds = %.lr.ph90.i.i702.preheader, %middle.block3223
  %.189.i.i703.ph = phi i32 [ %.0.lcssa.i35.i701, %.lr.ph90.i.i702.preheader ], [ %i.ffd, %middle.block3223 ] ; 4 uses
  %.11688.i.i704.ph = phi ptr [ %.015.lcssa.i.i700, %.lr.ph90.i.i702.preheader ], [ %i.fff, %middle.block3223 ] ; 3 uses
  %.11887.i.i705.ph = phi ptr [ %.017.lcssa.i.i699, %.lr.ph90.i.i702.preheader ], [ %i.ffg, %middle.block3223 ] ; 3 uses
  %i.ffy = sub i32 %i.ewo, %.189.i.i703.ph
  %.neg4779 = add i32 %.189.i.i703.ph, 1
  %xtraiter4684 = and i32 %i.ffy, 1
  %lcmp.mod4685.not = icmp eq i32 %xtraiter4684, 0
  br i1 %lcmp.mod4685.not, label %.lr.ph90.i.i702.prol.loopexit, label %.lr.ph90.i.i702.prol

.lr.ph90.i.i702.prol:                             ; preds = %.lr.ph90.i.i702.preheader4465
  %i.ffz = getelementptr inbounds nuw i8, ptr %.11688.i.i704.ph, i64 2
  %i.fga = load i16, ptr %.11688.i.i704.ph, align 2, !tbaa !57
  %i.fgb = zext i16 %i.fga to i32
  %i.fgc = shl nuw i32 %i.fgb, 16
  %i.fgd = bitcast i32 %i.fgc to float
  %i.fge = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fdc, float %i.fgd)
  %i.fgf = bitcast float %i.fge to i32
  %i.fgg = lshr i32 %i.fgf, 16
  %i.fgh = trunc nuw i32 %i.fgg to i16
  %i.fgi = getelementptr inbounds nuw i8, ptr %.11887.i.i705.ph, i64 2
  store i16 %i.fgh, ptr %.11887.i.i705.ph, align 2, !tbaa !57
  %i.fgj = add nuw nsw i32 %.189.i.i703.ph, 1
  br label %.lr.ph90.i.i702.prol.loopexit

.lr.ph90.i.i702.prol.loopexit:                    ; preds = %.lr.ph90.i.i702.prol, %.lr.ph90.i.i702.preheader4465
  %.189.i.i703.unr = phi i32 [ %.189.i.i703.ph, %.lr.ph90.i.i702.preheader4465 ], [ %i.fgj, %.lr.ph90.i.i702.prol ]
  %.11688.i.i704.unr = phi ptr [ %.11688.i.i704.ph, %.lr.ph90.i.i702.preheader4465 ], [ %i.ffz, %.lr.ph90.i.i702.prol ]
  %.11887.i.i705.unr = phi ptr [ %.11887.i.i705.ph, %.lr.ph90.i.i702.preheader4465 ], [ %i.fgi, %.lr.ph90.i.i702.prol ]
  %i.fgk = icmp eq i32 %i.ewo, %.neg4779
  br i1 %i.fgk, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i702

bb.gh:                                            ; preds = %bb.gh, %.lr.ph.i37.i707
  %.084.i.i711 = phi i32 [ 0, %.lr.ph.i37.i707 ], [ %i.fid, %bb.gh ]
  %.01583.i.i712 = phi ptr [ %0, %.lr.ph.i37.i707 ], [ %i.fib, %bb.gh ] ; 2 uses
  %.01782.i.i713 = phi ptr [ %2, %.lr.ph.i37.i707 ], [ %i.fic, %bb.gh ] ; 2 uses
  %i.fgl = load i64, ptr %.01583.i.i712, align 1, !tbaa !60
  %i.fgm = insertelement <2 x i64> poison, i64 %i.fgl, i64 0
  %i.fgn = bitcast <2 x i64> %i.fgm to <8 x i16>
  %i.fgo = shufflevector <8 x i16> %i.fgn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fgp = bitcast <8 x i16> %i.fgo to <4 x float>
  %i.fgq = fmul fast <4 x float> %23, %i.fgp
  %i.fgr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fgq, <4 x float> splat (float f0x42B0C0A5))
  %i.fgs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fgr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fgt = fmul fast <4 x float> %i.fgs, splat (float f0x3FB8AA3B)
  %i.fgu = fadd fast <4 x float> %i.fgt, splat (float 5.000000e-01) ; 2 uses
  %i.fgv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fgu)
  %i.fgw = sitofp fast <4 x i32> %i.fgv to <4 x float> ; 2 uses
  %i.fgx = fcmp fast olt <4 x float> %i.fgu, %i.fgw
  %i.fgy = select <4 x i1> %i.fgx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fgz = fsub fast <4 x float> %i.fgw, %i.fgy   ; 2 uses
  %i.fha = fmul fast <4 x float> %i.fgz, splat (float f0x3F317218)
  %i.fhb = fsub fast <4 x float> %i.fgs, %i.fha   ; 8 uses
  %i.fhc = fmul fast <4 x float> %i.fhb, %i.fhb
  %i.fhd = fmul fast <4 x float> %i.fhb, splat (float f0x39506967)
  %i.fhe = fadd fast <4 x float> %i.fhd, splat (float f0x3AB743CE)
  %i.fhf = fmul fast <4 x float> %i.fhe, %i.fhb
  %i.fhg = fadd fast <4 x float> %i.fhf, splat (float f0x3C088908)
  %i.fhh = fmul fast <4 x float> %i.fhg, %i.fhb
  %i.fhi = fadd fast <4 x float> %i.fhh, splat (float f0x3D2AA9C1)
  %i.fhj = fmul fast <4 x float> %i.fhi, %i.fhb
  %i.fhk = fadd fast <4 x float> %i.fhj, splat (float f0x3E2AAAAA)
  %i.fhl = fmul fast <4 x float> %i.fhk, %i.fhb
  %i.fhm = fadd fast <4 x float> %i.fhl, splat (float 5.000000e-01)
  %i.fhn = fmul fast <4 x float> %i.fhc, %i.fhm
  %i.fho = fadd fast <4 x float> %i.fhb, splat (float 1.000000e+00)
  %i.fhp = fadd fast <4 x float> %i.fho, %i.fhn
  %i.fhq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fgz)
  %i.fhr = shl <4 x i32> %i.fhq, splat (i32 23)
  %i.fhs = add <4 x i32> %i.fhr, splat (i32 1065353216)
  %i.fht = bitcast <4 x i32> %i.fhs to <4 x float>
  %i.fhu = fmul fast <4 x float> %i.fhp, %i.fht
  %i.fhv = bitcast <4 x float> %i.fhu to <8 x i16>
  %i.fhw = shufflevector <8 x i16> %i.fhv, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fhx = bitcast <8 x i16> %i.fhw to <4 x float>
  %i.fhy = shufflevector <4 x float> %i.fhx, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fhz = bitcast <4 x float> %i.fhy to <2 x i64>
  %i.fia = extractelement <2 x i64> %i.fhz, i64 0
  store i64 %i.fia, ptr %.01782.i.i713, align 1, !tbaa !60
  %i.fib = getelementptr inbounds nuw i8, ptr %.01583.i.i712, i64 8 ; 2 uses
  %i.fic = getelementptr inbounds nuw i8, ptr %.01782.i.i713, i64 8 ; 2 uses
  %i.fid = add nuw nsw i32 %.084.i.i711, 4        ; 2 uses
  %i.fie = or disjoint i32 %i.fid, 3
  %i.fif = icmp slt i32 %i.fie, %i.ewo
  br i1 %i.fif, label %bb.gh, label %.preheader.loopexit.i39.i714, !llvm.loop !551

.lr.ph90.i.i702:                                  ; preds = %.lr.ph90.i.i702.prol.loopexit, %.lr.ph90.i.i702
  %.189.i.i703 = phi i32 [ %i.fja, %.lr.ph90.i.i702 ], [ %.189.i.i703.unr, %.lr.ph90.i.i702.prol.loopexit ]
  %.11688.i.i704 = phi ptr [ %i.fiq, %.lr.ph90.i.i702 ], [ %.11688.i.i704.unr, %.lr.ph90.i.i702.prol.loopexit ] ; 3 uses
  %.11887.i.i705 = phi ptr [ %i.fiz, %.lr.ph90.i.i702 ], [ %.11887.i.i705.unr, %.lr.ph90.i.i702.prol.loopexit ] ; 3 uses
  %i.fig = getelementptr inbounds nuw i8, ptr %.11688.i.i704, i64 2
  %i.fih = load i16, ptr %.11688.i.i704, align 2, !tbaa !57
  %i.fii = zext i16 %i.fih to i32
  %i.fij = shl nuw i32 %i.fii, 16
  %i.fik = bitcast i32 %i.fij to float
  %i.fil = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fdc, float %i.fik)
  %i.fim = bitcast float %i.fil to i32
  %i.fin = lshr i32 %i.fim, 16
  %i.fio = trunc nuw i32 %i.fin to i16
  %i.fip = getelementptr inbounds nuw i8, ptr %.11887.i.i705, i64 2
  store i16 %i.fio, ptr %.11887.i.i705, align 2, !tbaa !57
  %i.fiq = getelementptr inbounds nuw i8, ptr %.11688.i.i704, i64 4
  %i.fir = load i16, ptr %i.fig, align 2, !tbaa !57
  %i.fis = zext i16 %i.fir to i32
  %i.fit = shl nuw i32 %i.fis, 16
  %i.fiu = bitcast i32 %i.fit to float
  %i.fiv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fdc, float %i.fiu)
  %i.fiw = bitcast float %i.fiv to i32
  %i.fix = lshr i32 %i.fiw, 16
  %i.fiy = trunc nuw i32 %i.fix to i16
  %i.fiz = getelementptr inbounds nuw i8, ptr %.11887.i.i705, i64 4
  store i16 %i.fiy, ptr %i.fip, align 2, !tbaa !57
  %i.fja = add nuw nsw i32 %.189.i.i703, 2        ; 2 uses
  %exitcond.not.i36.i706.1 = icmp eq i32 %i.fja, %i.ewo
  br i1 %exitcond.not.i36.i706.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i702, !llvm.loop !552

bb.gi:                                            ; preds = %bb.gc
  %i.fjb = icmp eq i32 %3, 1
  br i1 %i.fjb, label %bb.gj, label %bb.gn

bb.gj:                                            ; preds = %bb.gi
  %i.fjc = load i16, ptr %0, align 2, !tbaa !57
  %i.fjd = zext i16 %i.fjc to i32
  %i.fje = shl nuw i32 %i.fjd, 16
  %i.fjf = bitcast i32 %i.fje to float            ; 6 uses
  %i.fjg = icmp eq i32 %.sroa.speculated.i652, 4
  br i1 %i.fjg, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.fjh = load i64, ptr %0, align 2, !tbaa !60
  %i.fji = insertelement <2 x i64> poison, i64 %i.fjh, i64 0
  %i.fjj = bitcast <2 x i64> %i.fji to <8 x i16>
  %i.fjk = shufflevector <8 x i16> %i.fjj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fjl = bitcast <8 x i16> %i.fjk to <4 x float>
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  %i.fjm = insertelement <4 x float> poison, float %i.fjf, i64 0
  %i.fjn = shufflevector <4 x float> %i.fjm, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.fjo = phi fast <4 x float> [ %i.fjl, %bb.gk ], [ %i.fjn, %bb.gl ]
  %i.fjp = icmp sgt i32 %i.ewo, 3
  br i1 %i.fjp, label %.lr.ph.i49.i696, label %.preheader.i40.i687

.preheader.loopexit.i56.i697:                     ; preds = %.lr.ph.i49.i696
  %i.fjq = and i32 %i.ewo, 2147483644
  br label %.preheader.i40.i687

.preheader.i40.i687:                              ; preds = %.preheader.loopexit.i56.i697, %bb.gm
  %.017.lcssa.i41.i688 = phi ptr [ %2, %bb.gm ], [ %i.fof, %.preheader.loopexit.i56.i697 ] ; 4 uses
  %.015.lcssa.i42.i689 = phi ptr [ %1, %bb.gm ], [ %i.foe, %.preheader.loopexit.i56.i697 ] ; 4 uses
  %.0.lcssa.i43.i690 = phi i32 [ 0, %bb.gm ], [ %i.fjq, %.preheader.loopexit.i56.i697 ] ; 4 uses
  %i.fjr = icmp slt i32 %.0.lcssa.i43.i690, %i.ewo
  br i1 %i.fjr, label %.lr.ph90.i44.i691.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph90.i44.i691.preheader:                      ; preds = %.preheader.i40.i687
  %.015.lcssa.i42.i6893187 = ptrtoaddr ptr %.015.lcssa.i42.i689 to i64
  %.017.lcssa.i41.i6883186 = ptrtoaddr ptr %.017.lcssa.i41.i688 to i64
  %i.fjs = xor i32 %.0.lcssa.i43.i690, -1
  %i.fjt = add i32 %i.ewo, %i.fjs                 ; 2 uses
  %i.fju = zext i32 %i.fjt to i64
  %i.fjv = add nuw nsw i64 %i.fju, 1              ; 2 uses
  %min.iters.check3189 = icmp ult i32 %i.fjt, 7
  %i.fjw = sub i64 %.015.lcssa.i42.i6893187, %.017.lcssa.i41.i6883186
  %diff.check3191 = icmp ugt i64 %i.fjw, -16
  %or.cond4244 = select i1 %min.iters.check3189, i1 true, i1 %diff.check3191
  br i1 %or.cond4244, label %.lr.ph90.i44.i691.preheader4469, label %vector.ph3192

vector.ph3192:                                    ; preds = %.lr.ph90.i44.i691.preheader
  %n.vec3193 = and i64 %i.fjv, 8589934584         ; 4 uses
  %i.fjx = trunc i64 %n.vec3193 to i32
  %i.fjy = add i32 %.0.lcssa.i43.i690, %i.fjx
  %i.fjz = shl nuw nsw i64 %n.vec3193, 1          ; 2 uses
  %i.fka = getelementptr i8, ptr %.015.lcssa.i42.i689, i64 %i.fjz
  %i.fkb = getelementptr i8, ptr %.017.lcssa.i41.i688, i64 %i.fjz
  %i.fkc = insertelement <4 x float> poison, float %i.fjf, i64 0
  %i.fkd = shufflevector <4 x float> %i.fkc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fke = insertelement <2 x float> poison, float %i.fjf, i64 0
  %i.fkf = shufflevector <2 x float> %i.fke, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3194

vector.body3194:                                  ; preds = %vector.body3194, %vector.ph3192
  %index3195 = phi i64 [ 0, %vector.ph3192 ], [ %index.next3199, %vector.body3194 ] ; 2 uses
  %i.fkg = shl i64 %index3195, 1                  ; 2 uses
  %next.gep3196 = getelementptr i8, ptr %.015.lcssa.i42.i689, i64 %i.fkg
  %next.gep3197 = getelementptr i8, ptr %.017.lcssa.i41.i688, i64 %i.fkg
  %wide.load3198 = load <8 x i16>, ptr %next.gep3196, align 2, !tbaa !57
  %i.fkh = zext <8 x i16> %wide.load3198 to <8 x i32>
  %i.fki = shl nuw <8 x i32> %i.fkh, splat (i32 16)
  %i.fkj = bitcast <8 x i32> %i.fki to <8 x float> ; 2 uses
  %i.fkk = shufflevector <8 x float> %i.fkj, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fkl = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.fkk, <4 x float> %i.fkd)
  %i.fkm = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.fkj, <8 x float> %i.fkf)
  %i.fkn = shufflevector <4 x float> %i.fkl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fko = shufflevector <8 x float> %i.fkm, <8 x float> %i.fkn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fkp = bitcast <8 x float> %i.fko to <8 x i32>
  %i.fkq = lshr <8 x i32> %i.fkp, splat (i32 16)
  %i.fkr = trunc nuw <8 x i32> %i.fkq to <8 x i16>
  store <8 x i16> %i.fkr, ptr %next.gep3197, align 2, !tbaa !57
  %index.next3199 = add nuw i64 %index3195, 8     ; 2 uses
  %i.fks = icmp eq i64 %index.next3199, %n.vec3193
  br i1 %i.fks, label %middle.block3200, label %vector.body3194, !llvm.loop !553

middle.block3200:                                 ; preds = %vector.body3194
  %cmp.n3201 = icmp eq i64 %i.fjv, %n.vec3193
  br i1 %cmp.n3201, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i691.preheader4469

.lr.ph90.i44.i691.preheader4469:                  ; preds = %.lr.ph90.i44.i691.preheader, %middle.block3200
  %.189.i45.i692.ph = phi i32 [ %.0.lcssa.i43.i690, %.lr.ph90.i44.i691.preheader ], [ %i.fjy, %middle.block3200 ] ; 4 uses
  %.11688.i46.i693.ph = phi ptr [ %.015.lcssa.i42.i689, %.lr.ph90.i44.i691.preheader ], [ %i.fka, %middle.block3200 ] ; 3 uses
  %.11887.i47.i694.ph = phi ptr [ %.017.lcssa.i41.i688, %.lr.ph90.i44.i691.preheader ], [ %i.fkb, %middle.block3200 ] ; 3 uses
  %i.fkt = sub i32 %i.ewo, %.189.i45.i692.ph
  %.neg4778 = add i32 %.189.i45.i692.ph, 1
  %xtraiter4682 = and i32 %i.fkt, 1
  %lcmp.mod4683.not = icmp eq i32 %xtraiter4682, 0
  br i1 %lcmp.mod4683.not, label %.lr.ph90.i44.i691.prol.loopexit, label %.lr.ph90.i44.i691.prol

.lr.ph90.i44.i691.prol:                           ; preds = %.lr.ph90.i44.i691.preheader4469
  %i.fku = getelementptr inbounds nuw i8, ptr %.11688.i46.i693.ph, i64 2
  %i.fkv = load i16, ptr %.11688.i46.i693.ph, align 2, !tbaa !57
  %i.fkw = zext i16 %i.fkv to i32
  %i.fkx = shl nuw i32 %i.fkw, 16
  %i.fky = bitcast i32 %i.fkx to float
  %i.fkz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fky, float %i.fjf)
  %i.fla = bitcast float %i.fkz to i32
  %i.flb = lshr i32 %i.fla, 16
  %i.flc = trunc nuw i32 %i.flb to i16
  %i.fld = getelementptr inbounds nuw i8, ptr %.11887.i47.i694.ph, i64 2
  store i16 %i.flc, ptr %.11887.i47.i694.ph, align 2, !tbaa !57
  %i.fle = add nuw nsw i32 %.189.i45.i692.ph, 1
  br label %.lr.ph90.i44.i691.prol.loopexit

.lr.ph90.i44.i691.prol.loopexit:                  ; preds = %.lr.ph90.i44.i691.prol, %.lr.ph90.i44.i691.preheader4469
  %.189.i45.i692.unr = phi i32 [ %.189.i45.i692.ph, %.lr.ph90.i44.i691.preheader4469 ], [ %i.fle, %.lr.ph90.i44.i691.prol ]
  %.11688.i46.i693.unr = phi ptr [ %.11688.i46.i693.ph, %.lr.ph90.i44.i691.preheader4469 ], [ %i.fku, %.lr.ph90.i44.i691.prol ]
  %.11887.i47.i694.unr = phi ptr [ %.11887.i47.i694.ph, %.lr.ph90.i44.i691.preheader4469 ], [ %i.fld, %.lr.ph90.i44.i691.prol ]
  %i.flf = icmp eq i32 %i.ewo, %.neg4778
  br i1 %i.flf, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i691

.lr.ph.i49.i696:                                  ; preds = %bb.gm, %.lr.ph.i49.i696
  %.084.i50.i = phi i32 [ %i.fog, %.lr.ph.i49.i696 ], [ 0, %bb.gm ]
  %.01583.i51.i = phi ptr [ %i.foe, %.lr.ph.i49.i696 ], [ %1, %bb.gm ] ; 2 uses
  %.01782.i52.i = phi ptr [ %i.fof, %.lr.ph.i49.i696 ], [ %2, %bb.gm ] ; 2 uses
  %i.flg = load i64, ptr %.01583.i51.i, align 1, !tbaa !60
  %i.flh = insertelement <2 x i64> poison, i64 %i.flg, i64 0
  %i.fli = bitcast <2 x i64> %i.flh to <8 x i16>
  %i.flj = shufflevector <8 x i16> %i.fli, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.flk = bitcast <8 x i16> %i.flj to <4 x float> ; 2 uses
  %24 = fcmp fast ole <4 x float> %i.flk, zeroinitializer
  %i.fll = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.flk, <4 x float> splat (float f0x00800000))
  %i.flm = bitcast <4 x float> %i.fll to <4 x i32> ; 2 uses
  %i.fln = lshr <4 x i32> %i.flm, splat (i32 23)
  %i.flo = and <4 x i32> %i.flm, splat (i32 -2139095041)
  %i.flp = or disjoint <4 x i32> %i.flo, splat (i32 1056964608)
  %i.flq = bitcast <4 x i32> %i.flp to <4 x float> ; 3 uses
  %i.flr = add nsw <4 x i32> %i.fln, splat (i32 -127)
  %i.fls = sitofp fast <4 x i32> %i.flr to <4 x float> ; 2 uses
  %i.flt = fadd fast <4 x float> %i.fls, splat (float 1.000000e+00)
  %i.flu = fcmp fast olt <4 x float> %i.flq, splat (float f0x3F3504F3) ; 2 uses
  %i.flv = select <4 x i1> %i.flu, <4 x float> %i.flq, <4 x float> zeroinitializer
  %i.flw = fadd fast <4 x float> %i.flq, splat (float -1.000000e+00)
  %i.flx = select fast <4 x i1> %i.flu, <4 x float> %i.fls, <4 x float> %i.flt
  %i.fly = fadd fast <4 x float> %i.flw, %i.flv   ; 12 uses
  %i.flz = fmul fast <4 x float> %i.fly, %i.fly
  %i.fma = fmul fast <4 x float> %i.fly, splat (float f0x3D9021BB)
  %i.fmb = fadd fast <4 x float> %i.fma, splat (float f0xBDEBD1B8)
  %i.fmc = fmul fast <4 x float> %i.fmb, %i.fly
  %i.fmd = fadd fast <4 x float> %i.fmc, splat (float f0x3DEF251A)
  %i.fme = fmul fast <4 x float> %i.fmd, %i.fly
  %i.fmf = fadd fast <4 x float> %i.fme, splat (float f0xBDFE5D4F)
  %i.fmg = fmul fast <4 x float> %i.fmf, %i.fly
  %i.fmh = fadd fast <4 x float> %i.fmg, splat (float f0x3E11E9BF)
  %i.fmi = fmul fast <4 x float> %i.fmh, %i.fly
  %i.fmj = fadd fast <4 x float> %i.fmi, splat (float f0xBE2AAE50)
  %i.fmk = fmul fast <4 x float> %i.fmj, %i.fly
  %i.fml = fadd fast <4 x float> %i.fmk, splat (float f0x3E4CCEAC)
  %i.fmm = fmul fast <4 x float> %i.fml, %i.fly
  %i.fmn = fadd fast <4 x float> %i.fmm, splat (float f0xBE7FFFFC)
  %i.fmo = fmul fast <4 x float> %i.fmn, %i.fly
  %i.fmp = fadd fast <4 x float> %i.fmo, splat (float f0x3EAAAAAA)
  %i.fmq = fmul fast <4 x float> %i.fmp, %i.fly
  %reass.mul.i53.i = fmul fast <4 x float> %i.flx, splat (float f0x3F317218)
  %reass.add80.i54.i = fadd fast <4 x float> %i.fmq, splat (float -5.000000e-01)
  %reass.mul81.i55.i = fmul fast <4 x float> %i.flz, %reass.add80.i54.i
  %i.fmr = fadd fast <4 x float> %reass.mul.i53.i, %i.fly
  %i.fms = fadd fast <4 x float> %i.fmr, %reass.mul81.i55.i
  %25 = select <4 x i1> %24, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.fms
  %i.fmt = fmul fast <4 x float> %25, %i.fjo
  %i.fmu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fmt, <4 x float> splat (float f0x42B0C0A5))
  %i.fmv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fmu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fmw = fmul fast <4 x float> %i.fmv, splat (float f0x3FB8AA3B)
  %i.fmx = fadd fast <4 x float> %i.fmw, splat (float 5.000000e-01) ; 2 uses
  %i.fmy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fmx)
  %i.fmz = sitofp fast <4 x i32> %i.fmy to <4 x float> ; 2 uses
  %i.fna = fcmp fast olt <4 x float> %i.fmx, %i.fmz
  %i.fnb = select <4 x i1> %i.fna, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fnc = fsub fast <4 x float> %i.fmz, %i.fnb   ; 2 uses
  %i.fnd = fmul fast <4 x float> %i.fnc, splat (float f0x3F317218)
  %i.fne = fsub fast <4 x float> %i.fmv, %i.fnd   ; 8 uses
  %i.fnf = fmul fast <4 x float> %i.fne, %i.fne
  %i.fng = fmul fast <4 x float> %i.fne, splat (float f0x39506967)
  %i.fnh = fadd fast <4 x float> %i.fng, splat (float f0x3AB743CE)
  %i.fni = fmul fast <4 x float> %i.fnh, %i.fne
  %i.fnj = fadd fast <4 x float> %i.fni, splat (float f0x3C088908)
  %i.fnk = fmul fast <4 x float> %i.fnj, %i.fne
  %i.fnl = fadd fast <4 x float> %i.fnk, splat (float f0x3D2AA9C1)
  %i.fnm = fmul fast <4 x float> %i.fnl, %i.fne
  %i.fnn = fadd fast <4 x float> %i.fnm, splat (float f0x3E2AAAAA)
  %i.fno = fmul fast <4 x float> %i.fnn, %i.fne
  %i.fnp = fadd fast <4 x float> %i.fno, splat (float 5.000000e-01)
  %i.fnq = fmul fast <4 x float> %i.fnf, %i.fnp
  %i.fnr = fadd fast <4 x float> %i.fne, splat (float 1.000000e+00)
  %i.fns = fadd fast <4 x float> %i.fnr, %i.fnq
  %i.fnt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fnc)
  %i.fnu = shl <4 x i32> %i.fnt, splat (i32 23)
  %i.fnv = add <4 x i32> %i.fnu, splat (i32 1065353216)
  %i.fnw = bitcast <4 x i32> %i.fnv to <4 x float>
  %i.fnx = fmul fast <4 x float> %i.fns, %i.fnw
  %i.fny = bitcast <4 x float> %i.fnx to <8 x i16>
  %i.fnz = shufflevector <8 x i16> %i.fny, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.foa = bitcast <8 x i16> %i.fnz to <4 x float>
  %i.fob = shufflevector <4 x float> %i.foa, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.foc = bitcast <4 x float> %i.fob to <2 x i64>
  %i.fod = extractelement <2 x i64> %i.foc, i64 0
  store i64 %i.fod, ptr %.01782.i52.i, align 1, !tbaa !60
  %i.foe = getelementptr inbounds nuw i8, ptr %.01583.i51.i, i64 8 ; 2 uses
  %i.fof = getelementptr inbounds nuw i8, ptr %.01782.i52.i, i64 8 ; 2 uses
  %i.fog = add nuw nsw i32 %.084.i50.i, 4         ; 2 uses
  %i.foh = or disjoint i32 %i.fog, 3
  %i.foi = icmp slt i32 %i.foh, %i.ewo
  br i1 %i.foi, label %.lr.ph.i49.i696, label %.preheader.loopexit.i56.i697, !llvm.loop !554

.lr.ph90.i44.i691:                                ; preds = %.lr.ph90.i44.i691.prol.loopexit, %.lr.ph90.i44.i691
  %.189.i45.i692 = phi i32 [ %i.fpd, %.lr.ph90.i44.i691 ], [ %.189.i45.i692.unr, %.lr.ph90.i44.i691.prol.loopexit ]
  %.11688.i46.i693 = phi ptr [ %i.fot, %.lr.ph90.i44.i691 ], [ %.11688.i46.i693.unr, %.lr.ph90.i44.i691.prol.loopexit ] ; 3 uses
  %.11887.i47.i694 = phi ptr [ %i.fpc, %.lr.ph90.i44.i691 ], [ %.11887.i47.i694.unr, %.lr.ph90.i44.i691.prol.loopexit ] ; 3 uses
  %i.foj = getelementptr inbounds nuw i8, ptr %.11688.i46.i693, i64 2
  %i.fok = load i16, ptr %.11688.i46.i693, align 2, !tbaa !57
  %i.fol = zext i16 %i.fok to i32
  %i.fom = shl nuw i32 %i.fol, 16
  %i.fon = bitcast i32 %i.fom to float
  %i.foo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fon, float %i.fjf)
  %i.fop = bitcast float %i.foo to i32
  %i.foq = lshr i32 %i.fop, 16
  %i.for = trunc nuw i32 %i.foq to i16
  %i.fos = getelementptr inbounds nuw i8, ptr %.11887.i47.i694, i64 2
  store i16 %i.for, ptr %.11887.i47.i694, align 2, !tbaa !57
  %i.fot = getelementptr inbounds nuw i8, ptr %.11688.i46.i693, i64 4
  %i.fou = load i16, ptr %i.foj, align 2, !tbaa !57
  %i.fov = zext i16 %i.fou to i32
  %i.fow = shl nuw i32 %i.fov, 16
  %i.fox = bitcast i32 %i.fow to float
  %i.foy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fox, float %i.fjf)
  %i.foz = bitcast float %i.foy to i32
  %i.fpa = lshr i32 %i.foz, 16
  %i.fpb = trunc nuw i32 %i.fpa to i16
  %i.fpc = getelementptr inbounds nuw i8, ptr %.11887.i47.i694, i64 4
  store i16 %i.fpb, ptr %i.fos, align 2, !tbaa !57
  %i.fpd = add nuw nsw i32 %.189.i45.i692, 2      ; 2 uses
  %exitcond.not.i48.i695.1 = icmp eq i32 %i.fpd, %i.ewo
  br i1 %exitcond.not.i48.i695.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i691, !llvm.loop !555

bb.gn:                                            ; preds = %bb.gi, %bb.fz
  %i.fpe = icmp eq i32 %6, 1
  br i1 %i.fpe, label %bb.go, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.go:                                            ; preds = %bb.gn
  %i.fpf = icmp eq i32 %3, %4
  br i1 %i.fpf, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.fpg = icmp eq i32 %.sroa.speculated.i652, 4
  %i.fph = icmp sgt i32 %.sroa.speculated81.i, 0
  %or.cond.i.i677 = and i1 %i.fph, %i.fpg
  br i1 %or.cond.i.i677, label %.lr.ph.i57.i678, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i57.i678:                                  ; preds = %bb.gp, %.lr.ph.i57.i678
  %.076.i.i679 = phi i32 [ %i.fsp, %.lr.ph.i57.i678 ], [ 0, %bb.gp ]
  %.0975.i.i680 = phi ptr [ %i.fsm, %.lr.ph.i57.i678 ], [ %0, %bb.gp ] ; 2 uses
  %.01074.i.i681 = phi ptr [ %i.fsn, %.lr.ph.i57.i678 ], [ %1, %bb.gp ] ; 2 uses
  %.01173.i.i682 = phi ptr [ %i.fso, %.lr.ph.i57.i678 ], [ %2, %bb.gp ] ; 2 uses
  %i.fpi = load i64, ptr %.0975.i.i680, align 1, !tbaa !60
  %i.fpj = insertelement <2 x i64> poison, i64 %i.fpi, i64 0
  %i.fpk = bitcast <2 x i64> %i.fpj to <8 x i16>
  %i.fpl = shufflevector <8 x i16> %i.fpk, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fpm = bitcast <8 x i16> %i.fpl to <4 x float>
  %i.fpn = load i16, ptr %.01074.i.i681, align 2, !tbaa !57
  %i.fpo = zext i16 %i.fpn to i32
  %i.fpp = shl nuw i32 %i.fpo, 16
  %i.fpq = insertelement <4 x i32> poison, i32 %i.fpp, i64 0
  %i.fpr = bitcast <4 x i32> %i.fpq to <4 x float>
  %i.fps = shufflevector <4 x float> %i.fpr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %26 = fcmp fast ole <4 x float> %i.fps, zeroinitializer
  %i.fpt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fps, <4 x float> splat (float f0x00800000))
  %i.fpu = bitcast <4 x float> %i.fpt to <4 x i32> ; 2 uses
  %i.fpv = lshr <4 x i32> %i.fpu, splat (i32 23)
  %i.fpw = and <4 x i32> %i.fpu, splat (i32 -2139095041)
  %i.fpx = or disjoint <4 x i32> %i.fpw, splat (i32 1056964608)
  %i.fpy = bitcast <4 x i32> %i.fpx to <4 x float> ; 3 uses
  %i.fpz = add nsw <4 x i32> %i.fpv, splat (i32 -127)
  %i.fqa = sitofp fast <4 x i32> %i.fpz to <4 x float> ; 2 uses
  %i.fqb = fadd fast <4 x float> %i.fqa, splat (float 1.000000e+00)
  %i.fqc = fcmp fast olt <4 x float> %i.fpy, splat (float f0x3F3504F3) ; 2 uses
  %i.fqd = select <4 x i1> %i.fqc, <4 x float> %i.fpy, <4 x float> zeroinitializer
  %i.fqe = fadd fast <4 x float> %i.fpy, splat (float -1.000000e+00)
  %i.fqf = select fast <4 x i1> %i.fqc, <4 x float> %i.fqa, <4 x float> %i.fqb
  %i.fqg = fadd fast <4 x float> %i.fqe, %i.fqd   ; 12 uses
  %i.fqh = fmul fast <4 x float> %i.fqg, %i.fqg
  %i.fqi = fmul fast <4 x float> %i.fqg, splat (float f0x3D9021BB)
  %i.fqj = fadd fast <4 x float> %i.fqi, splat (float f0xBDEBD1B8)
  %i.fqk = fmul fast <4 x float> %i.fqj, %i.fqg
  %i.fql = fadd fast <4 x float> %i.fqk, splat (float f0x3DEF251A)
  %i.fqm = fmul fast <4 x float> %i.fql, %i.fqg
  %i.fqn = fadd fast <4 x float> %i.fqm, splat (float f0xBDFE5D4F)
  %i.fqo = fmul fast <4 x float> %i.fqn, %i.fqg
  %i.fqp = fadd fast <4 x float> %i.fqo, splat (float f0x3E11E9BF)
  %i.fqq = fmul fast <4 x float> %i.fqp, %i.fqg
  %i.fqr = fadd fast <4 x float> %i.fqq, splat (float f0xBE2AAE50)
  %i.fqs = fmul fast <4 x float> %i.fqr, %i.fqg
  %i.fqt = fadd fast <4 x float> %i.fqs, splat (float f0x3E4CCEAC)
  %i.fqu = fmul fast <4 x float> %i.fqt, %i.fqg
  %i.fqv = fadd fast <4 x float> %i.fqu, splat (float f0xBE7FFFFC)
  %i.fqw = fmul fast <4 x float> %i.fqv, %i.fqg
  %i.fqx = fadd fast <4 x float> %i.fqw, splat (float f0x3EAAAAAA)
  %i.fqy = fmul fast <4 x float> %i.fqx, %i.fqg
  %reass.mul.i58.i683 = fmul fast <4 x float> %i.fqf, splat (float f0x3F317218)
  %reass.add71.i.i684 = fadd fast <4 x float> %i.fqy, splat (float -5.000000e-01)
  %reass.mul72.i.i685 = fmul fast <4 x float> %i.fqh, %reass.add71.i.i684
  %i.fqz = fadd fast <4 x float> %reass.mul.i58.i683, %i.fqg
  %i.fra = fadd fast <4 x float> %i.fqz, %reass.mul72.i.i685
  %27 = select <4 x i1> %26, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.fra
  %i.frb = fmul fast <4 x float> %27, %i.fpm
  %i.frc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.frb, <4 x float> splat (float f0x42B0C0A5))
  %i.frd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.frc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fre = fmul fast <4 x float> %i.frd, splat (float f0x3FB8AA3B)
  %i.frf = fadd fast <4 x float> %i.fre, splat (float 5.000000e-01) ; 2 uses
  %i.frg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.frf)
  %i.frh = sitofp fast <4 x i32> %i.frg to <4 x float> ; 2 uses
  %i.fri = fcmp fast olt <4 x float> %i.frf, %i.frh
  %i.frj = select <4 x i1> %i.fri, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.frk = fsub fast <4 x float> %i.frh, %i.frj   ; 2 uses
  %i.frl = fmul fast <4 x float> %i.frk, splat (float f0x3F317218)
  %i.frm = fsub fast <4 x float> %i.frd, %i.frl   ; 8 uses
  %i.frn = fmul fast <4 x float> %i.frm, %i.frm
  %i.fro = fmul fast <4 x float> %i.frm, splat (float f0x39506967)
  %i.frp = fadd fast <4 x float> %i.fro, splat (float f0x3AB743CE)
  %i.frq = fmul fast <4 x float> %i.frp, %i.frm
  %i.frr = fadd fast <4 x float> %i.frq, splat (float f0x3C088908)
  %i.frs = fmul fast <4 x float> %i.frr, %i.frm
  %i.frt = fadd fast <4 x float> %i.frs, splat (float f0x3D2AA9C1)
  %i.fru = fmul fast <4 x float> %i.frt, %i.frm
  %i.frv = fadd fast <4 x float> %i.fru, splat (float f0x3E2AAAAA)
  %i.frw = fmul fast <4 x float> %i.frv, %i.frm
  %i.frx = fadd fast <4 x float> %i.frw, splat (float 5.000000e-01)
  %i.fry = fmul fast <4 x float> %i.frn, %i.frx
  %i.frz = fadd fast <4 x float> %i.frm, splat (float 1.000000e+00)
  %i.fsa = fadd fast <4 x float> %i.frz, %i.fry
  %i.fsb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.frk)
  %i.fsc = shl <4 x i32> %i.fsb, splat (i32 23)
  %i.fsd = add <4 x i32> %i.fsc, splat (i32 1065353216)
  %i.fse = bitcast <4 x i32> %i.fsd to <4 x float>
  %i.fsf = fmul fast <4 x float> %i.fsa, %i.fse
  %i.fsg = bitcast <4 x float> %i.fsf to <8 x i16>
  %i.fsh = shufflevector <8 x i16> %i.fsg, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fsi = bitcast <8 x i16> %i.fsh to <4 x float>
  %i.fsj = shufflevector <4 x float> %i.fsi, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fsk = bitcast <4 x float> %i.fsj to <2 x i64>
  %i.fsl = extractelement <2 x i64> %i.fsk, i64 0
  store i64 %i.fsl, ptr %.01173.i.i682, align 1, !tbaa !60
  %i.fsm = getelementptr inbounds nuw i8, ptr %.0975.i.i680, i64 8
  %i.fsn = getelementptr inbounds nuw i8, ptr %.01074.i.i681, i64 2
  %i.fso = getelementptr inbounds nuw i8, ptr %.01173.i.i682, i64 8
  %i.fsp = add nuw nsw i32 %.076.i.i679, 1        ; 2 uses
  %exitcond.not.i59.i686 = icmp eq i32 %i.fsp, %.sroa.speculated81.i
  br i1 %exitcond.not.i59.i686, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i57.i678, !llvm.loop !556

bb.gq:                                            ; preds = %bb.go
  %i.fsq = icmp eq i32 %4, 1
  br i1 %i.fsq, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %.val.i659 = load i16, ptr %1, align 2, !tbaa !57
  %i.fsr = zext i16 %.val.i659 to i32
  %i.fss = shl nuw i32 %i.fsr, 16
  %i.fst = bitcast i32 %i.fss to float            ; 6 uses
  %i.fsu = icmp sgt i32 %i.ewo, 3
  br i1 %i.fsu, label %.lr.ph.i65.i669, label %.preheader.i60.i660

.lr.ph.i65.i669:                                  ; preds = %bb.gr
  %i.fsv = insertelement <4 x float> poison, float %i.fst, i64 0
  %i.fsw = shufflevector <4 x float> %i.fsv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %28 = fcmp fast ole <4 x float> %i.fsw, zeroinitializer
  %i.fsx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fsw, <4 x float> splat (float f0x00800000))
  %i.fsy = bitcast <4 x float> %i.fsx to <4 x i32> ; 2 uses
  %i.fsz = lshr <4 x i32> %i.fsy, splat (i32 23)
  %i.fta = and <4 x i32> %i.fsy, splat (i32 -2139095041)
  %i.ftb = or disjoint <4 x i32> %i.fta, splat (i32 1056964608)
  %i.ftc = bitcast <4 x i32> %i.ftb to <4 x float> ; 3 uses
  %i.ftd = add nsw <4 x i32> %i.fsz, splat (i32 -127)
  %i.fte = sitofp fast <4 x i32> %i.ftd to <4 x float> ; 2 uses
  %i.ftf = fadd fast <4 x float> %i.fte, splat (float 1.000000e+00)
  %i.ftg = fcmp fast olt <4 x float> %i.ftc, splat (float f0x3F3504F3) ; 2 uses
  %i.fth = select <4 x i1> %i.ftg, <4 x float> %i.ftc, <4 x float> zeroinitializer
  %i.fti = fadd fast <4 x float> %i.ftc, splat (float -1.000000e+00)
  %i.ftj = select fast <4 x i1> %i.ftg, <4 x float> %i.fte, <4 x float> %i.ftf
  %i.ftk = fadd fast <4 x float> %i.fti, %i.fth   ; 12 uses
  %i.ftl = fmul fast <4 x float> %i.ftk, %i.ftk
  %i.ftm = fmul fast <4 x float> %i.ftk, splat (float f0x3D9021BB)
  %i.ftn = fadd fast <4 x float> %i.ftm, splat (float f0xBDEBD1B8)
  %i.fto = fmul fast <4 x float> %i.ftn, %i.ftk
  %i.ftp = fadd fast <4 x float> %i.fto, splat (float f0x3DEF251A)
  %i.ftq = fmul fast <4 x float> %i.ftp, %i.ftk
  %i.ftr = fadd fast <4 x float> %i.ftq, splat (float f0xBDFE5D4F)
  %i.fts = fmul fast <4 x float> %i.ftr, %i.ftk
  %i.ftt = fadd fast <4 x float> %i.fts, splat (float f0x3E11E9BF)
  %i.ftu = fmul fast <4 x float> %i.ftt, %i.ftk
  %i.ftv = fadd fast <4 x float> %i.ftu, splat (float f0xBE2AAE50)
  %i.ftw = fmul fast <4 x float> %i.ftv, %i.ftk
  %i.ftx = fadd fast <4 x float> %i.ftw, splat (float f0x3E4CCEAC)
  %i.fty = fmul fast <4 x float> %i.ftx, %i.ftk
  %i.ftz = fadd fast <4 x float> %i.fty, splat (float f0xBE7FFFFC)
  %i.fua = fmul fast <4 x float> %i.ftz, %i.ftk
  %i.fub = fadd fast <4 x float> %i.fua, splat (float f0x3EAAAAAA)
  %i.fuc = fmul fast <4 x float> %i.fub, %i.ftk
  %reass.mul.i66.i670 = fmul fast <4 x float> %i.ftj, splat (float f0x3F317218)
  %reass.add61.i.i671 = fadd fast <4 x float> %i.fuc, splat (float -5.000000e-01)
  %reass.mul62.i.i672 = fmul fast <4 x float> %i.ftl, %reass.add61.i.i671
  %i.fud = fadd fast <4 x float> %reass.mul.i66.i670, %i.ftk
  %i.fue = fadd fast <4 x float> %i.fud, %reass.mul62.i.i672
  %29 = select <4 x i1> %28, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.fue
  br label %bb.gs

.preheader.loopexit.i67.i676:                     ; preds = %bb.gs
  %i.fuf = and i32 %i.ewo, 2147483644
  br label %.preheader.i60.i660

.preheader.i60.i660:                              ; preds = %.preheader.loopexit.i67.i676, %bb.gr
  %.016.lcssa.i61.i661 = phi ptr [ %2, %bb.gr ], [ %i.fxm, %.preheader.loopexit.i67.i676 ] ; 4 uses
  %.014.lcssa.i62.i662 = phi ptr [ %0, %bb.gr ], [ %i.fxl, %.preheader.loopexit.i67.i676 ] ; 4 uses
  %.0.lcssa.i63.i663 = phi i32 [ 0, %bb.gr ], [ %i.fuf, %.preheader.loopexit.i67.i676 ] ; 4 uses
  %i.fug = icmp slt i32 %.0.lcssa.i63.i663, %i.ewo
  br i1 %i.fug, label %.lr.ph71.i.i664.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph71.i.i664.preheader:                        ; preds = %.preheader.i60.i660
  %.014.lcssa.i62.i6623164 = ptrtoaddr ptr %.014.lcssa.i62.i662 to i64
  %.016.lcssa.i61.i6613163 = ptrtoaddr ptr %.016.lcssa.i61.i661 to i64
  %i.fuh = xor i32 %.0.lcssa.i63.i663, -1
  %i.fui = add i32 %i.ewo, %i.fuh                 ; 2 uses
  %i.fuj = zext i32 %i.fui to i64
  %i.fuk = add nuw nsw i64 %i.fuj, 1              ; 2 uses
  %min.iters.check3166 = icmp ult i32 %i.fui, 7
  %i.ful = sub i64 %.014.lcssa.i62.i6623164, %.016.lcssa.i61.i6613163
  %diff.check3168 = icmp ugt i64 %i.ful, -16
  %or.cond4245 = select i1 %min.iters.check3166, i1 true, i1 %diff.check3168
  br i1 %or.cond4245, label %.lr.ph71.i.i664.preheader4474, label %vector.ph3169

vector.ph3169:                                    ; preds = %.lr.ph71.i.i664.preheader
  %n.vec3170 = and i64 %i.fuk, 8589934584         ; 4 uses
  %i.fum = trunc i64 %n.vec3170 to i32
  %i.fun = add i32 %.0.lcssa.i63.i663, %i.fum
  %i.fuo = shl nuw nsw i64 %n.vec3170, 1          ; 2 uses
  %i.fup = getelementptr i8, ptr %.014.lcssa.i62.i662, i64 %i.fuo
  %i.fuq = getelementptr i8, ptr %.016.lcssa.i61.i661, i64 %i.fuo
  %i.fur = insertelement <4 x float> poison, float %i.fst, i64 0
  %i.fus = shufflevector <4 x float> %i.fur, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fut = insertelement <2 x float> poison, float %i.fst, i64 0
  %i.fuu = shufflevector <2 x float> %i.fut, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3171

vector.body3171:                                  ; preds = %vector.body3171, %vector.ph3169
  %index3172 = phi i64 [ 0, %vector.ph3169 ], [ %index.next3176, %vector.body3171 ] ; 2 uses
  %i.fuv = shl i64 %index3172, 1                  ; 2 uses
  %next.gep3173 = getelementptr i8, ptr %.014.lcssa.i62.i662, i64 %i.fuv
  %next.gep3174 = getelementptr i8, ptr %.016.lcssa.i61.i661, i64 %i.fuv
  %wide.load3175 = load <8 x i16>, ptr %next.gep3173, align 2, !tbaa !57
  %i.fuw = zext <8 x i16> %wide.load3175 to <8 x i32>
  %i.fux = shl nuw <8 x i32> %i.fuw, splat (i32 16)
  %i.fuy = bitcast <8 x i32> %i.fux to <8 x float> ; 2 uses
  %i.fuz = shufflevector <8 x float> %i.fuy, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fva = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.fus, <4 x float> %i.fuz)
  %i.fvb = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.fuu, <8 x float> %i.fuy)
  %i.fvc = shufflevector <4 x float> %i.fva, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fvd = shufflevector <8 x float> %i.fvb, <8 x float> %i.fvc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fve = bitcast <8 x float> %i.fvd to <8 x i32>
  %i.fvf = lshr <8 x i32> %i.fve, splat (i32 16)
  %i.fvg = trunc nuw <8 x i32> %i.fvf to <8 x i16>
  store <8 x i16> %i.fvg, ptr %next.gep3174, align 2, !tbaa !57
  %index.next3176 = add nuw i64 %index3172, 8     ; 2 uses
  %i.fvh = icmp eq i64 %index.next3176, %n.vec3170
  br i1 %i.fvh, label %middle.block3177, label %vector.body3171, !llvm.loop !557

middle.block3177:                                 ; preds = %vector.body3171
  %cmp.n3178 = icmp eq i64 %i.fuk, %n.vec3170
  br i1 %cmp.n3178, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i664.preheader4474

.lr.ph71.i.i664.preheader4474:                    ; preds = %.lr.ph71.i.i664.preheader, %middle.block3177
  %.170.i.i665.ph = phi i32 [ %.0.lcssa.i63.i663, %.lr.ph71.i.i664.preheader ], [ %i.fun, %middle.block3177 ] ; 4 uses
  %.11569.i.i666.ph = phi ptr [ %.014.lcssa.i62.i662, %.lr.ph71.i.i664.preheader ], [ %i.fup, %middle.block3177 ] ; 3 uses
  %.11768.i.i667.ph = phi ptr [ %.016.lcssa.i61.i661, %.lr.ph71.i.i664.preheader ], [ %i.fuq, %middle.block3177 ] ; 3 uses
  %i.fvi = sub i32 %i.ewo, %.170.i.i665.ph
  %.neg4777 = add i32 %.170.i.i665.ph, 1
  %xtraiter4680 = and i32 %i.fvi, 1
  %lcmp.mod4681.not = icmp eq i32 %xtraiter4680, 0
  br i1 %lcmp.mod4681.not, label %.lr.ph71.i.i664.prol.loopexit, label %.lr.ph71.i.i664.prol

.lr.ph71.i.i664.prol:                             ; preds = %.lr.ph71.i.i664.preheader4474
  %i.fvj = getelementptr inbounds nuw i8, ptr %.11569.i.i666.ph, i64 2
  %i.fvk = load i16, ptr %.11569.i.i666.ph, align 2, !tbaa !57
  %i.fvl = zext i16 %i.fvk to i32
  %i.fvm = shl nuw i32 %i.fvl, 16
  %i.fvn = bitcast i32 %i.fvm to float
  %i.fvo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fst, float %i.fvn)
  %i.fvp = bitcast float %i.fvo to i32
  %i.fvq = lshr i32 %i.fvp, 16
  %i.fvr = trunc nuw i32 %i.fvq to i16
  %i.fvs = getelementptr inbounds nuw i8, ptr %.11768.i.i667.ph, i64 2
  store i16 %i.fvr, ptr %.11768.i.i667.ph, align 2, !tbaa !57
  %i.fvt = add nuw nsw i32 %.170.i.i665.ph, 1
  br label %.lr.ph71.i.i664.prol.loopexit

.lr.ph71.i.i664.prol.loopexit:                    ; preds = %.lr.ph71.i.i664.prol, %.lr.ph71.i.i664.preheader4474
  %.170.i.i665.unr = phi i32 [ %.170.i.i665.ph, %.lr.ph71.i.i664.preheader4474 ], [ %i.fvt, %.lr.ph71.i.i664.prol ]
  %.11569.i.i666.unr = phi ptr [ %.11569.i.i666.ph, %.lr.ph71.i.i664.preheader4474 ], [ %i.fvj, %.lr.ph71.i.i664.prol ]
  %.11768.i.i667.unr = phi ptr [ %.11768.i.i667.ph, %.lr.ph71.i.i664.preheader4474 ], [ %i.fvs, %.lr.ph71.i.i664.prol ]
  %i.fvu = icmp eq i32 %i.ewo, %.neg4777
  br i1 %i.fvu, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i664

bb.gs:                                            ; preds = %bb.gs, %.lr.ph.i65.i669
  %.065.i.i673 = phi i32 [ 0, %.lr.ph.i65.i669 ], [ %i.fxn, %bb.gs ]
  %.01464.i.i674 = phi ptr [ %0, %.lr.ph.i65.i669 ], [ %i.fxl, %bb.gs ] ; 2 uses
  %.01663.i.i675 = phi ptr [ %2, %.lr.ph.i65.i669 ], [ %i.fxm, %bb.gs ] ; 2 uses
  %i.fvv = load i64, ptr %.01464.i.i674, align 1, !tbaa !60
  %i.fvw = insertelement <2 x i64> poison, i64 %i.fvv, i64 0
  %i.fvx = bitcast <2 x i64> %i.fvw to <8 x i16>
  %i.fvy = shufflevector <8 x i16> %i.fvx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fvz = bitcast <8 x i16> %i.fvy to <4 x float>
  %i.fwa = fmul fast <4 x float> %29, %i.fvz
  %i.fwb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fwa, <4 x float> splat (float f0x42B0C0A5))
  %i.fwc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fwb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fwd = fmul fast <4 x float> %i.fwc, splat (float f0x3FB8AA3B)
  %i.fwe = fadd fast <4 x float> %i.fwd, splat (float 5.000000e-01) ; 2 uses
  %i.fwf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fwe)
  %i.fwg = sitofp fast <4 x i32> %i.fwf to <4 x float> ; 2 uses
  %i.fwh = fcmp fast olt <4 x float> %i.fwe, %i.fwg
  %i.fwi = select <4 x i1> %i.fwh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fwj = fsub fast <4 x float> %i.fwg, %i.fwi   ; 2 uses
  %i.fwk = fmul fast <4 x float> %i.fwj, splat (float f0x3F317218)
  %i.fwl = fsub fast <4 x float> %i.fwc, %i.fwk   ; 8 uses
  %i.fwm = fmul fast <4 x float> %i.fwl, %i.fwl
  %i.fwn = fmul fast <4 x float> %i.fwl, splat (float f0x39506967)
  %i.fwo = fadd fast <4 x float> %i.fwn, splat (float f0x3AB743CE)
  %i.fwp = fmul fast <4 x float> %i.fwo, %i.fwl
  %i.fwq = fadd fast <4 x float> %i.fwp, splat (float f0x3C088908)
  %i.fwr = fmul fast <4 x float> %i.fwq, %i.fwl
  %i.fws = fadd fast <4 x float> %i.fwr, splat (float f0x3D2AA9C1)
  %i.fwt = fmul fast <4 x float> %i.fws, %i.fwl
  %i.fwu = fadd fast <4 x float> %i.fwt, splat (float f0x3E2AAAAA)
  %i.fwv = fmul fast <4 x float> %i.fwu, %i.fwl
  %i.fww = fadd fast <4 x float> %i.fwv, splat (float 5.000000e-01)
  %i.fwx = fmul fast <4 x float> %i.fwm, %i.fww
  %i.fwy = fadd fast <4 x float> %i.fwl, splat (float 1.000000e+00)
  %i.fwz = fadd fast <4 x float> %i.fwy, %i.fwx
  %i.fxa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fwj)
  %i.fxb = shl <4 x i32> %i.fxa, splat (i32 23)
  %i.fxc = add <4 x i32> %i.fxb, splat (i32 1065353216)
  %i.fxd = bitcast <4 x i32> %i.fxc to <4 x float>
  %i.fxe = fmul fast <4 x float> %i.fwz, %i.fxd
  %i.fxf = bitcast <4 x float> %i.fxe to <8 x i16>
  %i.fxg = shufflevector <8 x i16> %i.fxf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fxh = bitcast <8 x i16> %i.fxg to <4 x float>
  %i.fxi = shufflevector <4 x float> %i.fxh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fxj = bitcast <4 x float> %i.fxi to <2 x i64>
  %i.fxk = extractelement <2 x i64> %i.fxj, i64 0
  store i64 %i.fxk, ptr %.01663.i.i675, align 1, !tbaa !60
  %i.fxl = getelementptr inbounds nuw i8, ptr %.01464.i.i674, i64 8 ; 2 uses
  %i.fxm = getelementptr inbounds nuw i8, ptr %.01663.i.i675, i64 8 ; 2 uses
  %i.fxn = add nuw nsw i32 %.065.i.i673, 4        ; 2 uses
  %i.fxo = or disjoint i32 %i.fxn, 3
  %i.fxp = icmp slt i32 %i.fxo, %i.ewo
  br i1 %i.fxp, label %bb.gs, label %.preheader.loopexit.i67.i676, !llvm.loop !558

.lr.ph71.i.i664:                                  ; preds = %.lr.ph71.i.i664.prol.loopexit, %.lr.ph71.i.i664
  %.170.i.i665 = phi i32 [ %i.fyk, %.lr.ph71.i.i664 ], [ %.170.i.i665.unr, %.lr.ph71.i.i664.prol.loopexit ]
  %.11569.i.i666 = phi ptr [ %i.fya, %.lr.ph71.i.i664 ], [ %.11569.i.i666.unr, %.lr.ph71.i.i664.prol.loopexit ] ; 3 uses
  %.11768.i.i667 = phi ptr [ %i.fyj, %.lr.ph71.i.i664 ], [ %.11768.i.i667.unr, %.lr.ph71.i.i664.prol.loopexit ] ; 3 uses
  %i.fxq = getelementptr inbounds nuw i8, ptr %.11569.i.i666, i64 2
  %i.fxr = load i16, ptr %.11569.i.i666, align 2, !tbaa !57
  %i.fxs = zext i16 %i.fxr to i32
  %i.fxt = shl nuw i32 %i.fxs, 16
  %i.fxu = bitcast i32 %i.fxt to float
  %i.fxv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fst, float %i.fxu)
  %i.fxw = bitcast float %i.fxv to i32
  %i.fxx = lshr i32 %i.fxw, 16
  %i.fxy = trunc nuw i32 %i.fxx to i16
  %i.fxz = getelementptr inbounds nuw i8, ptr %.11768.i.i667, i64 2
  store i16 %i.fxy, ptr %.11768.i.i667, align 2, !tbaa !57
  %i.fya = getelementptr inbounds nuw i8, ptr %.11569.i.i666, i64 4
  %i.fyb = load i16, ptr %i.fxq, align 2, !tbaa !57
  %i.fyc = zext i16 %i.fyb to i32
  %i.fyd = shl nuw i32 %i.fyc, 16
  %i.fye = bitcast i32 %i.fyd to float
  %i.fyf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fst, float %i.fye)
  %i.fyg = bitcast float %i.fyf to i32
  %i.fyh = lshr i32 %i.fyg, 16
  %i.fyi = trunc nuw i32 %i.fyh to i16
  %i.fyj = getelementptr inbounds nuw i8, ptr %.11768.i.i667, i64 4
  store i16 %i.fyi, ptr %i.fxz, align 2, !tbaa !57
  %i.fyk = add nuw nsw i32 %.170.i.i665, 2        ; 2 uses
  %exitcond.not.i64.i668.1 = icmp eq i32 %i.fyk, %i.ewo
  br i1 %exitcond.not.i64.i668.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i664, !llvm.loop !559

bb.gt:                                            ; preds = %bb.gq
  %i.fyl = icmp eq i32 %3, 1
  %i.fym = icmp eq i32 %.sroa.speculated.i652, 4
  %or.cond.i653 = and i1 %i.fyl, %i.fym
  br i1 %or.cond.i653, label %bb.gu, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.gu:                                            ; preds = %bb.gt
  %i.fyn = load i64, ptr %0, align 1, !tbaa !60
  %i.fyo = insertelement <2 x i64> poison, i64 %i.fyn, i64 0
  %i.fyp = bitcast <2 x i64> %i.fyo to <8 x i16>
  %i.fyq = shufflevector <8 x i16> %i.fyp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fyr = bitcast <8 x i16> %i.fyq to <4 x float>
  br label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %.lr.ph.i68.i, %bb.gu
  %.073.i.i654 = phi i32 [ %i.gbt, %.lr.ph.i68.i ], [ 0, %bb.gu ]
  %.0872.i.i655 = phi ptr [ %i.gbr, %.lr.ph.i68.i ], [ %1, %bb.gu ] ; 2 uses
  %.0971.i.i656 = phi ptr [ %i.gbs, %.lr.ph.i68.i ], [ %2, %bb.gu ] ; 2 uses
  %i.fys = load i16, ptr %.0872.i.i655, align 2, !tbaa !57
  %i.fyt = zext i16 %i.fys to i32
  %i.fyu = shl nuw i32 %i.fyt, 16
  %i.fyv = insertelement <4 x i32> poison, i32 %i.fyu, i64 0
  %i.fyw = bitcast <4 x i32> %i.fyv to <4 x float>
  %i.fyx = shufflevector <4 x float> %i.fyw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %30 = fcmp fast ole <4 x float> %i.fyx, zeroinitializer
  %i.fyy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fyx, <4 x float> splat (float f0x00800000))
  %i.fyz = bitcast <4 x float> %i.fyy to <4 x i32> ; 2 uses
  %i.fza = lshr <4 x i32> %i.fyz, splat (i32 23)
  %i.fzb = and <4 x i32> %i.fyz, splat (i32 -2139095041)
  %i.fzc = or disjoint <4 x i32> %i.fzb, splat (i32 1056964608)
  %i.fzd = bitcast <4 x i32> %i.fzc to <4 x float> ; 3 uses
  %i.fze = add nsw <4 x i32> %i.fza, splat (i32 -127)
  %i.fzf = sitofp fast <4 x i32> %i.fze to <4 x float> ; 2 uses
  %i.fzg = fadd fast <4 x float> %i.fzf, splat (float 1.000000e+00)
  %i.fzh = fcmp fast olt <4 x float> %i.fzd, splat (float f0x3F3504F3) ; 2 uses
  %i.fzi = select <4 x i1> %i.fzh, <4 x float> %i.fzd, <4 x float> zeroinitializer
  %i.fzj = fadd fast <4 x float> %i.fzd, splat (float -1.000000e+00)
  %i.fzk = select fast <4 x i1> %i.fzh, <4 x float> %i.fzf, <4 x float> %i.fzg
  %i.fzl = fadd fast <4 x float> %i.fzj, %i.fzi   ; 12 uses
  %i.fzm = fmul fast <4 x float> %i.fzl, %i.fzl
  %i.fzn = fmul fast <4 x float> %i.fzl, splat (float f0x3D9021BB)
  %i.fzo = fadd fast <4 x float> %i.fzn, splat (float f0xBDEBD1B8)
  %i.fzp = fmul fast <4 x float> %i.fzo, %i.fzl
  %i.fzq = fadd fast <4 x float> %i.fzp, splat (float f0x3DEF251A)
  %i.fzr = fmul fast <4 x float> %i.fzq, %i.fzl
  %i.fzs = fadd fast <4 x float> %i.fzr, splat (float f0xBDFE5D4F)
  %i.fzt = fmul fast <4 x float> %i.fzs, %i.fzl
  %i.fzu = fadd fast <4 x float> %i.fzt, splat (float f0x3E11E9BF)
  %i.fzv = fmul fast <4 x float> %i.fzu, %i.fzl
  %i.fzw = fadd fast <4 x float> %i.fzv, splat (float f0xBE2AAE50)
  %i.fzx = fmul fast <4 x float> %i.fzw, %i.fzl
  %i.fzy = fadd fast <4 x float> %i.fzx, splat (float f0x3E4CCEAC)
  %i.fzz = fmul fast <4 x float> %i.fzy, %i.fzl
  %i.gaa = fadd fast <4 x float> %i.fzz, splat (float f0xBE7FFFFC)
  %i.gab = fmul fast <4 x float> %i.gaa, %i.fzl
  %i.gac = fadd fast <4 x float> %i.gab, splat (float f0x3EAAAAAA)
  %i.gad = fmul fast <4 x float> %i.gac, %i.fzl
  %reass.mul.i69.i = fmul fast <4 x float> %i.fzk, splat (float f0x3F317218)
  %reass.add69.i.i657 = fadd fast <4 x float> %i.gad, splat (float -5.000000e-01)
  %reass.mul70.i.i658 = fmul fast <4 x float> %i.fzm, %reass.add69.i.i657
  %i.gae = fadd fast <4 x float> %reass.mul.i69.i, %i.fzl
  %i.gaf = fadd fast <4 x float> %i.gae, %reass.mul70.i.i658
  %31 = select <4 x i1> %30, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.gaf
  %i.gag = fmul fast <4 x float> %31, %i.fyr
  %i.gah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gag, <4 x float> splat (float f0x42B0C0A5))
  %i.gai = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gah, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gaj = fmul fast <4 x float> %i.gai, splat (float f0x3FB8AA3B)
  %i.gak = fadd fast <4 x float> %i.gaj, splat (float 5.000000e-01) ; 2 uses
  %i.gal = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gak)
  %i.gam = sitofp fast <4 x i32> %i.gal to <4 x float> ; 2 uses
  %i.gan = fcmp fast olt <4 x float> %i.gak, %i.gam
  %i.gao = select <4 x i1> %i.gan, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gap = fsub fast <4 x float> %i.gam, %i.gao   ; 2 uses
  %i.gaq = fmul fast <4 x float> %i.gap, splat (float f0x3F317218)
  %i.gar = fsub fast <4 x float> %i.gai, %i.gaq   ; 8 uses
  %i.gas = fmul fast <4 x float> %i.gar, %i.gar
  %i.gat = fmul fast <4 x float> %i.gar, splat (float f0x39506967)
  %i.gau = fadd fast <4 x float> %i.gat, splat (float f0x3AB743CE)
  %i.gav = fmul fast <4 x float> %i.gau, %i.gar
  %i.gaw = fadd fast <4 x float> %i.gav, splat (float f0x3C088908)
  %i.gax = fmul fast <4 x float> %i.gaw, %i.gar
  %i.gay = fadd fast <4 x float> %i.gax, splat (float f0x3D2AA9C1)
  %i.gaz = fmul fast <4 x float> %i.gay, %i.gar
  %i.gba = fadd fast <4 x float> %i.gaz, splat (float f0x3E2AAAAA)
  %i.gbb = fmul fast <4 x float> %i.gba, %i.gar
  %i.gbc = fadd fast <4 x float> %i.gbb, splat (float 5.000000e-01)
  %i.gbd = fmul fast <4 x float> %i.gas, %i.gbc
  %i.gbe = fadd fast <4 x float> %i.gar, splat (float 1.000000e+00)
  %i.gbf = fadd fast <4 x float> %i.gbe, %i.gbd
  %i.gbg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gap)
  %i.gbh = shl <4 x i32> %i.gbg, splat (i32 23)
  %i.gbi = add <4 x i32> %i.gbh, splat (i32 1065353216)
  %i.gbj = bitcast <4 x i32> %i.gbi to <4 x float>
  %i.gbk = fmul fast <4 x float> %i.gbf, %i.gbj
  %i.gbl = bitcast <4 x float> %i.gbk to <8 x i16>
  %i.gbm = shufflevector <8 x i16> %i.gbl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.gbn = bitcast <8 x i16> %i.gbm to <4 x float>
  %i.gbo = shufflevector <4 x float> %i.gbn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gbp = bitcast <4 x float> %i.gbo to <2 x i64>
  %i.gbq = extractelement <2 x i64> %i.gbp, i64 0
  store i64 %i.gbq, ptr %.0971.i.i656, align 1, !tbaa !60
  %i.gbr = getelementptr inbounds nuw i8, ptr %.0872.i.i655, i64 2
  %i.gbs = getelementptr inbounds nuw i8, ptr %.0971.i.i656, i64 8
  %i.gbt = add nuw nsw i32 %.073.i.i654, 1        ; 2 uses
  %exitcond.not.i70.i = icmp eq i32 %i.gbt, %.sroa.speculated81.i
  br i1 %exitcond.not.i70.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i68.i, !llvm.loop !560

bb.gv:                                            ; preds = %bb.a
  %.sroa.speculated70.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i735 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.gbu = mul i32 %.sroa.speculated.i735, %.sroa.speculated70.i ; 32 uses
  %i.gbv = icmp eq i32 %5, %6
  br i1 %i.gbv, label %bb.gw, label %bb.hk

bb.gw:                                            ; preds = %bb.gv
  %i.gbw = icmp eq i32 %3, %4
  br i1 %i.gbw, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.gbx = icmp sgt i32 %i.gbu, 3
  br i1 %i.gbx, label %.lr.ph.i.i760, label %.preheader.i.i754

.preheader.loopexit.i.i761:                       ; preds = %.lr.ph.i.i760
  %i.gby = and i32 %i.gbu, 2147483644
  br label %.preheader.i.i754

.preheader.i.i754:                                ; preds = %.preheader.loopexit.i.i761, %bb.gx
  %.018.lcssa.i.i755 = phi ptr [ %1, %bb.gx ], [ %i.ggg, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.016.lcssa.i.i756 = phi ptr [ %2, %bb.gx ], [ %i.ggh, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.014.lcssa.i.i757 = phi ptr [ %0, %bb.gx ], [ %i.ggf, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.0.lcssa.i.i758 = phi i32 [ 0, %bb.gx ], [ %i.gby, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.016.lcssa.i.i7563134 = ptrtoaddr ptr %.016.lcssa.i.i756 to i64 ; 2 uses
  %.014.lcssa.i.i7573135 = ptrtoaddr ptr %.014.lcssa.i.i757 to i64
  %.018.lcssa.i.i7553136 = ptrtoaddr ptr %.018.lcssa.i.i755 to i64
  %i.gbz = icmp slt i32 %.0.lcssa.i.i758, %i.gbu
  br i1 %i.gbz, label %.lr.ph72.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph72.i.i.preheader:                           ; preds = %.preheader.i.i754
  %i.gca = xor i32 %.0.lcssa.i.i758, -1
  %i.gcb = add i32 %i.gbu, %i.gca                 ; 2 uses
  %i.gcc = zext i32 %i.gcb to i64
  %i.gcd = add nuw nsw i64 %i.gcc, 1              ; 2 uses
  %min.iters.check3138 = icmp ult i32 %i.gcb, 7
  br i1 %min.iters.check3138, label %.lr.ph72.i.i.preheader4479, label %vector.memcheck3139

vector.memcheck3139:                              ; preds = %.lr.ph72.i.i.preheader
  %i.gce = sub i64 %.014.lcssa.i.i7573135, %.016.lcssa.i.i7563134
  %diff.check3140 = icmp ugt i64 %i.gce, -16
  %i.gcf = sub i64 %.018.lcssa.i.i7553136, %.016.lcssa.i.i7563134
  %diff.check3141 = icmp ugt i64 %i.gcf, -16
  %conflict.rdx3142 = or i1 %diff.check3140, %diff.check3141
  br i1 %conflict.rdx3142, label %.lr.ph72.i.i.preheader4479, label %vector.ph3143

vector.ph3143:                                    ; preds = %vector.memcheck3139
  %n.vec3144 = and i64 %i.gcd, 8589934584         ; 4 uses
  %i.gcg = trunc i64 %n.vec3144 to i32
  %i.gch = add i32 %.0.lcssa.i.i758, %i.gcg
  %i.gci = shl nuw nsw i64 %n.vec3144, 1          ; 3 uses
  %i.gcj = getelementptr i8, ptr %.014.lcssa.i.i757, i64 %i.gci
  %i.gck = getelementptr i8, ptr %.016.lcssa.i.i756, i64 %i.gci
  %i.gcl = getelementptr i8, ptr %.018.lcssa.i.i755, i64 %i.gci
  br label %vector.body3145

vector.body3145:                                  ; preds = %vector.body3145, %vector.ph3143
  %index3146 = phi i64 [ 0, %vector.ph3143 ], [ %index.next3152, %vector.body3145 ] ; 2 uses
  %i.gcm = shl i64 %index3146, 1                  ; 3 uses
  %next.gep3147 = getelementptr i8, ptr %.014.lcssa.i.i757, i64 %i.gcm
  %next.gep3148 = getelementptr i8, ptr %.016.lcssa.i.i756, i64 %i.gcm
  %next.gep3149 = getelementptr i8, ptr %.018.lcssa.i.i755, i64 %i.gcm
  %wide.load3150 = load <8 x i16>, ptr %next.gep3147, align 2, !tbaa !57
  %i.gcn = zext <8 x i16> %wide.load3150 to <8 x i32>
  %i.gco = shl nuw <8 x i32> %i.gcn, splat (i32 16)
  %i.gcp = bitcast <8 x i32> %i.gco to <8 x float>
  %wide.load3151 = load <8 x i16>, ptr %next.gep3149, align 2, !tbaa !57
  %i.gcq = zext <8 x i16> %wide.load3151 to <8 x i32>
  %i.gcr = shl nuw <8 x i32> %i.gcq, splat (i32 16)
  %i.gcs = bitcast <8 x i32> %i.gcr to <8 x float>
  %i.gct = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.gcp, <8 x float> %i.gcs)
  %i.gcu = bitcast <8 x float> %i.gct to <8 x i32>
  %i.gcv = lshr <8 x i32> %i.gcu, splat (i32 16)
  %i.gcw = trunc nuw <8 x i32> %i.gcv to <8 x i16>
  store <8 x i16> %i.gcw, ptr %next.gep3148, align 2, !tbaa !57
  %index.next3152 = add nuw i64 %index3146, 8     ; 2 uses
  %i.gcx = icmp eq i64 %index.next3152, %n.vec3144
  br i1 %i.gcx, label %middle.block3153, label %vector.body3145, !llvm.loop !561

middle.block3153:                                 ; preds = %vector.body3145
  %cmp.n3154 = icmp eq i64 %i.gcd, %n.vec3144
  br i1 %cmp.n3154, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i.preheader4479

.lr.ph72.i.i.preheader4479:                       ; preds = %vector.memcheck3139, %.lr.ph72.i.i.preheader, %middle.block3153
  %.171.i.i.ph = phi i32 [ %.0.lcssa.i.i758, %vector.memcheck3139 ], [ %.0.lcssa.i.i758, %.lr.ph72.i.i.preheader ], [ %i.gch, %middle.block3153 ] ; 4 uses
  %.11570.i.i.ph = phi ptr [ %.014.lcssa.i.i757, %vector.memcheck3139 ], [ %.014.lcssa.i.i757, %.lr.ph72.i.i.preheader ], [ %i.gcj, %middle.block3153 ] ; 3 uses
  %.11769.i.i.ph = phi ptr [ %.016.lcssa.i.i756, %vector.memcheck3139 ], [ %.016.lcssa.i.i756, %.lr.ph72.i.i.preheader ], [ %i.gck, %middle.block3153 ] ; 3 uses
  %.11968.i.i.ph = phi ptr [ %.018.lcssa.i.i755, %vector.memcheck3139 ], [ %.018.lcssa.i.i755, %.lr.ph72.i.i.preheader ], [ %i.gcl, %middle.block3153 ] ; 3 uses
  %i.gcy = sub i32 %i.gbu, %.171.i.i.ph
  %.neg4776 = add i32 %.171.i.i.ph, 1
  %xtraiter4678 = and i32 %i.gcy, 1
  %lcmp.mod4679.not = icmp eq i32 %xtraiter4678, 0
  br i1 %lcmp.mod4679.not, label %.lr.ph72.i.i.prol.loopexit, label %.lr.ph72.i.i.prol

.lr.ph72.i.i.prol:                                ; preds = %.lr.ph72.i.i.preheader4479
  %i.gcz = getelementptr inbounds nuw i8, ptr %.11570.i.i.ph, i64 2
  %i.gda = load i16, ptr %.11570.i.i.ph, align 2, !tbaa !57
  %i.gdb = zext i16 %i.gda to i32
  %i.gdc = shl nuw i32 %i.gdb, 16
  %i.gdd = bitcast i32 %i.gdc to float
  %i.gde = getelementptr inbounds nuw i8, ptr %.11968.i.i.ph, i64 2
  %i.gdf = load i16, ptr %.11968.i.i.ph, align 2, !tbaa !57
  %i.gdg = zext i16 %i.gdf to i32
  %i.gdh = shl nuw i32 %i.gdg, 16
  %i.gdi = bitcast i32 %i.gdh to float
  %i.gdj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gdd, float %i.gdi)
  %i.gdk = bitcast float %i.gdj to i32
  %i.gdl = lshr i32 %i.gdk, 16
  %i.gdm = trunc nuw i32 %i.gdl to i16
  %i.gdn = getelementptr inbounds nuw i8, ptr %.11769.i.i.ph, i64 2
  store i16 %i.gdm, ptr %.11769.i.i.ph, align 2, !tbaa !57
  %i.gdo = add nuw nsw i32 %.171.i.i.ph, 1
  br label %.lr.ph72.i.i.prol.loopexit

.lr.ph72.i.i.prol.loopexit:                       ; preds = %.lr.ph72.i.i.prol, %.lr.ph72.i.i.preheader4479
  %.171.i.i.unr = phi i32 [ %.171.i.i.ph, %.lr.ph72.i.i.preheader4479 ], [ %i.gdo, %.lr.ph72.i.i.prol ]
  %.11570.i.i.unr = phi ptr [ %.11570.i.i.ph, %.lr.ph72.i.i.preheader4479 ], [ %i.gcz, %.lr.ph72.i.i.prol ]
  %.11769.i.i.unr = phi ptr [ %.11769.i.i.ph, %.lr.ph72.i.i.preheader4479 ], [ %i.gdn, %.lr.ph72.i.i.prol ]
  %.11968.i.i.unr = phi ptr [ %.11968.i.i.ph, %.lr.ph72.i.i.preheader4479 ], [ %i.gde, %.lr.ph72.i.i.prol ]
  %i.gdp = icmp eq i32 %i.gbu, %.neg4776
  br i1 %i.gdp, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i

.lr.ph.i.i760:                                    ; preds = %bb.gx, %.lr.ph.i.i760
  %.064.i.i = phi i32 [ %i.ggi, %.lr.ph.i.i760 ], [ 0, %bb.gx ]
  %.01463.i.i = phi ptr [ %i.ggf, %.lr.ph.i.i760 ], [ %0, %bb.gx ] ; 2 uses
  %.01662.i.i = phi ptr [ %i.ggh, %.lr.ph.i.i760 ], [ %2, %bb.gx ] ; 2 uses
  %.01861.i.i = phi ptr [ %i.ggg, %.lr.ph.i.i760 ], [ %1, %bb.gx ] ; 2 uses
  %i.gdq = load i64, ptr %.01463.i.i, align 1, !tbaa !60
  %i.gdr = insertelement <2 x i64> poison, i64 %i.gdq, i64 0
  %i.gds = bitcast <2 x i64> %i.gdr to <8 x i16>
  %i.gdt = shufflevector <8 x i16> %i.gds, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.gdu = bitcast <8 x i16> %i.gdt to <4 x float> ; 3 uses
  %i.gdv = load i64, ptr %.01861.i.i, align 1, !tbaa !60
  %i.gdw = insertelement <2 x i64> poison, i64 %i.gdv, i64 0
  %i.gdx = bitcast <2 x i64> %i.gdw to <8 x i16>
  %i.gdy = shufflevector <8 x i16> %i.gdx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.gdz = bitcast <8 x i16> %i.gdy to <4 x float> ; 3 uses
  %i.gea = fcmp fast oeq <4 x float> %i.gdz, zeroinitializer
  %i.geb = fcmp fast oeq <4 x float> %i.gdu, zeroinitializer
  %i.gec = fcmp fast olt <4 x float> %i.gdz, zeroinitializer
  %i.ged = fcmp fast olt <4 x float> %i.gdu, zeroinitializer
  %i.gee = select <4 x i1> %i.ged, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.gef = select <4 x i1> %i.gec, <4 x float> %i.gee, <4 x float> zeroinitializer
  %i.geg = fdiv fast <4 x float> %i.gdu, %i.gdz   ; 2 uses
  %i.geh = bitcast <4 x float> %i.geg to <4 x i32>
  %i.gei = and <4 x i32> %i.geh, splat (i32 -2147483648)
  %i.gej = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.geg) ; 3 uses
  %i.gek = fcmp fast ogt <4 x float> %i.gej, splat (float 1.000000e+00) ; 2 uses
  %i.gel = select <4 x i1> %i.gek, <4 x float> splat (float -1.000000e+00), <4 x float> %i.gej
  %i.gem = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.gej, <4 x float> splat (float 1.000000e+00))
  %i.gen = fdiv fast <4 x float> %i.gel, %i.gem   ; 3 uses
  %i.geo = fmul fast <4 x float> %i.gen, %i.gen   ; 3 uses
  %i.gep = fmul fast <4 x float> %i.geo, %i.geo   ; 7 uses
  %i.geq = fmul fast <4 x float> %i.gep, splat (float f0x3C83A25C)
  %i.ger = fsub fast <4 x float> splat (float f0xBD99B01E), %i.geq
  %i.ges = fmul fast <4 x float> %i.ger, %i.gep
  %i.get = fadd fast <4 x float> %i.ges, splat (float f0xBE117200)
end_hunk_3
