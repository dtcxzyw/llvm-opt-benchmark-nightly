Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86?download=true
inline.NumInlined: 420
inline.NumDeleted: 278
loop-unroll.NumRuntimeUnrolled: 168
loop-unroll.NumUnrolled: 168
begin_hunk_0_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
bb.dq:                                            ; preds = %bb.dp
  %i.bvf = load <4 x float>, ptr %0, align 1, !tbaa !60 ; 5 uses
  %xtraiter3944 = and i32 %.sroa.speculated69.i400, 3 ; 3 uses
  %i.bvg = icmp slt i32 %4, 4
  br i1 %i.bvg, label %.lr.ph.i57.i403.epil.preheader, label %.new3943

.new3943:                                         ; preds = %bb.dq
  %unroll_iter3948 = and i32 %.sroa.speculated69.i400, 2147483644
  br label %.lr.ph.i57.i403

.lr.ph.i57.i403:                                  ; preds = %.lr.ph.i57.i403, %.new3943
  %.014.i.i404 = phi ptr [ %1, %.new3943 ], [ %i.bwd, %.lr.ph.i57.i403 ] ; 5 uses
  %.01012.i.i406 = phi ptr [ %2, %.new3943 ], [ %i.bwe, %.lr.ph.i57.i403 ] ; 5 uses
  %niter3949 = phi i32 [ 0, %.new3943 ], [ %niter3949.next.3, %.lr.ph.i57.i403 ]
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
  %niter3949.next.3 = add i32 %niter3949, 4       ; 2 uses
  %niter3949.ncmp.3 = icmp eq i32 %niter3949.next.3, %unroll_iter3948
  br i1 %niter3949.ncmp.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit.loopexit3497.unr-lcssa, label %.lr.ph.i57.i403, !llvm.loop !170

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
  %.022.lcssa.i.i4812927 = ptrtoaddr ptr %.022.lcssa.i.i481 to i64 ; 2 uses
  %.0.lcssa.i.i4842928 = ptrtoaddr ptr %.0.lcssa.i.i484 to i64
  %.020.lcssa.i.i4822930 = ptrtoaddr ptr %.020.lcssa.i.i482 to i64
  %i.bwk = icmp slt i32 %.018.lcssa.i.i483, %i.bwf
  br i1 %i.bwk, label %.lr.ph93.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph93.i.i.preheader:                           ; preds = %.preheader.i.i480
  %i.bwl = xor i32 %.018.lcssa.i.i483, -1
  %i.bwm = add i32 %i.bwf, %i.bwl                 ; 2 uses
  %i.bwn = zext i32 %i.bwm to i64
  %i.bwo = add nuw nsw i64 %i.bwn, 1              ; 2 uses
  %min.iters.check2934 = icmp ult i32 %i.bwm, 11
  br i1 %min.iters.check2934, label %.lr.ph93.i.i.preheader3498, label %vector.memcheck2926

vector.memcheck2926:                              ; preds = %.lr.ph93.i.i.preheader
  %i.bwp = sub i64 %.0.lcssa.i.i4842928, %.022.lcssa.i.i4812927
  %diff.check2929 = icmp ugt i64 %i.bwp, -16
  %i.bwq = sub i64 %.020.lcssa.i.i4822930, %.022.lcssa.i.i4812927
  %diff.check2931 = icmp ugt i64 %i.bwq, -16
  %conflict.rdx2932 = or i1 %diff.check2929, %diff.check2931
  br i1 %conflict.rdx2932, label %.lr.ph93.i.i.preheader3498, label %vector.ph2935

vector.ph2935:                                    ; preds = %vector.memcheck2926
  %n.vec2936 = and i64 %i.bwo, 8589934588         ; 4 uses
  %i.bwr = shl nuw nsw i64 %n.vec2936, 2          ; 3 uses
  %i.bws = getelementptr i8, ptr %.0.lcssa.i.i484, i64 %i.bwr
  %i.bwt = trunc i64 %n.vec2936 to i32
  %i.bwu = add i32 %.018.lcssa.i.i483, %i.bwt
  %i.bwv = getelementptr i8, ptr %.020.lcssa.i.i482, i64 %i.bwr
  %i.bww = getelementptr i8, ptr %.022.lcssa.i.i481, i64 %i.bwr
  br label %vector.body2937

vector.body2937:                                  ; preds = %vector.body2937, %vector.ph2935
  %index2938 = phi i64 [ 0, %vector.ph2935 ], [ %index.next2944, %vector.body2937 ] ; 2 uses
  %i.bwx = shl i64 %index2938, 2                  ; 3 uses
  %next.gep2939 = getelementptr i8, ptr %.0.lcssa.i.i484, i64 %i.bwx
  %next.gep2940 = getelementptr i8, ptr %.020.lcssa.i.i482, i64 %i.bwx
  %next.gep2941 = getelementptr i8, ptr %.022.lcssa.i.i481, i64 %i.bwx
  %wide.load2942 = load <4 x float>, ptr %next.gep2939, align 4, !tbaa !59
  %wide.load2943 = load <4 x float>, ptr %next.gep2940, align 4, !tbaa !59
  %i.bwy = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %wide.load2942, <4 x float> %wide.load2943)
  store <4 x float> %i.bwy, ptr %next.gep2941, align 4, !tbaa !59
  %index.next2944 = add nuw i64 %index2938, 4     ; 2 uses
  %i.bwz = icmp eq i64 %index.next2944, %n.vec2936
  br i1 %i.bwz, label %middle.block2945, label %vector.body2937, !llvm.loop !171

middle.block2945:                                 ; preds = %vector.body2937
  %cmp.n2946 = icmp eq i64 %i.bwo, %n.vec2936
  br i1 %cmp.n2946, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i.preheader3498

.lr.ph93.i.i.preheader3498:                       ; preds = %vector.memcheck2926, %.lr.ph93.i.i.preheader, %middle.block2945
  %.192.i.i.ph = phi ptr [ %.0.lcssa.i.i484, %vector.memcheck2926 ], [ %.0.lcssa.i.i484, %.lr.ph93.i.i.preheader ], [ %i.bws, %middle.block2945 ] ; 2 uses
  %.11991.i.i.ph = phi i32 [ %.018.lcssa.i.i483, %vector.memcheck2926 ], [ %.018.lcssa.i.i483, %.lr.ph93.i.i.preheader ], [ %i.bwu, %middle.block2945 ] ; 4 uses
  %.12190.i.i.ph = phi ptr [ %.020.lcssa.i.i482, %vector.memcheck2926 ], [ %.020.lcssa.i.i482, %.lr.ph93.i.i.preheader ], [ %i.bwv, %middle.block2945 ] ; 2 uses
  %.12389.i.i.ph = phi ptr [ %.022.lcssa.i.i481, %vector.memcheck2926 ], [ %.022.lcssa.i.i481, %.lr.ph93.i.i.preheader ], [ %i.bww, %middle.block2945 ] ; 2 uses
  %i.bxa = sub i32 %i.bwf, %.11991.i.i.ph
  %xtraiter3940 = and i32 %i.bxa, 3               ; 2 uses
  %lcmp.mod3941.not = icmp eq i32 %xtraiter3940, 0
  br i1 %lcmp.mod3941.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol

.lr.ph93.i.i.prol:                                ; preds = %.lr.ph93.i.i.preheader3498, %.lr.ph93.i.i.prol
  %.192.i.i.prol = phi ptr [ %i.bxe, %.lr.ph93.i.i.prol ], [ %.192.i.i.ph, %.lr.ph93.i.i.preheader3498 ] ; 2 uses
  %.11991.i.i.prol = phi i32 [ %i.bxh, %.lr.ph93.i.i.prol ], [ %.11991.i.i.ph, %.lr.ph93.i.i.preheader3498 ]
  %.12190.i.i.prol = phi ptr [ %i.bxf, %.lr.ph93.i.i.prol ], [ %.12190.i.i.ph, %.lr.ph93.i.i.preheader3498 ] ; 2 uses
  %.12389.i.i.prol = phi ptr [ %i.bxg, %.lr.ph93.i.i.prol ], [ %.12389.i.i.ph, %.lr.ph93.i.i.preheader3498 ] ; 2 uses
  %prol.iter3942 = phi i32 [ %prol.iter3942.next, %.lr.ph93.i.i.prol ], [ 0, %.lr.ph93.i.i.preheader3498 ]
  %i.bxb = load float, ptr %.192.i.i.prol, align 4, !tbaa !59
  %i.bxc = load float, ptr %.12190.i.i.prol, align 4, !tbaa !59
  %i.bxd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bxb, float %i.bxc)
  store float %i.bxd, ptr %.12389.i.i.prol, align 4, !tbaa !59
  %i.bxe = getelementptr inbounds nuw i8, ptr %.192.i.i.prol, i64 4 ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr %.12190.i.i.prol, i64 4 ; 2 uses
  %i.bxg = getelementptr inbounds nuw i8, ptr %.12389.i.i.prol, i64 4 ; 2 uses
  %i.bxh = add nuw nsw i32 %.11991.i.i.prol, 1    ; 2 uses
  %prol.iter3942.next = add i32 %prol.iter3942, 1 ; 2 uses
  %prol.iter3942.cmp.not = icmp eq i32 %prol.iter3942.next, %xtraiter3940
  br i1 %prol.iter3942.cmp.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol, !llvm.loop !172

.lr.ph93.i.i.prol.loopexit:                       ; preds = %.lr.ph93.i.i.prol, %.lr.ph93.i.i.preheader3498
  %.192.i.i.unr = phi ptr [ %.192.i.i.ph, %.lr.ph93.i.i.preheader3498 ], [ %i.bxe, %.lr.ph93.i.i.prol ]
  %.11991.i.i.unr = phi i32 [ %.11991.i.i.ph, %.lr.ph93.i.i.preheader3498 ], [ %i.bxh, %.lr.ph93.i.i.prol ]
  %.12190.i.i.unr = phi ptr [ %.12190.i.i.ph, %.lr.ph93.i.i.preheader3498 ], [ %i.bxf, %.lr.ph93.i.i.prol ]
  %.12389.i.i.unr = phi ptr [ %.12389.i.i.ph, %.lr.ph93.i.i.preheader3498 ], [ %i.bxg, %.lr.ph93.i.i.prol ]
  %i.bxi = sub i32 %.11991.i.i.ph, %i.bwf
  %i.bxj = icmp ugt i32 %i.bxi, -4
  br i1 %i.bxj, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i

.lr.ph.i.i486:                                    ; preds = %bb.dt, %.lr.ph.i.i486
  %.085.i.i = phi ptr [ %i.bzz, %.lr.ph.i.i486 ], [ %0, %bb.dt ] ; 2 uses
  %.01884.i.i = phi i32 [ %i.cac, %.lr.ph.i.i486 ], [ 0, %bb.dt ]
  %.02083.i.i = phi ptr [ %i.caa, %.lr.ph.i.i486 ], [ %1, %bb.dt ] ; 2 uses
  %.02282.i.i = phi ptr [ %i.cab, %.lr.ph.i.i486 ], [ %2, %bb.dt ] ; 2 uses
  %i.bxk = load <4 x float>, ptr %.085.i.i, align 1, !tbaa !60
  %i.bxl = load <4 x float>, ptr %.02083.i.i, align 1, !tbaa !60
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
  %i.byt = fadd fast <4 x float> %reass.mul81.i.i, %i.bys
  %i.byu = fmul fast <4 x float> %i.byt, %i.bxl
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
  %i.bzs = fadd fast <4 x float> %i.bzf, %i.bzr
  %i.bzt = fadd fast <4 x float> %i.bzs, splat (float 1.000000e+00)
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
  %.0.lcssa.i35.i4772909 = ptrtoaddr ptr %.0.lcssa.i35.i477 to i64
  %.019.lcssa.i.i4752908 = ptrtoaddr ptr %.019.lcssa.i.i475 to i64
  %i.cbo = xor i32 %.017.lcssa.i.i476, -1
  %i.cbp = add i32 %i.bwf, %i.cbo                 ; 2 uses
  %i.cbq = zext i32 %i.cbp to i64
  %i.cbr = add nuw nsw i64 %i.cbq, 1              ; 2 uses
  %min.iters.check2912 = icmp ult i32 %i.cbp, 3
  %i.cbs = sub i64 %.0.lcssa.i35.i4772909, %.019.lcssa.i.i4752908
  %diff.check2910 = icmp ugt i64 %i.cbs, -16
  %or.cond3384 = select i1 %min.iters.check2912, i1 true, i1 %diff.check2910
  br i1 %or.cond3384, label %.lr.ph88.i.i.preheader3503, label %vector.ph2913

vector.ph2913:                                    ; preds = %.lr.ph88.i.i.preheader
  %n.vec2914 = and i64 %i.cbr, 8589934588         ; 4 uses
  %i.cbt = shl nuw nsw i64 %n.vec2914, 2          ; 2 uses
  %i.cbu = getelementptr i8, ptr %.0.lcssa.i35.i477, i64 %i.cbt
  %i.cbv = trunc i64 %n.vec2914 to i32
  %i.cbw = add i32 %.017.lcssa.i.i476, %i.cbv
  %i.cbx = getelementptr i8, ptr %.019.lcssa.i.i475, i64 %i.cbt
  %i.cby = insertelement <2 x float> poison, float %i.cbf, i64 0
  %i.cbz = shufflevector <2 x float> %i.cby, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2915

vector.body2915:                                  ; preds = %vector.body2915, %vector.ph2913
  %index2916 = phi i64 [ 0, %vector.ph2913 ], [ %index.next2920, %vector.body2915 ] ; 2 uses
  %i.cca = shl i64 %index2916, 2                  ; 2 uses
  %next.gep2917 = getelementptr i8, ptr %.0.lcssa.i35.i477, i64 %i.cca
  %next.gep2918 = getelementptr i8, ptr %.019.lcssa.i.i475, i64 %i.cca
  %wide.load2919 = load <4 x float>, ptr %next.gep2917, align 4, !tbaa !59
  %i.ccb = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %wide.load2919, <4 x float> %i.cbz)
  store <4 x float> %i.ccb, ptr %next.gep2918, align 4, !tbaa !59
  %index.next2920 = add nuw i64 %index2916, 4     ; 2 uses
  %i.ccc = icmp eq i64 %index.next2920, %n.vec2914
  br i1 %i.ccc, label %middle.block2921, label %vector.body2915, !llvm.loop !175

middle.block2921:                                 ; preds = %vector.body2915
  %cmp.n2922 = icmp eq i64 %i.cbr, %n.vec2914
  br i1 %cmp.n2922, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i.preheader3503

.lr.ph88.i.i.preheader3503:                       ; preds = %.lr.ph88.i.i.preheader, %middle.block2921
  %.187.i.i.ph = phi ptr [ %.0.lcssa.i35.i477, %.lr.ph88.i.i.preheader ], [ %i.cbu, %middle.block2921 ] ; 2 uses
  %.11886.i.i.ph = phi i32 [ %.017.lcssa.i.i476, %.lr.ph88.i.i.preheader ], [ %i.cbw, %middle.block2921 ] ; 4 uses
  %.12085.i.i.ph = phi ptr [ %.019.lcssa.i.i475, %.lr.ph88.i.i.preheader ], [ %i.cbx, %middle.block2921 ] ; 2 uses
  %i.ccd = sub i32 %i.bwf, %.11886.i.i.ph
  %xtraiter3937 = and i32 %i.ccd, 3               ; 2 uses
  %lcmp.mod3938.not = icmp eq i32 %xtraiter3937, 0
  br i1 %lcmp.mod3938.not, label %.lr.ph88.i.i.prol.loopexit, label %.lr.ph88.i.i.prol

.lr.ph88.i.i.prol:                                ; preds = %.lr.ph88.i.i.preheader3503, %.lr.ph88.i.i.prol
  %.187.i.i.prol = phi ptr [ %i.ccg, %.lr.ph88.i.i.prol ], [ %.187.i.i.ph, %.lr.ph88.i.i.preheader3503 ] ; 2 uses
  %.11886.i.i.prol = phi i32 [ %i.cci, %.lr.ph88.i.i.prol ], [ %.11886.i.i.ph, %.lr.ph88.i.i.preheader3503 ]
  %.12085.i.i.prol = phi ptr [ %i.cch, %.lr.ph88.i.i.prol ], [ %.12085.i.i.ph, %.lr.ph88.i.i.preheader3503 ] ; 2 uses
  %prol.iter3939 = phi i32 [ %prol.iter3939.next, %.lr.ph88.i.i.prol ], [ 0, %.lr.ph88.i.i.preheader3503 ]
  %i.cce = load float, ptr %.187.i.i.prol, align 4, !tbaa !59
  %i.ccf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cce, float %i.cbf)
  store float %i.ccf, ptr %.12085.i.i.prol, align 4, !tbaa !59
  %i.ccg = getelementptr inbounds nuw i8, ptr %.187.i.i.prol, i64 4 ; 2 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %.12085.i.i.prol, i64 4 ; 2 uses
  %i.cci = add nuw nsw i32 %.11886.i.i.prol, 1    ; 2 uses
  %prol.iter3939.next = add i32 %prol.iter3939, 1 ; 2 uses
  %prol.iter3939.cmp.not = icmp eq i32 %prol.iter3939.next, %xtraiter3937
  br i1 %prol.iter3939.cmp.not, label %.lr.ph88.i.i.prol.loopexit, label %.lr.ph88.i.i.prol, !llvm.loop !176

.lr.ph88.i.i.prol.loopexit:                       ; preds = %.lr.ph88.i.i.prol, %.lr.ph88.i.i.preheader3503
  %.187.i.i.unr = phi ptr [ %.187.i.i.ph, %.lr.ph88.i.i.preheader3503 ], [ %i.ccg, %.lr.ph88.i.i.prol ]
  %.11886.i.i.unr = phi i32 [ %.11886.i.i.ph, %.lr.ph88.i.i.preheader3503 ], [ %i.cci, %.lr.ph88.i.i.prol ]
  %.12085.i.i.unr = phi ptr [ %.12085.i.i.ph, %.lr.ph88.i.i.preheader3503 ], [ %i.cch, %.lr.ph88.i.i.prol ]
  %i.ccj = sub i32 %.11886.i.i.ph, %i.bwf
  %i.cck = icmp ugt i32 %i.ccj, -4
  br i1 %i.cck, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i

.lr.ph.i37.i479:                                  ; preds = %bb.dy, %.lr.ph.i37.i479
  %.082.i.i = phi ptr [ %i.cez, %.lr.ph.i37.i479 ], [ %0, %bb.dy ] ; 2 uses
  %.01781.i.i = phi i32 [ %i.cfb, %.lr.ph.i37.i479 ], [ 0, %bb.dy ]
  %.01980.i.i = phi ptr [ %i.cfa, %.lr.ph.i37.i479 ], [ %2, %bb.dy ] ; 2 uses
  %i.ccl = load <4 x float>, ptr %.082.i.i, align 1, !tbaa !60
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
  %i.cdt = fadd fast <4 x float> %reass.mul79.i.i, %i.cds
  %i.cdu = fmul fast <4 x float> %i.cdt, %i.cbk
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
  %i.ces = fadd fast <4 x float> %i.cef, %i.cer
  %i.cet = fadd fast <4 x float> %i.ces, splat (float 1.000000e+00)
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
  %i.cgb = phi fast <4 x float> [ %i.cfy, %bb.eb ], [ %i.cga, %bb.ec ]
  %i.cgc = icmp sgt i32 %i.bwf, 3
  br i1 %i.cgc, label %.lr.ph.i49.i473, label %.preheader.i40.i

.lr.ph.i49.i473:                                  ; preds = %bb.ed
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
  %i.chk = fadd fast <4 x float> %reass.mul79.i52.i, %i.chj
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
  %.0.lcssa.i43.i2890 = ptrtoaddr ptr %.0.lcssa.i43.i to i64
  %.019.lcssa.i41.i2889 = ptrtoaddr ptr %.019.lcssa.i41.i to i64
  %i.chn = xor i32 %.017.lcssa.i42.i, -1
  %i.cho = add i32 %i.bwf, %i.chn                 ; 2 uses
  %i.chp = zext i32 %i.cho to i64
  %i.chq = add nuw nsw i64 %i.chp, 1              ; 2 uses
  %min.iters.check2893 = icmp ult i32 %i.cho, 3
  %i.chr = sub i64 %.0.lcssa.i43.i2890, %.019.lcssa.i41.i2889
  %diff.check2891 = icmp ugt i64 %i.chr, -16
  %or.cond3385 = select i1 %min.iters.check2893, i1 true, i1 %diff.check2891
  br i1 %or.cond3385, label %.lr.ph88.i44.i.preheader3507, label %vector.ph2894

vector.ph2894:                                    ; preds = %.lr.ph88.i44.i.preheader
  %n.vec2895 = and i64 %i.chq, 8589934588         ; 4 uses
  %i.chs = shl nuw nsw i64 %n.vec2895, 2          ; 2 uses
  %i.cht = getelementptr i8, ptr %.0.lcssa.i43.i, i64 %i.chs
  %i.chu = trunc i64 %n.vec2895 to i32
  %i.chv = add i32 %.017.lcssa.i42.i, %i.chu
  %i.chw = getelementptr i8, ptr %.019.lcssa.i41.i, i64 %i.chs
  %i.chx = insertelement <2 x float> poison, float %i.cfw, i64 0
  %i.chy = shufflevector <2 x float> %i.chx, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2896

vector.body2896:                                  ; preds = %vector.body2896, %vector.ph2894
  %index2897 = phi i64 [ 0, %vector.ph2894 ], [ %index.next2901, %vector.body2896 ] ; 2 uses
  %i.chz = shl i64 %index2897, 2                  ; 2 uses
  %next.gep2898 = getelementptr i8, ptr %.0.lcssa.i43.i, i64 %i.chz
  %next.gep2899 = getelementptr i8, ptr %.019.lcssa.i41.i, i64 %i.chz
  %wide.load2900 = load <4 x float>, ptr %next.gep2898, align 4, !tbaa !59
  %i.cia = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.chy, <4 x float> %wide.load2900)
  store <4 x float> %i.cia, ptr %next.gep2899, align 4, !tbaa !59
  %index.next2901 = add nuw i64 %index2897, 4     ; 2 uses
  %i.cib = icmp eq i64 %index.next2901, %n.vec2895
  br i1 %i.cib, label %middle.block2902, label %vector.body2896, !llvm.loop !179

middle.block2902:                                 ; preds = %vector.body2896
  %cmp.n2903 = icmp eq i64 %i.chq, %n.vec2895
  br i1 %cmp.n2903, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i.preheader3507

.lr.ph88.i44.i.preheader3507:                     ; preds = %.lr.ph88.i44.i.preheader, %middle.block2902
  %.187.i45.i.ph = phi ptr [ %.0.lcssa.i43.i, %.lr.ph88.i44.i.preheader ], [ %i.cht, %middle.block2902 ] ; 2 uses
  %.11886.i46.i.ph = phi i32 [ %.017.lcssa.i42.i, %.lr.ph88.i44.i.preheader ], [ %i.chv, %middle.block2902 ] ; 4 uses
  %.12085.i47.i.ph = phi ptr [ %.019.lcssa.i41.i, %.lr.ph88.i44.i.preheader ], [ %i.chw, %middle.block2902 ] ; 2 uses
  %i.cic = sub i32 %i.bwf, %.11886.i46.i.ph
  %xtraiter3934 = and i32 %i.cic, 3               ; 2 uses
  %lcmp.mod3935.not = icmp eq i32 %xtraiter3934, 0
  br i1 %lcmp.mod3935.not, label %.lr.ph88.i44.i.prol.loopexit, label %.lr.ph88.i44.i.prol

.lr.ph88.i44.i.prol:                              ; preds = %.lr.ph88.i44.i.preheader3507, %.lr.ph88.i44.i.prol
  %.187.i45.i.prol = phi ptr [ %i.cif, %.lr.ph88.i44.i.prol ], [ %.187.i45.i.ph, %.lr.ph88.i44.i.preheader3507 ] ; 2 uses
  %.11886.i46.i.prol = phi i32 [ %i.cih, %.lr.ph88.i44.i.prol ], [ %.11886.i46.i.ph, %.lr.ph88.i44.i.preheader3507 ]
  %.12085.i47.i.prol = phi ptr [ %i.cig, %.lr.ph88.i44.i.prol ], [ %.12085.i47.i.ph, %.lr.ph88.i44.i.preheader3507 ] ; 2 uses
  %prol.iter3936 = phi i32 [ %prol.iter3936.next, %.lr.ph88.i44.i.prol ], [ 0, %.lr.ph88.i44.i.preheader3507 ]
  %i.cid = load float, ptr %.187.i45.i.prol, align 4, !tbaa !59
  %i.cie = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.cfw, float %i.cid)
  store float %i.cie, ptr %.12085.i47.i.prol, align 4, !tbaa !59
  %i.cif = getelementptr inbounds nuw i8, ptr %.187.i45.i.prol, i64 4 ; 2 uses
  %i.cig = getelementptr inbounds nuw i8, ptr %.12085.i47.i.prol, i64 4 ; 2 uses
  %i.cih = add nuw nsw i32 %.11886.i46.i.prol, 1  ; 2 uses
  %prol.iter3936.next = add i32 %prol.iter3936, 1 ; 2 uses
  %prol.iter3936.cmp.not = icmp eq i32 %prol.iter3936.next, %xtraiter3934
  br i1 %prol.iter3936.cmp.not, label %.lr.ph88.i44.i.prol.loopexit, label %.lr.ph88.i44.i.prol, !llvm.loop !180

.lr.ph88.i44.i.prol.loopexit:                     ; preds = %.lr.ph88.i44.i.prol, %.lr.ph88.i44.i.preheader3507
  %.187.i45.i.unr = phi ptr [ %.187.i45.i.ph, %.lr.ph88.i44.i.preheader3507 ], [ %i.cif, %.lr.ph88.i44.i.prol ]
  %.11886.i46.i.unr = phi i32 [ %.11886.i46.i.ph, %.lr.ph88.i44.i.preheader3507 ], [ %i.cih, %.lr.ph88.i44.i.prol ]
  %.12085.i47.i.unr = phi ptr [ %.12085.i47.i.ph, %.lr.ph88.i44.i.preheader3507 ], [ %i.cig, %.lr.ph88.i44.i.prol ]
  %i.cii = sub i32 %.11886.i46.i.ph, %i.bwf
  %i.cij = icmp ugt i32 %i.cii, -4
  br i1 %i.cij, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i

bb.ee:                                            ; preds = %bb.ee, %.lr.ph.i49.i473
  %.082.i53.i = phi ptr [ %1, %.lr.ph.i49.i473 ], [ %i.cjq, %bb.ee ] ; 2 uses
  %.01781.i54.i = phi i32 [ 0, %.lr.ph.i49.i473 ], [ %i.cjs, %bb.ee ]
  %.01980.i55.i = phi ptr [ %2, %.lr.ph.i49.i473 ], [ %i.cjr, %bb.ee ] ; 2 uses
  %i.cik = load <4 x float>, ptr %.082.i53.i, align 1, !tbaa !60
  %i.cil = fmul fast <4 x float> %i.cik, %i.chk
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
  %i.cjj = fadd fast <4 x float> %i.ciw, %i.cji
  %i.cjk = fadd fast <4 x float> %i.cjj, splat (float 1.000000e+00)
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
  %i.ckq = load <4 x float>, ptr %.074.i.i, align 1, !tbaa !60
  %i.ckr = load float, ptr %.01172.i.i, align 4, !tbaa !59
  %i.cks = insertelement <4 x float> poison, float %i.ckr, i64 0
  %i.ckt = shufflevector <4 x float> %i.cks, <4 x float> poison, <4 x i32> zeroinitializer
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
  %i.cmb = fadd fast <4 x float> %reass.mul70.i.i, %i.cma
  %i.cmc = fmul fast <4 x float> %i.cmb, %i.ckt
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
  %i.cna = fadd fast <4 x float> %i.cmn, %i.cmz
  %i.cnb = fadd fast <4 x float> %i.cna, splat (float 1.000000e+00)
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
  %i.cnp = load <4 x float>, ptr %.061.i.i, align 1, !tbaa !60
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
  %i.cox = fadd fast <4 x float> %reass.mul58.i.i, %i.cow
  %i.coy = fmul fast <4 x float> %i.cox, %i.cnn
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
  %i.cpw = fadd fast <4 x float> %i.cpj, %i.cpv
  %i.cpx = fadd fast <4 x float> %i.cpw, splat (float 1.000000e+00)
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
  %i.cqk = load <4 x float>, ptr %0, align 1, !tbaa !60
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
  %i.crs = fadd fast <4 x float> %reass.mul68.i.i, %i.crr
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %.lr.ph.i63.i
  %.071.i.i = phi ptr [ %1, %.lr.ph.i63.i ], [ %i.ctb, %bb.el ] ; 2 uses
  %.0970.i.i = phi i32 [ 0, %.lr.ph.i63.i ], [ %i.ctd, %bb.el ]
  %.01069.i.i = phi ptr [ %2, %.lr.ph.i63.i ], [ %i.ctc, %bb.el ] ; 2 uses
  %i.crt = load float, ptr %.071.i.i, align 4, !tbaa !59
  %i.cru = insertelement <4 x float> poison, float %i.crt, i64 0
  %i.crv = shufflevector <4 x float> %i.cru, <4 x float> poison, <4 x i32> zeroinitializer
  %i.crw = fmul fast <4 x float> %i.crv, %i.crs
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
  %i.csu = fadd fast <4 x float> %i.csh, %i.cst
  %i.csv = fadd fast <4 x float> %i.csu, splat (float 1.000000e+00)
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
  %xtraiter3922 = and i32 %i.ctk, 3               ; 3 uses
  %i.ctl = icmp ult i32 %i.cti, 12
  br i1 %i.ctl, label %.lr.ph.i.i547.epil.preheader, label %.lr.ph.i.i547.preheader.new

.lr.ph.i.i547.preheader.new:                      ; preds = %.lr.ph.i.i547.preheader
  %unroll_iter3929 = and i32 %i.ctk, 2147483644
  br label %.lr.ph.i.i547

.preheader.loopexit.i.i552.unr-lcssa:             ; preds = %.lr.ph.i.i547
  %lcmp.mod3924.not = icmp eq i32 %xtraiter3922, 0
  br i1 %lcmp.mod3924.not, label %.preheader.loopexit.i.i552, label %.lr.ph.i.i547.epil.preheader

.lr.ph.i.i547.epil.preheader:                     ; preds = %.preheader.loopexit.i.i552.unr-lcssa, %.lr.ph.i.i547.preheader
  %.028.i.i548.epil.init = phi ptr [ %0, %.lr.ph.i.i547.preheader ], [ %i.cvs, %.preheader.loopexit.i.i552.unr-lcssa ]
  %.02026.i.i550.epil.init = phi ptr [ %1, %.lr.ph.i.i547.preheader ], [ %i.cvt, %.preheader.loopexit.i.i552.unr-lcssa ]
  %.02225.i.i551.epil.init = phi ptr [ %2, %.lr.ph.i.i547.preheader ], [ %i.cvu, %.preheader.loopexit.i.i552.unr-lcssa ]
  %lcmp.mod3928 = icmp ne i32 %xtraiter3922, 0
  tail call void @llvm.assume(i1 %lcmp.mod3928)
  br label %.lr.ph.i.i547.epil

.lr.ph.i.i547.epil:                               ; preds = %.lr.ph.i.i547.epil, %.lr.ph.i.i547.epil.preheader
  %.028.i.i548.epil = phi ptr [ %i.ctp, %.lr.ph.i.i547.epil ], [ %.028.i.i548.epil.init, %.lr.ph.i.i547.epil.preheader ] ; 2 uses
  %.02026.i.i550.epil = phi ptr [ %i.ctq, %.lr.ph.i.i547.epil ], [ %.02026.i.i550.epil.init, %.lr.ph.i.i547.epil.preheader ] ; 2 uses
  %.02225.i.i551.epil = phi ptr [ %i.ctr, %.lr.ph.i.i547.epil ], [ %.02225.i.i551.epil.init, %.lr.ph.i.i547.epil.preheader ] ; 2 uses
  %epil.iter3923 = phi i32 [ %epil.iter3923.next, %.lr.ph.i.i547.epil ], [ 0, %.lr.ph.i.i547.epil.preheader ]
  %i.ctm = load <4 x float>, ptr %.028.i.i548.epil, align 1, !tbaa !60
  %i.ctn = load <4 x float>, ptr %.02026.i.i550.epil, align 1, !tbaa !60
  %i.cto = fsub fast <4 x float> %i.ctn, %i.ctm
  store <4 x float> %i.cto, ptr %.02225.i.i551.epil, align 1, !tbaa !60
  %i.ctp = getelementptr inbounds nuw i8, ptr %.028.i.i548.epil, i64 16 ; 2 uses
  %i.ctq = getelementptr inbounds nuw i8, ptr %.02026.i.i550.epil, i64 16 ; 2 uses
  %i.ctr = getelementptr inbounds nuw i8, ptr %.02225.i.i551.epil, i64 16 ; 2 uses
  %epil.iter3923.next = add i32 %epil.iter3923, 1 ; 2 uses
  %epil.iter3923.cmp.not = icmp eq i32 %epil.iter3923.next, %xtraiter3922
  br i1 %epil.iter3923.cmp.not, label %.preheader.loopexit.i.i552, label %.lr.ph.i.i547.epil, !llvm.loop !186

.preheader.loopexit.i.i552:                       ; preds = %.lr.ph.i.i547.epil, %.preheader.loopexit.i.i552.unr-lcssa
  %.lcssa3518 = phi ptr [ %i.cvs, %.preheader.loopexit.i.i552.unr-lcssa ], [ %i.ctp, %.lr.ph.i.i547.epil ]
  %.lcssa3517 = phi ptr [ %i.cvt, %.preheader.loopexit.i.i552.unr-lcssa ], [ %i.ctq, %.lr.ph.i.i547.epil ]
  %.lcssa3516 = phi ptr [ %i.cvu, %.preheader.loopexit.i.i552.unr-lcssa ], [ %i.ctr, %.lr.ph.i.i547.epil ]
  %i.cts = and i32 %i.cte, 2147483644
  br label %.preheader.i.i536

.preheader.i.i536:                                ; preds = %.preheader.loopexit.i.i552, %bb.eo
  %.022.lcssa.i.i537 = phi ptr [ %2, %bb.eo ], [ %.lcssa3516, %.preheader.loopexit.i.i552 ] ; 5 uses
  %.020.lcssa.i.i538 = phi ptr [ %1, %bb.eo ], [ %.lcssa3517, %.preheader.loopexit.i.i552 ] ; 5 uses
  %.018.lcssa.i.i539 = phi i32 [ 0, %bb.eo ], [ %i.cts, %.preheader.loopexit.i.i552 ] ; 5 uses
  %.0.lcssa.i.i540 = phi ptr [ %0, %bb.eo ], [ %.lcssa3518, %.preheader.loopexit.i.i552 ] ; 5 uses
  %.022.lcssa.i.i5372862 = ptrtoaddr ptr %.022.lcssa.i.i537 to i64 ; 2 uses
  %.020.lcssa.i.i5382863 = ptrtoaddr ptr %.020.lcssa.i.i538 to i64
  %.0.lcssa.i.i5402865 = ptrtoaddr ptr %.0.lcssa.i.i540 to i64
  %i.ctt = icmp slt i32 %.018.lcssa.i.i539, %i.cte
  br i1 %i.ctt, label %.lr.ph36.i.i541.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph36.i.i541.preheader:                        ; preds = %.preheader.i.i536
  %i.ctu = xor i32 %.018.lcssa.i.i539, -1
  %i.ctv = add i32 %i.cte, %i.ctu                 ; 2 uses
  %i.ctw = zext i32 %i.ctv to i64
  %i.ctx = add nuw nsw i64 %i.ctw, 1              ; 2 uses
  %min.iters.check2869 = icmp ult i32 %i.ctv, 11
  br i1 %min.iters.check2869, label %.lr.ph36.i.i541.preheader3514, label %vector.memcheck2861

vector.memcheck2861:                              ; preds = %.lr.ph36.i.i541.preheader
  %i.cty = sub i64 %.020.lcssa.i.i5382863, %.022.lcssa.i.i5372862
  %diff.check2864 = icmp ugt i64 %i.cty, -32
  %i.ctz = sub i64 %.0.lcssa.i.i5402865, %.022.lcssa.i.i5372862
  %diff.check2866 = icmp ugt i64 %i.ctz, -32
  %conflict.rdx2867 = or i1 %diff.check2864, %diff.check2866
  br i1 %conflict.rdx2867, label %.lr.ph36.i.i541.preheader3514, label %vector.ph2870

vector.ph2870:                                    ; preds = %vector.memcheck2861
  %n.vec2871 = and i64 %i.ctx, 8589934584         ; 4 uses
  %i.cua = shl nuw nsw i64 %n.vec2871, 2          ; 3 uses
  %i.cub = getelementptr i8, ptr %.0.lcssa.i.i540, i64 %i.cua
  %i.cuc = trunc i64 %n.vec2871 to i32
  %i.cud = add i32 %.018.lcssa.i.i539, %i.cuc
  %i.cue = getelementptr i8, ptr %.020.lcssa.i.i538, i64 %i.cua
  %i.cuf = getelementptr i8, ptr %.022.lcssa.i.i537, i64 %i.cua
  br label %vector.body2872

vector.body2872:                                  ; preds = %vector.body2872, %vector.ph2870
  %index2873 = phi i64 [ 0, %vector.ph2870 ], [ %index.next2881, %vector.body2872 ] ; 2 uses
  %i.cug = shl i64 %index2873, 2                  ; 3 uses
  %next.gep2874 = getelementptr i8, ptr %.0.lcssa.i.i540, i64 %i.cug ; 2 uses
  %next.gep2875 = getelementptr i8, ptr %.020.lcssa.i.i538, i64 %i.cug ; 2 uses
  %next.gep2876 = getelementptr i8, ptr %.022.lcssa.i.i537, i64 %i.cug ; 2 uses
  %i.cuh = getelementptr i8, ptr %next.gep2875, i64 16
  %wide.load2877 = load <4 x float>, ptr %next.gep2875, align 4, !tbaa !59
  %wide.load2878 = load <4 x float>, ptr %i.cuh, align 4, !tbaa !59
  %i.cui = getelementptr i8, ptr %next.gep2874, i64 16
  %wide.load2879 = load <4 x float>, ptr %next.gep2874, align 4, !tbaa !59
  %wide.load2880 = load <4 x float>, ptr %i.cui, align 4, !tbaa !59
  %i.cuj = fsub fast <4 x float> %wide.load2877, %wide.load2879
  %i.cuk = fsub fast <4 x float> %wide.load2878, %wide.load2880
  %i.cul = getelementptr i8, ptr %next.gep2876, i64 16
  store <4 x float> %i.cuj, ptr %next.gep2876, align 4, !tbaa !59
  store <4 x float> %i.cuk, ptr %i.cul, align 4, !tbaa !59
  %index.next2881 = add nuw i64 %index2873, 8     ; 2 uses
  %i.cum = icmp eq i64 %index.next2881, %n.vec2871
  br i1 %i.cum, label %middle.block2882, label %vector.body2872, !llvm.loop !187

middle.block2882:                                 ; preds = %vector.body2872
  %cmp.n2883 = icmp eq i64 %i.ctx, %n.vec2871
  br i1 %cmp.n2883, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph36.i.i541.preheader3514

.lr.ph36.i.i541.preheader3514:                    ; preds = %vector.memcheck2861, %.lr.ph36.i.i541.preheader, %middle.block2882
  %.135.i.i542.ph = phi ptr [ %.0.lcssa.i.i540, %vector.memcheck2861 ], [ %.0.lcssa.i.i540, %.lr.ph36.i.i541.preheader ], [ %i.cub, %middle.block2882 ] ; 2 uses
  %.11934.i.i543.ph = phi i32 [ %.018.lcssa.i.i539, %vector.memcheck2861 ], [ %.018.lcssa.i.i539, %.lr.ph36.i.i541.preheader ], [ %i.cud, %middle.block2882 ] ; 4 uses
  %.12133.i.i544.ph = phi ptr [ %.020.lcssa.i.i538, %vector.memcheck2861 ], [ %.020.lcssa.i.i538, %.lr.ph36.i.i541.preheader ], [ %i.cue, %middle.block2882 ] ; 2 uses
  %.12332.i.i545.ph = phi ptr [ %.022.lcssa.i.i537, %vector.memcheck2861 ], [ %.022.lcssa.i.i537, %.lr.ph36.i.i541.preheader ], [ %i.cuf, %middle.block2882 ] ; 2 uses
  %i.cun = sub i32 %i.cte, %.11934.i.i543.ph
  %xtraiter3931 = and i32 %i.cun, 3               ; 2 uses
  %lcmp.mod3932.not = icmp eq i32 %xtraiter3931, 0
  br i1 %lcmp.mod3932.not, label %.lr.ph36.i.i541.prol.loopexit, label %.lr.ph36.i.i541.prol

.lr.ph36.i.i541.prol:                             ; preds = %.lr.ph36.i.i541.preheader3514, %.lr.ph36.i.i541.prol
  %.135.i.i542.prol = phi ptr [ %i.cur, %.lr.ph36.i.i541.prol ], [ %.135.i.i542.ph, %.lr.ph36.i.i541.preheader3514 ] ; 2 uses
  %.11934.i.i543.prol = phi i32 [ %i.cuu, %.lr.ph36.i.i541.prol ], [ %.11934.i.i543.ph, %.lr.ph36.i.i541.preheader3514 ]
  %.12133.i.i544.prol = phi ptr [ %i.cus, %.lr.ph36.i.i541.prol ], [ %.12133.i.i544.ph, %.lr.ph36.i.i541.preheader3514 ] ; 2 uses
  %.12332.i.i545.prol = phi ptr [ %i.cut, %.lr.ph36.i.i541.prol ], [ %.12332.i.i545.ph, %.lr.ph36.i.i541.preheader3514 ] ; 2 uses
  %prol.iter3933 = phi i32 [ %prol.iter3933.next, %.lr.ph36.i.i541.prol ], [ 0, %.lr.ph36.i.i541.preheader3514 ]
  %i.cuo = load float, ptr %.12133.i.i544.prol, align 4, !tbaa !59
  %i.cup = load float, ptr %.135.i.i542.prol, align 4, !tbaa !59
  %i.cuq = fsub fast float %i.cuo, %i.cup
  store float %i.cuq, ptr %.12332.i.i545.prol, align 4, !tbaa !59
  %i.cur = getelementptr inbounds nuw i8, ptr %.135.i.i542.prol, i64 4 ; 2 uses
  %i.cus = getelementptr inbounds nuw i8, ptr %.12133.i.i544.prol, i64 4 ; 2 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %.12332.i.i545.prol, i64 4 ; 2 uses
  %i.cuu = add nuw nsw i32 %.11934.i.i543.prol, 1 ; 2 uses
  %prol.iter3933.next = add i32 %prol.iter3933, 1 ; 2 uses
  %prol.iter3933.cmp.not = icmp eq i32 %prol.iter3933.next, %xtraiter3931
  br i1 %prol.iter3933.cmp.not, label %.lr.ph36.i.i541.prol.loopexit, label %.lr.ph36.i.i541.prol, !llvm.loop !188

.lr.ph36.i.i541.prol.loopexit:                    ; preds = %.lr.ph36.i.i541.prol, %.lr.ph36.i.i541.preheader3514
  %.135.i.i542.unr = phi ptr [ %.135.i.i542.ph, %.lr.ph36.i.i541.preheader3514 ], [ %i.cur, %.lr.ph36.i.i541.prol ]
  %.11934.i.i543.unr = phi i32 [ %.11934.i.i543.ph, %.lr.ph36.i.i541.preheader3514 ], [ %i.cuu, %.lr.ph36.i.i541.prol ]
  %.12133.i.i544.unr = phi ptr [ %.12133.i.i544.ph, %.lr.ph36.i.i541.preheader3514 ], [ %i.cus, %.lr.ph36.i.i541.prol ]
  %.12332.i.i545.unr = phi ptr [ %.12332.i.i545.ph, %.lr.ph36.i.i541.preheader3514 ], [ %i.cut, %.lr.ph36.i.i541.prol ]
  %i.cuv = sub i32 %.11934.i.i543.ph, %i.cte
  %i.cuw = icmp ugt i32 %i.cuv, -4
  br i1 %i.cuw, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph36.i.i541

.lr.ph.i.i547:                                    ; preds = %.lr.ph.i.i547, %.lr.ph.i.i547.preheader.new
  %.028.i.i548 = phi ptr [ %0, %.lr.ph.i.i547.preheader.new ], [ %i.cvs, %.lr.ph.i.i547 ] ; 5 uses
  %.02026.i.i550 = phi ptr [ %1, %.lr.ph.i.i547.preheader.new ], [ %i.cvt, %.lr.ph.i.i547 ] ; 5 uses
  %.02225.i.i551 = phi ptr [ %2, %.lr.ph.i.i547.preheader.new ], [ %i.cvu, %.lr.ph.i.i547 ] ; 5 uses
  %niter3930 = phi i32 [ 0, %.lr.ph.i.i547.preheader.new ], [ %niter3930.next.3, %.lr.ph.i.i547 ]
  %i.cux = load <4 x float>, ptr %.028.i.i548, align 1, !tbaa !60
  %i.cuy = load <4 x float>, ptr %.02026.i.i550, align 1, !tbaa !60
  %i.cuz = fsub fast <4 x float> %i.cuy, %i.cux
  store <4 x float> %i.cuz, ptr %.02225.i.i551, align 1, !tbaa !60
  %i.cva = getelementptr inbounds nuw i8, ptr %.028.i.i548, i64 16
  %i.cvb = getelementptr inbounds nuw i8, ptr %.02026.i.i550, i64 16
  %i.cvc = getelementptr inbounds nuw i8, ptr %.02225.i.i551, i64 16
  %i.cvd = load <4 x float>, ptr %i.cva, align 1, !tbaa !60
  %i.cve = load <4 x float>, ptr %i.cvb, align 1, !tbaa !60
  %i.cvf = fsub fast <4 x float> %i.cve, %i.cvd
  store <4 x float> %i.cvf, ptr %i.cvc, align 1, !tbaa !60
  %i.cvg = getelementptr inbounds nuw i8, ptr %.028.i.i548, i64 32
  %i.cvh = getelementptr inbounds nuw i8, ptr %.02026.i.i550, i64 32
  %i.cvi = getelementptr inbounds nuw i8, ptr %.02225.i.i551, i64 32
  %i.cvj = load <4 x float>, ptr %i.cvg, align 1, !tbaa !60
  %i.cvk = load <4 x float>, ptr %i.cvh, align 1, !tbaa !60
  %i.cvl = fsub fast <4 x float> %i.cvk, %i.cvj
  store <4 x float> %i.cvl, ptr %i.cvi, align 1, !tbaa !60
  %i.cvm = getelementptr inbounds nuw i8, ptr %.028.i.i548, i64 48
  %i.cvn = getelementptr inbounds nuw i8, ptr %.02026.i.i550, i64 48
  %i.cvo = getelementptr inbounds nuw i8, ptr %.02225.i.i551, i64 48
  %i.cvp = load <4 x float>, ptr %i.cvm, align 1, !tbaa !60
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  br i1 %i.drw, label %.lr.ph.i57.i556.epil.preheader, label %.lr.ph.preheader.i56.i.new

.lr.ph.preheader.i56.i.new:                       ; preds = %.lr.ph.preheader.i56.i
  %unroll_iter3833 = and i32 %.sroa.speculated69.i553, 2147483644
  %i.drx = fdiv fast <4 x float> splat (float 1.000000e+00), %i.drv
  %i.dry = fdiv fast <4 x float> splat (float 1.000000e+00), %i.drv
  %i.drz = fdiv fast <4 x float> splat (float 1.000000e+00), %i.drv
  %i.dsa = fdiv fast <4 x float> splat (float 1.000000e+00), %i.drv
  br label %.lr.ph.i57.i556

.lr.ph.i57.i556:                                  ; preds = %.lr.ph.i57.i556, %.lr.ph.preheader.i56.i.new
  %.014.i.i557 = phi ptr [ %1, %.lr.ph.preheader.i56.i.new ], [ %i.dsx, %.lr.ph.i57.i556 ] ; 5 uses
  %.01012.i.i559 = phi ptr [ %2, %.lr.ph.preheader.i56.i.new ], [ %i.dsy, %.lr.ph.i57.i556 ] ; 5 uses
  %niter3834 = phi i32 [ 0, %.lr.ph.preheader.i56.i.new ], [ %niter3834.next.3, %.lr.ph.i57.i556 ]
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
  %niter3834.next.3 = add i32 %niter3834, 4       ; 2 uses
  %niter3834.ncmp.3 = icmp eq i32 %niter3834.next.3, %unroll_iter3833
  br i1 %niter3834.ncmp.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit.loopexit3545.unr-lcssa, label %.lr.ph.i57.i556, !llvm.loop !221

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
  %.022.lcssa.i.i6722726 = ptrtoaddr ptr %.022.lcssa.i.i672 to i64 ; 2 uses
  %.020.lcssa.i.i6732727 = ptrtoaddr ptr %.020.lcssa.i.i673 to i64
  %.0.lcssa.i.i6752729 = ptrtoaddr ptr %.0.lcssa.i.i675 to i64
  %i.dte = icmp slt i32 %.018.lcssa.i.i674, %i.dsz
  br i1 %i.dte, label %.lr.ph93.i.i676.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph93.i.i676.preheader:                        ; preds = %.preheader.i.i671
  %i.dtf = xor i32 %.018.lcssa.i.i674, -1
  %i.dtg = add i32 %i.dsz, %i.dtf                 ; 2 uses
  %i.dth = zext i32 %i.dtg to i64
  %i.dti = add nuw nsw i64 %i.dth, 1              ; 2 uses
  %min.iters.check2733 = icmp ult i32 %i.dtg, 11
  br i1 %min.iters.check2733, label %.lr.ph93.i.i676.preheader3546, label %vector.memcheck2725

vector.memcheck2725:                              ; preds = %.lr.ph93.i.i676.preheader
  %i.dtj = sub i64 %.020.lcssa.i.i6732727, %.022.lcssa.i.i6722726
  %diff.check2728 = icmp ugt i64 %i.dtj, -16
  %i.dtk = sub i64 %.0.lcssa.i.i6752729, %.022.lcssa.i.i6722726
  %diff.check2730 = icmp ugt i64 %i.dtk, -16
  %conflict.rdx2731 = or i1 %diff.check2728, %diff.check2730
  br i1 %conflict.rdx2731, label %.lr.ph93.i.i676.preheader3546, label %vector.ph2734

vector.ph2734:                                    ; preds = %vector.memcheck2725
  %n.vec2735 = and i64 %i.dti, 8589934588         ; 4 uses
  %i.dtl = shl nuw nsw i64 %n.vec2735, 2          ; 3 uses
  %i.dtm = getelementptr i8, ptr %.0.lcssa.i.i675, i64 %i.dtl
  %i.dtn = trunc i64 %n.vec2735 to i32
  %i.dto = add i32 %.018.lcssa.i.i674, %i.dtn
  %i.dtp = getelementptr i8, ptr %.020.lcssa.i.i673, i64 %i.dtl
  %i.dtq = getelementptr i8, ptr %.022.lcssa.i.i672, i64 %i.dtl
  br label %vector.body2736

vector.body2736:                                  ; preds = %vector.body2736, %vector.ph2734
  %index2737 = phi i64 [ 0, %vector.ph2734 ], [ %index.next2743, %vector.body2736 ] ; 2 uses
  %i.dtr = shl i64 %index2737, 2                  ; 3 uses
  %next.gep2738 = getelementptr i8, ptr %.0.lcssa.i.i675, i64 %i.dtr
  %next.gep2739 = getelementptr i8, ptr %.020.lcssa.i.i673, i64 %i.dtr
  %next.gep2740 = getelementptr i8, ptr %.022.lcssa.i.i672, i64 %i.dtr
  %wide.load2741 = load <4 x float>, ptr %next.gep2739, align 4, !tbaa !59
  %wide.load2742 = load <4 x float>, ptr %next.gep2738, align 4, !tbaa !59
  %i.dts = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %wide.load2741, <4 x float> %wide.load2742)
  store <4 x float> %i.dts, ptr %next.gep2740, align 4, !tbaa !59
  %index.next2743 = add nuw i64 %index2737, 4     ; 2 uses
  %i.dtt = icmp eq i64 %index.next2743, %n.vec2735
  br i1 %i.dtt, label %middle.block2744, label %vector.body2736, !llvm.loop !222

middle.block2744:                                 ; preds = %vector.body2736
  %cmp.n2745 = icmp eq i64 %i.dti, %n.vec2735
  br i1 %cmp.n2745, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i676.preheader3546

.lr.ph93.i.i676.preheader3546:                    ; preds = %vector.memcheck2725, %.lr.ph93.i.i676.preheader, %middle.block2744
  %.192.i.i677.ph = phi ptr [ %.0.lcssa.i.i675, %vector.memcheck2725 ], [ %.0.lcssa.i.i675, %.lr.ph93.i.i676.preheader ], [ %i.dtm, %middle.block2744 ] ; 2 uses
  %.11991.i.i678.ph = phi i32 [ %.018.lcssa.i.i674, %vector.memcheck2725 ], [ %.018.lcssa.i.i674, %.lr.ph93.i.i676.preheader ], [ %i.dto, %middle.block2744 ] ; 4 uses
  %.12190.i.i679.ph = phi ptr [ %.020.lcssa.i.i673, %vector.memcheck2725 ], [ %.020.lcssa.i.i673, %.lr.ph93.i.i676.preheader ], [ %i.dtp, %middle.block2744 ] ; 2 uses
  %.12389.i.i680.ph = phi ptr [ %.022.lcssa.i.i672, %vector.memcheck2725 ], [ %.022.lcssa.i.i672, %.lr.ph93.i.i676.preheader ], [ %i.dtq, %middle.block2744 ] ; 2 uses
  %i.dtu = sub i32 %i.dsz, %.11991.i.i678.ph
  %xtraiter3827 = and i32 %i.dtu, 3               ; 2 uses
  %lcmp.mod3828.not = icmp eq i32 %xtraiter3827, 0
  br i1 %lcmp.mod3828.not, label %.lr.ph93.i.i676.prol.loopexit, label %.lr.ph93.i.i676.prol

.lr.ph93.i.i676.prol:                             ; preds = %.lr.ph93.i.i676.preheader3546, %.lr.ph93.i.i676.prol
  %.192.i.i677.prol = phi ptr [ %i.dty, %.lr.ph93.i.i676.prol ], [ %.192.i.i677.ph, %.lr.ph93.i.i676.preheader3546 ] ; 2 uses
  %.11991.i.i678.prol = phi i32 [ %i.dub, %.lr.ph93.i.i676.prol ], [ %.11991.i.i678.ph, %.lr.ph93.i.i676.preheader3546 ]
  %.12190.i.i679.prol = phi ptr [ %i.dtz, %.lr.ph93.i.i676.prol ], [ %.12190.i.i679.ph, %.lr.ph93.i.i676.preheader3546 ] ; 2 uses
  %.12389.i.i680.prol = phi ptr [ %i.dua, %.lr.ph93.i.i676.prol ], [ %.12389.i.i680.ph, %.lr.ph93.i.i676.preheader3546 ] ; 2 uses
  %prol.iter3829 = phi i32 [ %prol.iter3829.next, %.lr.ph93.i.i676.prol ], [ 0, %.lr.ph93.i.i676.preheader3546 ]
  %i.dtv = load float, ptr %.12190.i.i679.prol, align 4, !tbaa !59
  %i.dtw = load float, ptr %.192.i.i677.prol, align 4, !tbaa !59
  %i.dtx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dtv, float %i.dtw)
  store float %i.dtx, ptr %.12389.i.i680.prol, align 4, !tbaa !59
  %i.dty = getelementptr inbounds nuw i8, ptr %.192.i.i677.prol, i64 4 ; 2 uses
  %i.dtz = getelementptr inbounds nuw i8, ptr %.12190.i.i679.prol, i64 4 ; 2 uses
  %i.dua = getelementptr inbounds nuw i8, ptr %.12389.i.i680.prol, i64 4 ; 2 uses
  %i.dub = add nuw nsw i32 %.11991.i.i678.prol, 1 ; 2 uses
  %prol.iter3829.next = add i32 %prol.iter3829, 1 ; 2 uses
  %prol.iter3829.cmp.not = icmp eq i32 %prol.iter3829.next, %xtraiter3827
  br i1 %prol.iter3829.cmp.not, label %.lr.ph93.i.i676.prol.loopexit, label %.lr.ph93.i.i676.prol, !llvm.loop !223

.lr.ph93.i.i676.prol.loopexit:                    ; preds = %.lr.ph93.i.i676.prol, %.lr.ph93.i.i676.preheader3546
  %.192.i.i677.unr = phi ptr [ %.192.i.i677.ph, %.lr.ph93.i.i676.preheader3546 ], [ %i.dty, %.lr.ph93.i.i676.prol ]
  %.11991.i.i678.unr = phi i32 [ %.11991.i.i678.ph, %.lr.ph93.i.i676.preheader3546 ], [ %i.dub, %.lr.ph93.i.i676.prol ]
  %.12190.i.i679.unr = phi ptr [ %.12190.i.i679.ph, %.lr.ph93.i.i676.preheader3546 ], [ %i.dtz, %.lr.ph93.i.i676.prol ]
  %.12389.i.i680.unr = phi ptr [ %.12389.i.i680.ph, %.lr.ph93.i.i676.preheader3546 ], [ %i.dua, %.lr.ph93.i.i676.prol ]
  %i.duc = sub i32 %.11991.i.i678.ph, %i.dsz
  %i.dud = icmp ugt i32 %i.duc, -4
  br i1 %i.dud, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph93.i.i676

.lr.ph.i.i682:                                    ; preds = %bb.gb, %.lr.ph.i.i682
  %.085.i.i683 = phi ptr [ %i.dwt, %.lr.ph.i.i682 ], [ %0, %bb.gb ] ; 2 uses
  %.01884.i.i684 = phi i32 [ %i.dww, %.lr.ph.i.i682 ], [ 0, %bb.gb ]
  %.02083.i.i685 = phi ptr [ %i.dwu, %.lr.ph.i.i682 ], [ %1, %bb.gb ] ; 2 uses
  %.02282.i.i686 = phi ptr [ %i.dwv, %.lr.ph.i.i682 ], [ %2, %bb.gb ] ; 2 uses
  %i.due = load <4 x float>, ptr %.085.i.i683, align 1, !tbaa !60
  %i.duf = load <4 x float>, ptr %.02083.i.i685, align 1, !tbaa !60
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
  %i.dvn = fadd fast <4 x float> %reass.mul81.i.i689, %i.dvm
  %i.dvo = fmul fast <4 x float> %i.dvn, %i.due
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
  %i.dwm = fadd fast <4 x float> %i.dvz, %i.dwl
  %i.dwn = fadd fast <4 x float> %i.dwm, splat (float 1.000000e+00)
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
  %i.dye = phi fast <4 x float> [ %i.dyb, %bb.ge ], [ %i.dyd, %bb.gf ]
  %i.dyf = icmp sgt i32 %i.dsz, 3
  br i1 %i.dyf, label %.lr.ph.i37.i663, label %.preheader.i34.i654

.lr.ph.i37.i663:                                  ; preds = %bb.gg
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
  %i.dzn = fadd fast <4 x float> %reass.mul79.i.i666, %i.dzm
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
  %.0.lcssa.i35.i6572708 = ptrtoaddr ptr %.0.lcssa.i35.i657 to i64
  %.019.lcssa.i.i6552707 = ptrtoaddr ptr %.019.lcssa.i.i655 to i64
  %i.dzq = xor i32 %.017.lcssa.i.i656, -1
  %i.dzr = add i32 %i.dsz, %i.dzq                 ; 2 uses
  %i.dzs = zext i32 %i.dzr to i64
  %i.dzt = add nuw nsw i64 %i.dzs, 1              ; 2 uses
  %min.iters.check2711 = icmp ult i32 %i.dzr, 3
  %i.dzu = sub i64 %.0.lcssa.i35.i6572708, %.019.lcssa.i.i6552707
  %diff.check2709 = icmp ugt i64 %i.dzu, -16
  %or.cond3390 = select i1 %min.iters.check2711, i1 true, i1 %diff.check2709
  br i1 %or.cond3390, label %.lr.ph88.i.i658.preheader3551, label %vector.ph2712

vector.ph2712:                                    ; preds = %.lr.ph88.i.i658.preheader
  %n.vec2713 = and i64 %i.dzt, 8589934588         ; 4 uses
  %i.dzv = shl nuw nsw i64 %n.vec2713, 2          ; 2 uses
  %i.dzw = getelementptr i8, ptr %.0.lcssa.i35.i657, i64 %i.dzv
  %i.dzx = trunc i64 %n.vec2713 to i32
  %i.dzy = add i32 %.017.lcssa.i.i656, %i.dzx
  %i.dzz = getelementptr i8, ptr %.019.lcssa.i.i655, i64 %i.dzv
  %i.eaa = insertelement <2 x float> poison, float %i.dxz, i64 0
  %i.eab = shufflevector <2 x float> %i.eaa, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2714

vector.body2714:                                  ; preds = %vector.body2714, %vector.ph2712
  %index2715 = phi i64 [ 0, %vector.ph2712 ], [ %index.next2719, %vector.body2714 ] ; 2 uses
  %i.eac = shl i64 %index2715, 2                  ; 2 uses
  %next.gep2716 = getelementptr i8, ptr %.0.lcssa.i35.i657, i64 %i.eac
  %next.gep2717 = getelementptr i8, ptr %.019.lcssa.i.i655, i64 %i.eac
  %wide.load2718 = load <4 x float>, ptr %next.gep2716, align 4, !tbaa !59
  %i.ead = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.eab, <4 x float> %wide.load2718)
  store <4 x float> %i.ead, ptr %next.gep2717, align 4, !tbaa !59
  %index.next2719 = add nuw i64 %index2715, 4     ; 2 uses
  %i.eae = icmp eq i64 %index.next2719, %n.vec2713
  br i1 %i.eae, label %middle.block2720, label %vector.body2714, !llvm.loop !226

middle.block2720:                                 ; preds = %vector.body2714
  %cmp.n2721 = icmp eq i64 %i.dzt, %n.vec2713
  br i1 %cmp.n2721, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i658.preheader3551

.lr.ph88.i.i658.preheader3551:                    ; preds = %.lr.ph88.i.i658.preheader, %middle.block2720
  %.187.i.i659.ph = phi ptr [ %.0.lcssa.i35.i657, %.lr.ph88.i.i658.preheader ], [ %i.dzw, %middle.block2720 ] ; 2 uses
  %.11886.i.i660.ph = phi i32 [ %.017.lcssa.i.i656, %.lr.ph88.i.i658.preheader ], [ %i.dzy, %middle.block2720 ] ; 4 uses
  %.12085.i.i661.ph = phi ptr [ %.019.lcssa.i.i655, %.lr.ph88.i.i658.preheader ], [ %i.dzz, %middle.block2720 ] ; 2 uses
  %i.eaf = sub i32 %i.dsz, %.11886.i.i660.ph
  %xtraiter3824 = and i32 %i.eaf, 3               ; 2 uses
  %lcmp.mod3825.not = icmp eq i32 %xtraiter3824, 0
  br i1 %lcmp.mod3825.not, label %.lr.ph88.i.i658.prol.loopexit, label %.lr.ph88.i.i658.prol

.lr.ph88.i.i658.prol:                             ; preds = %.lr.ph88.i.i658.preheader3551, %.lr.ph88.i.i658.prol
  %.187.i.i659.prol = phi ptr [ %i.eai, %.lr.ph88.i.i658.prol ], [ %.187.i.i659.ph, %.lr.ph88.i.i658.preheader3551 ] ; 2 uses
  %.11886.i.i660.prol = phi i32 [ %i.eak, %.lr.ph88.i.i658.prol ], [ %.11886.i.i660.ph, %.lr.ph88.i.i658.preheader3551 ]
  %.12085.i.i661.prol = phi ptr [ %i.eaj, %.lr.ph88.i.i658.prol ], [ %.12085.i.i661.ph, %.lr.ph88.i.i658.preheader3551 ] ; 2 uses
  %prol.iter3826 = phi i32 [ %prol.iter3826.next, %.lr.ph88.i.i658.prol ], [ 0, %.lr.ph88.i.i658.preheader3551 ]
  %i.eag = load float, ptr %.187.i.i659.prol, align 4, !tbaa !59
  %i.eah = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.dxz, float %i.eag)
  store float %i.eah, ptr %.12085.i.i661.prol, align 4, !tbaa !59
  %i.eai = getelementptr inbounds nuw i8, ptr %.187.i.i659.prol, i64 4 ; 2 uses
  %i.eaj = getelementptr inbounds nuw i8, ptr %.12085.i.i661.prol, i64 4 ; 2 uses
  %i.eak = add nuw nsw i32 %.11886.i.i660.prol, 1 ; 2 uses
  %prol.iter3826.next = add i32 %prol.iter3826, 1 ; 2 uses
  %prol.iter3826.cmp.not = icmp eq i32 %prol.iter3826.next, %xtraiter3824
  br i1 %prol.iter3826.cmp.not, label %.lr.ph88.i.i658.prol.loopexit, label %.lr.ph88.i.i658.prol, !llvm.loop !227

.lr.ph88.i.i658.prol.loopexit:                    ; preds = %.lr.ph88.i.i658.prol, %.lr.ph88.i.i658.preheader3551
  %.187.i.i659.unr = phi ptr [ %.187.i.i659.ph, %.lr.ph88.i.i658.preheader3551 ], [ %i.eai, %.lr.ph88.i.i658.prol ]
  %.11886.i.i660.unr = phi i32 [ %.11886.i.i660.ph, %.lr.ph88.i.i658.preheader3551 ], [ %i.eak, %.lr.ph88.i.i658.prol ]
  %.12085.i.i661.unr = phi ptr [ %.12085.i.i661.ph, %.lr.ph88.i.i658.preheader3551 ], [ %i.eaj, %.lr.ph88.i.i658.prol ]
  %i.eal = sub i32 %.11886.i.i660.ph, %i.dsz
  %i.eam = icmp ugt i32 %i.eal, -4
  br i1 %i.eam, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i.i658

bb.gh:                                            ; preds = %bb.gh, %.lr.ph.i37.i663
  %.082.i.i667 = phi ptr [ %0, %.lr.ph.i37.i663 ], [ %i.ebt, %bb.gh ] ; 2 uses
  %.01781.i.i668 = phi i32 [ 0, %.lr.ph.i37.i663 ], [ %i.ebv, %bb.gh ]
  %.01980.i.i669 = phi ptr [ %2, %.lr.ph.i37.i663 ], [ %i.ebu, %bb.gh ] ; 2 uses
  %i.ean = load <4 x float>, ptr %.082.i.i667, align 1, !tbaa !60
  %i.eao = fmul fast <4 x float> %i.ean, %i.dzn
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
  %i.ebm = fadd fast <4 x float> %i.eaz, %i.ebl
  %i.ebn = fadd fast <4 x float> %i.ebm, splat (float 1.000000e+00)
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
  %.0.lcssa.i43.i6462689 = ptrtoaddr ptr %.0.lcssa.i43.i646 to i64
  %.019.lcssa.i41.i6442688 = ptrtoaddr ptr %.019.lcssa.i41.i644 to i64
  %i.ecz = xor i32 %.017.lcssa.i42.i645, -1
  %i.eda = add i32 %i.dsz, %i.ecz                 ; 2 uses
  %i.edb = zext i32 %i.eda to i64
  %i.edc = add nuw nsw i64 %i.edb, 1              ; 2 uses
  %min.iters.check2692 = icmp ult i32 %i.eda, 3
  %i.edd = sub i64 %.0.lcssa.i43.i6462689, %.019.lcssa.i41.i6442688
  %diff.check2690 = icmp ugt i64 %i.edd, -16
  %or.cond3391 = select i1 %min.iters.check2692, i1 true, i1 %diff.check2690
  br i1 %or.cond3391, label %.lr.ph88.i44.i647.preheader3555, label %vector.ph2693

vector.ph2693:                                    ; preds = %.lr.ph88.i44.i647.preheader
  %n.vec2694 = and i64 %i.edc, 8589934588         ; 4 uses
  %i.ede = shl nuw nsw i64 %n.vec2694, 2          ; 2 uses
  %i.edf = getelementptr i8, ptr %.0.lcssa.i43.i646, i64 %i.ede
  %i.edg = trunc i64 %n.vec2694 to i32
  %i.edh = add i32 %.017.lcssa.i42.i645, %i.edg
  %i.edi = getelementptr i8, ptr %.019.lcssa.i41.i644, i64 %i.ede
  %i.edj = insertelement <2 x float> poison, float %i.ecq, i64 0
  %i.edk = shufflevector <2 x float> %i.edj, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2695

vector.body2695:                                  ; preds = %vector.body2695, %vector.ph2693
  %index2696 = phi i64 [ 0, %vector.ph2693 ], [ %index.next2700, %vector.body2695 ] ; 2 uses
  %i.edl = shl i64 %index2696, 2                  ; 2 uses
  %next.gep2697 = getelementptr i8, ptr %.0.lcssa.i43.i646, i64 %i.edl
  %next.gep2698 = getelementptr i8, ptr %.019.lcssa.i41.i644, i64 %i.edl
  %wide.load2699 = load <4 x float>, ptr %next.gep2697, align 4, !tbaa !59
  %i.edm = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %wide.load2699, <4 x float> %i.edk)
  store <4 x float> %i.edm, ptr %next.gep2698, align 4, !tbaa !59
  %index.next2700 = add nuw i64 %index2696, 4     ; 2 uses
  %i.edn = icmp eq i64 %index.next2700, %n.vec2694
  br i1 %i.edn, label %middle.block2701, label %vector.body2695, !llvm.loop !230

middle.block2701:                                 ; preds = %vector.body2695
  %cmp.n2702 = icmp eq i64 %i.edc, %n.vec2694
  br i1 %cmp.n2702, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i647.preheader3555

.lr.ph88.i44.i647.preheader3555:                  ; preds = %.lr.ph88.i44.i647.preheader, %middle.block2701
  %.187.i45.i648.ph = phi ptr [ %.0.lcssa.i43.i646, %.lr.ph88.i44.i647.preheader ], [ %i.edf, %middle.block2701 ] ; 2 uses
  %.11886.i46.i649.ph = phi i32 [ %.017.lcssa.i42.i645, %.lr.ph88.i44.i647.preheader ], [ %i.edh, %middle.block2701 ] ; 4 uses
  %.12085.i47.i650.ph = phi ptr [ %.019.lcssa.i41.i644, %.lr.ph88.i44.i647.preheader ], [ %i.edi, %middle.block2701 ] ; 2 uses
  %i.edo = sub i32 %i.dsz, %.11886.i46.i649.ph
  %xtraiter3821 = and i32 %i.edo, 3               ; 2 uses
  %lcmp.mod3822.not = icmp eq i32 %xtraiter3821, 0
  br i1 %lcmp.mod3822.not, label %.lr.ph88.i44.i647.prol.loopexit, label %.lr.ph88.i44.i647.prol

.lr.ph88.i44.i647.prol:                           ; preds = %.lr.ph88.i44.i647.preheader3555, %.lr.ph88.i44.i647.prol
  %.187.i45.i648.prol = phi ptr [ %i.edr, %.lr.ph88.i44.i647.prol ], [ %.187.i45.i648.ph, %.lr.ph88.i44.i647.preheader3555 ] ; 2 uses
  %.11886.i46.i649.prol = phi i32 [ %i.edt, %.lr.ph88.i44.i647.prol ], [ %.11886.i46.i649.ph, %.lr.ph88.i44.i647.preheader3555 ]
  %.12085.i47.i650.prol = phi ptr [ %i.eds, %.lr.ph88.i44.i647.prol ], [ %.12085.i47.i650.ph, %.lr.ph88.i44.i647.preheader3555 ] ; 2 uses
  %prol.iter3823 = phi i32 [ %prol.iter3823.next, %.lr.ph88.i44.i647.prol ], [ 0, %.lr.ph88.i44.i647.preheader3555 ]
  %i.edp = load float, ptr %.187.i45.i648.prol, align 4, !tbaa !59
  %i.edq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.edp, float %i.ecq)
  store float %i.edq, ptr %.12085.i47.i650.prol, align 4, !tbaa !59
  %i.edr = getelementptr inbounds nuw i8, ptr %.187.i45.i648.prol, i64 4 ; 2 uses
  %i.eds = getelementptr inbounds nuw i8, ptr %.12085.i47.i650.prol, i64 4 ; 2 uses
  %i.edt = add nuw nsw i32 %.11886.i46.i649.prol, 1 ; 2 uses
  %prol.iter3823.next = add i32 %prol.iter3823, 1 ; 2 uses
  %prol.iter3823.cmp.not = icmp eq i32 %prol.iter3823.next, %xtraiter3821
  br i1 %prol.iter3823.cmp.not, label %.lr.ph88.i44.i647.prol.loopexit, label %.lr.ph88.i44.i647.prol, !llvm.loop !231

.lr.ph88.i44.i647.prol.loopexit:                  ; preds = %.lr.ph88.i44.i647.prol, %.lr.ph88.i44.i647.preheader3555
  %.187.i45.i648.unr = phi ptr [ %.187.i45.i648.ph, %.lr.ph88.i44.i647.preheader3555 ], [ %i.edr, %.lr.ph88.i44.i647.prol ]
  %.11886.i46.i649.unr = phi i32 [ %.11886.i46.i649.ph, %.lr.ph88.i44.i647.preheader3555 ], [ %i.edt, %.lr.ph88.i44.i647.prol ]
  %.12085.i47.i650.unr = phi ptr [ %.12085.i47.i650.ph, %.lr.ph88.i44.i647.preheader3555 ], [ %i.eds, %.lr.ph88.i44.i647.prol ]
  %i.edu = sub i32 %.11886.i46.i649.ph, %i.dsz
  %i.edv = icmp ugt i32 %i.edu, -4
  br i1 %i.edv, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph88.i44.i647

.lr.ph.i49.i652:                                  ; preds = %bb.gm, %.lr.ph.i49.i652
  %.082.i50.i = phi ptr [ %i.egk, %.lr.ph.i49.i652 ], [ %1, %bb.gm ] ; 2 uses
  %.01781.i51.i = phi i32 [ %i.egm, %.lr.ph.i49.i652 ], [ 0, %bb.gm ]
  %.01980.i52.i = phi ptr [ %i.egl, %.lr.ph.i49.i652 ], [ %2, %bb.gm ] ; 2 uses
  %i.edw = load <4 x float>, ptr %.082.i50.i, align 1, !tbaa !60
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
  %i.efe = fadd fast <4 x float> %reass.mul79.i55.i, %i.efd
  %i.eff = fmul fast <4 x float> %i.efe, %i.ecv
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
  %i.egd = fadd fast <4 x float> %i.efq, %i.egc
  %i.ege = fadd fast <4 x float> %i.egd, splat (float 1.000000e+00)
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
  %i.ehn = shufflevector <4 x float> %i.ehm, <4 x float> poison, <4 x i32> zeroinitializer
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
  %i.eiv = fadd fast <4 x float> %reass.mul70.i.i641, %i.eiu
  %i.eiw = fmul fast <4 x float> %i.eiv, %i.ehk
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
  %i.eju = fadd fast <4 x float> %i.ejh, %i.ejt
  %i.ejv = fadd fast <4 x float> %i.eju, splat (float 1.000000e+00)
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
  %i.eki = shufflevector <4 x float> %i.ekh, <4 x float> poison, <4 x i32> zeroinitializer
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
  %i.elq = fadd fast <4 x float> %reass.mul58.i.i629, %i.elp
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gs, %.lr.ph.i60.i625
  %.061.i.i630 = phi ptr [ %0, %.lr.ph.i60.i625 ], [ %i.emx, %bb.gs ] ; 2 uses
  %.01060.i.i631 = phi i32 [ 0, %.lr.ph.i60.i625 ], [ %i.emz, %bb.gs ]
  %.01159.i.i632 = phi ptr [ %2, %.lr.ph.i60.i625 ], [ %i.emy, %bb.gs ] ; 2 uses
  %i.elr = load <4 x float>, ptr %.061.i.i630, align 1, !tbaa !60
  %i.els = fmul fast <4 x float> %i.elr, %i.elq
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
  %i.emq = fadd fast <4 x float> %i.emd, %i.emp
  %i.emr = fadd fast <4 x float> %i.emq, splat (float 1.000000e+00)
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
  %i.enh = shufflevector <4 x float> %i.eng, <4 x float> poison, <4 x i32> zeroinitializer
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
  %i.eop = fadd fast <4 x float> %reass.mul68.i.i624, %i.eoo
  %i.eoq = fmul fast <4 x float> %i.eop, %i.ene
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
  %i.epo = fadd fast <4 x float> %i.epb, %i.epn
  %i.epp = fadd fast <4 x float> %i.epo, splat (float 1.000000e+00)
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
  %.sroa.speculated74.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i691 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.epy = mul i32 %.sroa.speculated.i691, %.sroa.speculated74.i ; 26 uses
  %i.epz = icmp eq i32 %5, %6
  br i1 %i.epz, label %bb.gw, label %bb.hk

bb.gw:                                            ; preds = %bb.gv
  %i.eqa = icmp eq i32 %3, %4
  br i1 %i.eqa, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.eqb = icmp sgt i32 %i.epy, 3
  br i1 %i.eqb, label %.lr.ph.i.i716, label %.preheader.i.i710

.preheader.loopexit.i.i717:                       ; preds = %.lr.ph.i.i716
  %i.eqc = and i32 %i.epy, 2147483644
  br label %.preheader.i.i710

.preheader.i.i710:                                ; preds = %.preheader.loopexit.i.i717, %bb.gx
  %.022.lcssa.i.i711 = phi ptr [ %2, %bb.gx ], [ %i.ete, %.preheader.loopexit.i.i717 ] ; 5 uses
  %.020.lcssa.i.i712 = phi ptr [ %1, %bb.gx ], [ %i.etd, %.preheader.loopexit.i.i717 ] ; 5 uses
  %.018.lcssa.i.i713 = phi i32 [ 0, %bb.gx ], [ %i.eqc, %.preheader.loopexit.i.i717 ] ; 5 uses
  %.0.lcssa.i.i714 = phi ptr [ %0, %bb.gx ], [ %i.etc, %.preheader.loopexit.i.i717 ] ; 5 uses
  %.022.lcssa.i.i7112663 = ptrtoaddr ptr %.022.lcssa.i.i711 to i64 ; 2 uses
  %.0.lcssa.i.i7142664 = ptrtoaddr ptr %.0.lcssa.i.i714 to i64
  %.020.lcssa.i.i7122666 = ptrtoaddr ptr %.020.lcssa.i.i712 to i64
  %i.eqd = icmp slt i32 %.018.lcssa.i.i713, %i.epy
  br i1 %i.eqd, label %.lr.ph70.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph70.i.i.preheader:                           ; preds = %.preheader.i.i710
  %i.eqe = xor i32 %.018.lcssa.i.i713, -1
  %i.eqf = add i32 %i.epy, %i.eqe                 ; 2 uses
  %i.eqg = zext i32 %i.eqf to i64
  %i.eqh = add nuw nsw i64 %i.eqg, 1              ; 2 uses
  %min.iters.check2670 = icmp ult i32 %i.eqf, 11
  br i1 %min.iters.check2670, label %.lr.ph70.i.i.preheader3562, label %vector.memcheck2662

vector.memcheck2662:                              ; preds = %.lr.ph70.i.i.preheader
  %i.eqi = sub i64 %.0.lcssa.i.i7142664, %.022.lcssa.i.i7112663
  %diff.check2665 = icmp ugt i64 %i.eqi, -16
  %i.eqj = sub i64 %.020.lcssa.i.i7122666, %.022.lcssa.i.i7112663
  %diff.check2667 = icmp ugt i64 %i.eqj, -16
  %conflict.rdx2668 = or i1 %diff.check2665, %diff.check2667
  br i1 %conflict.rdx2668, label %.lr.ph70.i.i.preheader3562, label %vector.ph2671

vector.ph2671:                                    ; preds = %vector.memcheck2662
  %n.vec2672 = and i64 %i.eqh, 8589934588         ; 4 uses
  %i.eqk = shl nuw nsw i64 %n.vec2672, 2          ; 3 uses
  %i.eql = getelementptr i8, ptr %.0.lcssa.i.i714, i64 %i.eqk
  %i.eqm = trunc i64 %n.vec2672 to i32
  %i.eqn = add i32 %.018.lcssa.i.i713, %i.eqm
  %i.eqo = getelementptr i8, ptr %.020.lcssa.i.i712, i64 %i.eqk
  %i.eqp = getelementptr i8, ptr %.022.lcssa.i.i711, i64 %i.eqk
  br label %vector.body2673

vector.body2673:                                  ; preds = %vector.body2673, %vector.ph2671
  %index2674 = phi i64 [ 0, %vector.ph2671 ], [ %index.next2680, %vector.body2673 ] ; 2 uses
  %i.eqq = shl i64 %index2674, 2                  ; 3 uses
  %next.gep2675 = getelementptr i8, ptr %.0.lcssa.i.i714, i64 %i.eqq
  %next.gep2676 = getelementptr i8, ptr %.020.lcssa.i.i712, i64 %i.eqq
  %next.gep2677 = getelementptr i8, ptr %.022.lcssa.i.i711, i64 %i.eqq
  %wide.load2678 = load <4 x float>, ptr %next.gep2675, align 4, !tbaa !59
  %wide.load2679 = load <4 x float>, ptr %next.gep2676, align 4, !tbaa !59
  %i.eqr = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %wide.load2678, <4 x float> %wide.load2679)
  store <4 x float> %i.eqr, ptr %next.gep2677, align 4, !tbaa !59
  %index.next2680 = add nuw i64 %index2674, 4     ; 2 uses
  %i.eqs = icmp eq i64 %index.next2680, %n.vec2672
  br i1 %i.eqs, label %middle.block2681, label %vector.body2673, !llvm.loop !237

middle.block2681:                                 ; preds = %vector.body2673
  %cmp.n2682 = icmp eq i64 %i.eqh, %n.vec2672
  br i1 %cmp.n2682, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i.preheader3562

.lr.ph70.i.i.preheader3562:                       ; preds = %vector.memcheck2662, %.lr.ph70.i.i.preheader, %middle.block2681
  %.169.i.i.ph = phi ptr [ %.0.lcssa.i.i714, %vector.memcheck2662 ], [ %.0.lcssa.i.i714, %.lr.ph70.i.i.preheader ], [ %i.eql, %middle.block2681 ] ; 2 uses
  %.11968.i.i.ph = phi i32 [ %.018.lcssa.i.i713, %vector.memcheck2662 ], [ %.018.lcssa.i.i713, %.lr.ph70.i.i.preheader ], [ %i.eqn, %middle.block2681 ] ; 4 uses
  %.12167.i.i.ph = phi ptr [ %.020.lcssa.i.i712, %vector.memcheck2662 ], [ %.020.lcssa.i.i712, %.lr.ph70.i.i.preheader ], [ %i.eqo, %middle.block2681 ] ; 2 uses
  %.12366.i.i.ph = phi ptr [ %.022.lcssa.i.i711, %vector.memcheck2662 ], [ %.022.lcssa.i.i711, %.lr.ph70.i.i.preheader ], [ %i.eqp, %middle.block2681 ] ; 2 uses
  %i.eqt = sub i32 %i.epy, %.11968.i.i.ph
  %xtraiter3818 = and i32 %i.eqt, 3               ; 2 uses
  %lcmp.mod3819.not = icmp eq i32 %xtraiter3818, 0
  br i1 %lcmp.mod3819.not, label %.lr.ph70.i.i.prol.loopexit, label %.lr.ph70.i.i.prol

.lr.ph70.i.i.prol:                                ; preds = %.lr.ph70.i.i.preheader3562, %.lr.ph70.i.i.prol
  %.169.i.i.prol = phi ptr [ %i.eqx, %.lr.ph70.i.i.prol ], [ %.169.i.i.ph, %.lr.ph70.i.i.preheader3562 ] ; 2 uses
  %.11968.i.i.prol = phi i32 [ %i.era, %.lr.ph70.i.i.prol ], [ %.11968.i.i.ph, %.lr.ph70.i.i.preheader3562 ]
  %.12167.i.i.prol = phi ptr [ %i.eqy, %.lr.ph70.i.i.prol ], [ %.12167.i.i.ph, %.lr.ph70.i.i.preheader3562 ] ; 2 uses
  %.12366.i.i.prol = phi ptr [ %i.eqz, %.lr.ph70.i.i.prol ], [ %.12366.i.i.ph, %.lr.ph70.i.i.preheader3562 ] ; 2 uses
  %prol.iter3820 = phi i32 [ %prol.iter3820.next, %.lr.ph70.i.i.prol ], [ 0, %.lr.ph70.i.i.preheader3562 ]
  %i.equ = load float, ptr %.169.i.i.prol, align 4, !tbaa !59
  %i.eqv = load float, ptr %.12167.i.i.prol, align 4, !tbaa !59
  %i.eqw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.equ, float %i.eqv)
  store float %i.eqw, ptr %.12366.i.i.prol, align 4, !tbaa !59
  %i.eqx = getelementptr inbounds nuw i8, ptr %.169.i.i.prol, i64 4 ; 2 uses
  %i.eqy = getelementptr inbounds nuw i8, ptr %.12167.i.i.prol, i64 4 ; 2 uses
  %i.eqz = getelementptr inbounds nuw i8, ptr %.12366.i.i.prol, i64 4 ; 2 uses
  %i.era = add nuw nsw i32 %.11968.i.i.prol, 1    ; 2 uses
  %prol.iter3820.next = add i32 %prol.iter3820, 1 ; 2 uses
  %prol.iter3820.cmp.not = icmp eq i32 %prol.iter3820.next, %xtraiter3818
  br i1 %prol.iter3820.cmp.not, label %.lr.ph70.i.i.prol.loopexit, label %.lr.ph70.i.i.prol, !llvm.loop !238

.lr.ph70.i.i.prol.loopexit:                       ; preds = %.lr.ph70.i.i.prol, %.lr.ph70.i.i.preheader3562
  %.169.i.i.unr = phi ptr [ %.169.i.i.ph, %.lr.ph70.i.i.preheader3562 ], [ %i.eqx, %.lr.ph70.i.i.prol ]
  %.11968.i.i.unr = phi i32 [ %.11968.i.i.ph, %.lr.ph70.i.i.preheader3562 ], [ %i.era, %.lr.ph70.i.i.prol ]
  %.12167.i.i.unr = phi ptr [ %.12167.i.i.ph, %.lr.ph70.i.i.preheader3562 ], [ %i.eqy, %.lr.ph70.i.i.prol ]
  %.12366.i.i.unr = phi ptr [ %.12366.i.i.ph, %.lr.ph70.i.i.preheader3562 ], [ %i.eqz, %.lr.ph70.i.i.prol ]
  %i.erb = sub i32 %.11968.i.i.ph, %i.epy
  %i.erc = icmp ugt i32 %i.erb, -4
  br i1 %i.erc, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i

.lr.ph.i.i716:                                    ; preds = %bb.gx, %.lr.ph.i.i716
  %.062.i.i = phi ptr [ %i.etc, %.lr.ph.i.i716 ], [ %0, %bb.gx ] ; 2 uses
  %.01861.i.i = phi i32 [ %i.etf, %.lr.ph.i.i716 ], [ 0, %bb.gx ]
  %.02060.i.i = phi ptr [ %i.etd, %.lr.ph.i.i716 ], [ %1, %bb.gx ] ; 2 uses
  %.02259.i.i = phi ptr [ %i.ete, %.lr.ph.i.i716 ], [ %2, %bb.gx ] ; 2 uses
  %i.erd = load <4 x float>, ptr %.062.i.i, align 1, !tbaa !60 ; 4 uses
  %i.ere = load <4 x float>, ptr %.02060.i.i, align 1, !tbaa !60 ; 4 uses
  %i.erf = fcmp fast oeq <4 x float> %i.ere, zeroinitializer ; 2 uses
  %i.erg = fcmp fast oeq <4 x float> %i.erd, zeroinitializer ; 2 uses
  %.not58.i.i = or <4 x i1> %i.erg, %i.erf
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
  %i.esx = bitcast <4 x float> %i.est to <4 x i32>
  %i.esy = select <4 x i1> %.not58.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.esx
  %i.esz = select <4 x i1> %i.erf, <4 x i32> %i.esv, <4 x i32> zeroinitializer
  %i.eta = select <4 x i1> %i.erg, <4 x i32> %i.esw, <4 x i32> %i.esz
  %i.etb = or <4 x i32> %i.esy, %i.eta
  store <4 x i32> %i.etb, ptr %.02259.i.i, align 1, !tbaa !60
  %i.etc = getelementptr inbounds nuw i8, ptr %.062.i.i, i64 16 ; 2 uses
  %i.etd = getelementptr inbounds nuw i8, ptr %.02060.i.i, i64 16 ; 2 uses
  %i.ete = getelementptr inbounds nuw i8, ptr %.02259.i.i, i64 16 ; 2 uses
  %i.etf = add nuw nsw i32 %.01861.i.i, 4         ; 2 uses
  %i.etg = or disjoint i32 %i.etf, 3
  %i.eth = icmp slt i32 %i.etg, %i.epy
  br i1 %i.eth, label %.lr.ph.i.i716, label %.preheader.loopexit.i.i717, !llvm.loop !239

.lr.ph70.i.i:                                     ; preds = %.lr.ph70.i.i.prol.loopexit, %.lr.ph70.i.i
  %.169.i.i = phi ptr [ %i.eud, %.lr.ph70.i.i ], [ %.169.i.i.unr, %.lr.ph70.i.i.prol.loopexit ] ; 5 uses
  %.11968.i.i = phi i32 [ %i.eug, %.lr.ph70.i.i ], [ %.11968.i.i.unr, %.lr.ph70.i.i.prol.loopexit ]
  %.12167.i.i = phi ptr [ %i.eue, %.lr.ph70.i.i ], [ %.12167.i.i.unr, %.lr.ph70.i.i.prol.loopexit ] ; 5 uses
  %.12366.i.i = phi ptr [ %i.euf, %.lr.ph70.i.i ], [ %.12366.i.i.unr, %.lr.ph70.i.i.prol.loopexit ] ; 5 uses
  %i.eti = load float, ptr %.169.i.i, align 4, !tbaa !59
  %i.etj = load float, ptr %.12167.i.i, align 4, !tbaa !59
  %i.etk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.eti, float %i.etj)
  store float %i.etk, ptr %.12366.i.i, align 4, !tbaa !59
  %i.etl = getelementptr inbounds nuw i8, ptr %.169.i.i, i64 4
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
.lr.ph.i53.i839.preheader:                        ; preds = %bb.jy
  %xtraiter3720 = and i32 %.sroa.speculated69.i825, 1
  %i.gwk = icmp eq i32 %.sroa.speculated69.i825, 1
  br i1 %i.gwk, label %.lr.ph.i53.i839.epil.preheader, label %.lr.ph.i53.i839.preheader.new

.lr.ph.i53.i839.preheader.new:                    ; preds = %.lr.ph.i53.i839.preheader
  %unroll_iter3723 = and i32 %.sroa.speculated69.i825, 2147483646
  br label %.lr.ph.i53.i839

.lr.ph.i53.i839:                                  ; preds = %.lr.ph.i53.i839, %.lr.ph.i53.i839.preheader.new
  %.020.i.i840 = phi ptr [ %0, %.lr.ph.i53.i839.preheader.new ], [ %i.gxg, %.lr.ph.i53.i839 ] ; 3 uses
  %.01118.i.i842 = phi ptr [ %1, %.lr.ph.i53.i839.preheader.new ], [ %i.gxh, %.lr.ph.i53.i839 ] ; 3 uses
  %.01217.i.i843 = phi ptr [ %2, %.lr.ph.i53.i839.preheader.new ], [ %i.gxi, %.lr.ph.i53.i839 ] ; 3 uses
  %niter3724 = phi i32 [ 0, %.lr.ph.i53.i839.preheader.new ], [ %niter3724.next.1, %.lr.ph.i53.i839 ]
  %i.gwl = load <4 x float>, ptr %.020.i.i840, align 1, !tbaa !60 ; 2 uses
  %i.gwm = load float, ptr %.01118.i.i842, align 4, !tbaa !59
  %i.gwn = insertelement <4 x float> poison, float %i.gwm, i64 0
  %i.gwo = shufflevector <4 x float> %i.gwn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gwp = fdiv fast <4 x float> %i.gwo, %i.gwl
  %i.gwq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gwp)
  %i.gwr = sitofp fast <4 x i32> %i.gwq to <4 x float>
  %i.gws = fmul fast <4 x float> %i.gwl, %i.gwr
  %i.gwt = fsub fast <4 x float> %i.gwo, %i.gws
  store <4 x float> %i.gwt, ptr %.01217.i.i843, align 1, !tbaa !60
  %i.gwu = getelementptr inbounds nuw i8, ptr %.020.i.i840, i64 16
  %i.gwv = getelementptr inbounds nuw i8, ptr %.01118.i.i842, i64 4
  %i.gww = getelementptr inbounds nuw i8, ptr %.01217.i.i843, i64 16
  %i.gwx = load <4 x float>, ptr %i.gwu, align 1, !tbaa !60 ; 2 uses
  %i.gwy = load float, ptr %i.gwv, align 4, !tbaa !59
  %i.gwz = insertelement <4 x float> poison, float %i.gwy, i64 0
  %i.gxa = shufflevector <4 x float> %i.gwz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gxb = fdiv fast <4 x float> %i.gxa, %i.gwx
  %i.gxc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gxb)
  %i.gxd = sitofp fast <4 x i32> %i.gxc to <4 x float>
  %i.gxe = fmul fast <4 x float> %i.gwx, %i.gxd
  %i.gxf = fsub fast <4 x float> %i.gxa, %i.gxe
  store <4 x float> %i.gxf, ptr %i.gww, align 1, !tbaa !60
  %i.gxg = getelementptr inbounds nuw i8, ptr %.020.i.i840, i64 32 ; 2 uses
  %i.gxh = getelementptr inbounds nuw i8, ptr %.01118.i.i842, i64 8 ; 2 uses
  %i.gxi = getelementptr inbounds nuw i8, ptr %.01217.i.i843, i64 32 ; 2 uses
  %niter3724.next.1 = add i32 %niter3724, 2       ; 2 uses
  %niter3724.ncmp.1 = icmp eq i32 %niter3724.next.1, %unroll_iter3723
  br i1 %niter3724.ncmp.1, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit.loopexit3623.unr-lcssa, label %.lr.ph.i53.i839, !llvm.loop !288

bb.jz:                                            ; preds = %bb.jx
  %i.gxj = icmp eq i32 %4, 1
  br i1 %i.gxj, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %.val.i833 = load float, ptr %1, align 4, !tbaa !59
  %i.gxk = insertelement <4 x float> poison, float %.val.i833, i64 0
  %i.gxl = shufflevector <4 x float> %i.gxk, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.gxm = icmp sgt i32 %i.gny, 3
  br i1 %i.gxm, label %.lr.ph.i55.i834.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i55.i834.preheader:                        ; preds = %bb.ka
  %i.gxn = add nsw i32 %i.gny, -4                 ; 2 uses
  %i.gxo = lshr i32 %i.gxn, 2                     ; 2 uses
  %i.gxp = add nuw nsw i32 %i.gxo, 1              ; 2 uses
  %i.gxq = icmp eq i32 %i.gxo, 0
  br i1 %i.gxq, label %.lr.ph.i55.i834.epil.preheader, label %.lr.ph.i55.i834.preheader.new

.lr.ph.i55.i834.preheader.new:                    ; preds = %.lr.ph.i55.i834.preheader
  %unroll_iter3718 = and i32 %i.gxp, 2147483646
  br label %.lr.ph.i55.i834

.lr.ph.i55.i834:                                  ; preds = %.lr.ph.i55.i834, %.lr.ph.i55.i834.preheader.new
  %.07.i.i835 = phi ptr [ %0, %.lr.ph.i55.i834.preheader.new ], [ %i.gyf, %.lr.ph.i55.i834 ] ; 3 uses
  %.0115.i.i837 = phi ptr [ %2, %.lr.ph.i55.i834.preheader.new ], [ %i.gyg, %.lr.ph.i55.i834 ] ; 3 uses
  %niter3719 = phi i32 [ 0, %.lr.ph.i55.i834.preheader.new ], [ %niter3719.next.1, %.lr.ph.i55.i834 ]
  %i.gxr = load <4 x float>, ptr %.07.i.i835, align 1, !tbaa !60 ; 2 uses
  %i.gxs = fdiv fast <4 x float> %i.gxl, %i.gxr
  %i.gxt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gxs)
  %i.gxu = sitofp fast <4 x i32> %i.gxt to <4 x float>
  %i.gxv = fmul fast <4 x float> %i.gxr, %i.gxu
  %i.gxw = fsub fast <4 x float> %i.gxl, %i.gxv
  store <4 x float> %i.gxw, ptr %.0115.i.i837, align 1, !tbaa !60
  %i.gxx = getelementptr inbounds nuw i8, ptr %.07.i.i835, i64 16
  %i.gxy = getelementptr inbounds nuw i8, ptr %.0115.i.i837, i64 16
  %i.gxz = load <4 x float>, ptr %i.gxx, align 1, !tbaa !60 ; 2 uses
  %i.gya = fdiv fast <4 x float> %i.gxl, %i.gxz
  %i.gyb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gya)
  %i.gyc = sitofp fast <4 x i32> %i.gyb to <4 x float>
  %i.gyd = fmul fast <4 x float> %i.gxz, %i.gyc
  %i.gye = fsub fast <4 x float> %i.gxl, %i.gyd
  store <4 x float> %i.gye, ptr %i.gxy, align 1, !tbaa !60
  %i.gyf = getelementptr inbounds nuw i8, ptr %.07.i.i835, i64 32 ; 2 uses
  %i.gyg = getelementptr inbounds nuw i8, ptr %.0115.i.i837, i64 32 ; 2 uses
  %niter3719.next.1 = add i32 %niter3719, 2       ; 2 uses
  %niter3719.ncmp.1.not = icmp eq i32 %niter3719.next.1, %unroll_iter3718
  br i1 %niter3719.ncmp.1.not, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit.loopexit3624.unr-lcssa, label %.lr.ph.i55.i834, !llvm.loop !289

bb.kb:                                            ; preds = %bb.jz
  %i.gyh = icmp eq i32 %3, 1
  %i.gyi = icmp eq i32 %.sroa.speculated.i826, 4
  %or.cond.i827 = and i1 %i.gyh, %i.gyi
  br i1 %or.cond.i827, label %bb.kc, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.kc:                                            ; preds = %bb.kb
  %i.gyj = load <4 x float>, ptr %0, align 1, !tbaa !60 ; 6 uses
  %xtraiter3712 = and i32 %.sroa.speculated69.i825, 1
  %.not = icmp slt i32 %3, %4
  br i1 %.not, label %.new, label %.lr.ph.i57.i828.epil.preheader

.new:                                             ; preds = %bb.kc
  %unroll_iter = and i32 %.sroa.speculated69.i825, 2147483646
  %i.gyk = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gyj
  %i.gyl = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gyj
  br label %.lr.ph.i57.i828

.lr.ph.i57.i828:                                  ; preds = %.lr.ph.i57.i828, %.new
  %.017.i.i829 = phi ptr [ %1, %.new ], [ %i.gze, %.lr.ph.i57.i828 ] ; 3 uses
  %.01015.i.i831 = phi ptr [ %2, %.new ], [ %i.gzf, %.lr.ph.i57.i828 ] ; 3 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i57.i828 ]
  %i.gym = load float, ptr %.017.i.i829, align 4, !tbaa !59
  %i.gyn = insertelement <4 x float> poison, float %i.gym, i64 0
  %i.gyo = shufflevector <4 x float> %i.gyn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gyp = fmul fast <4 x float> %i.gyo, %i.gyk
  %i.gyq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gyp)
  %i.gyr = sitofp fast <4 x i32> %i.gyq to <4 x float>
  %i.gys = fmul fast <4 x float> %i.gyj, %i.gyr
  %i.gyt = fsub fast <4 x float> %i.gyo, %i.gys
  store <4 x float> %i.gyt, ptr %.01015.i.i831, align 1, !tbaa !60
  %i.gyu = getelementptr inbounds nuw i8, ptr %.017.i.i829, i64 4
  %i.gyv = getelementptr inbounds nuw i8, ptr %.01015.i.i831, i64 16
  %i.gyw = load float, ptr %i.gyu, align 4, !tbaa !59
  %i.gyx = insertelement <4 x float> poison, float %i.gyw, i64 0
  %i.gyy = shufflevector <4 x float> %i.gyx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gyz = fmul fast <4 x float> %i.gyy, %i.gyl
  %i.gza = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gyz)
  %i.gzb = sitofp fast <4 x i32> %i.gza to <4 x float>
  %i.gzc = fmul fast <4 x float> %i.gyj, %i.gzb
  %i.gzd = fsub fast <4 x float> %i.gyy, %i.gzc
  store <4 x float> %i.gzd, ptr %i.gyv, align 1, !tbaa !60
  %i.gze = getelementptr inbounds nuw i8, ptr %.017.i.i829, i64 8 ; 2 uses
  %i.gzf = getelementptr inbounds nuw i8, ptr %.01015.i.i831, i64 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit.loopexit3625.unr-lcssa, label %.lr.ph.i57.i828, !llvm.loop !290

bb.kd:                                            ; preds = %bb.a
  %.sroa.speculated77.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i891 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.gzg = mul nsw i32 %.sroa.speculated.i891, %.sroa.speculated77.i ; 17 uses
  %i.gzh = icmp eq i32 %5, %6
  br i1 %i.gzh, label %bb.ke, label %bb.kq

bb.ke:                                            ; preds = %bb.kd
  %i.gzi = icmp eq i32 %3, %4
  br i1 %i.gzi, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.gzj = icmp sgt i32 %i.gzg, 3
  br i1 %i.gzj, label %.lr.ph.i.i918, label %.preheader.i.i912

.preheader.loopexit.i.i920:                       ; preds = %.lr.ph.i.i918
  %i.gzk = and i32 %i.gzg, 2147483644
  br label %.preheader.i.i912

.preheader.i.i912:                                ; preds = %.preheader.loopexit.i.i920, %bb.kf
  %.022.lcssa.i.i913 = phi ptr [ %2, %bb.kf ], [ %i.hcj, %.preheader.loopexit.i.i920 ]
  %.020.lcssa.i.i914 = phi ptr [ %1, %bb.kf ], [ %i.hci, %.preheader.loopexit.i.i920 ]
  %.018.lcssa.i.i915 = phi i32 [ 0, %bb.kf ], [ %i.gzk, %.preheader.loopexit.i.i920 ] ; 2 uses
  %.0.lcssa.i.i916 = phi ptr [ %0, %bb.kf ], [ %i.hch, %.preheader.loopexit.i.i920 ]
  %i.gzl = icmp slt i32 %.018.lcssa.i.i915, %i.gzg
  br i1 %i.gzl, label %.lr.ph97.i.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i.i918:                                    ; preds = %bb.kf, %.lr.ph.i.i918
  %.089.i.i = phi ptr [ %i.hch, %.lr.ph.i.i918 ], [ %0, %bb.kf ] ; 2 uses
  %.01888.i.i = phi i32 [ %i.hck, %.lr.ph.i.i918 ], [ 0, %bb.kf ]
  %.02087.i.i = phi ptr [ %i.hci, %.lr.ph.i.i918 ], [ %1, %bb.kf ] ; 2 uses
  %.02286.i.i = phi ptr [ %i.hcj, %.lr.ph.i.i918 ], [ %2, %bb.kf ] ; 2 uses
  %i.gzm = load <4 x float>, ptr %.089.i.i, align 1, !tbaa !60 ; 2 uses
  %i.gzn = load <4 x float>, ptr %.02087.i.i, align 1, !tbaa !60 ; 2 uses
  %i.gzo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gzm, <4 x float> nofpclass(nan inf) %i.gzn) ; 2 uses
  %i.gzp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gzm, <4 x float> nofpclass(nan inf) %i.gzn)
  %i.gzq = fsub fast <4 x float> %i.gzp, %i.gzo
  %i.gzr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gzq, <4 x float> splat (float f0x42B0C0A5))
  %i.gzs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gzr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gzt = fmul fast <4 x float> %i.gzs, splat (float f0x3FB8AA3B)
  %i.gzu = fadd fast <4 x float> %i.gzt, splat (float 5.000000e-01) ; 2 uses
  %i.gzv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gzu)
  %i.gzw = sitofp fast <4 x i32> %i.gzv to <4 x float> ; 2 uses
  %i.gzx = fcmp fast olt <4 x float> %i.gzu, %i.gzw
  %i.gzy = select <4 x i1> %i.gzx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gzz = fsub fast <4 x float> %i.gzw, %i.gzy   ; 2 uses
  %i.haa = fmul fast <4 x float> %i.gzz, splat (float f0x3F317218)
  %i.hab = fsub fast <4 x float> %i.gzs, %i.haa   ; 8 uses
  %i.hac = fmul fast <4 x float> %i.hab, %i.hab
  %i.had = fmul fast <4 x float> %i.hab, splat (float f0x39506967)
  %i.hae = fadd fast <4 x float> %i.had, splat (float f0x3AB743CE)
  %i.haf = fmul fast <4 x float> %i.hae, %i.hab
  %i.hag = fadd fast <4 x float> %i.haf, splat (float f0x3C088908)
  %i.hah = fmul fast <4 x float> %i.hag, %i.hab
  %i.hai = fadd fast <4 x float> %i.hah, splat (float f0x3D2AA9C1)
  %i.haj = fmul fast <4 x float> %i.hai, %i.hab
  %i.hak = fadd fast <4 x float> %i.haj, splat (float f0x3E2AAAAA)
  %i.hal = fmul fast <4 x float> %i.hak, %i.hab
  %i.ham = fadd fast <4 x float> %i.hal, splat (float 5.000000e-01)
  %i.han = fmul fast <4 x float> %i.hac, %i.ham
  %i.hao = fadd fast <4 x float> %i.hab, %i.han
  %i.hap = fadd fast <4 x float> %i.hao, splat (float 1.000000e+00)
  %i.haq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gzz)
  %i.har = shl <4 x i32> %i.haq, splat (i32 23)
  %i.has = add <4 x i32> %i.har, splat (i32 1065353216)
  %i.hat = bitcast <4 x i32> %i.has to <4 x float>
  %i.hau = fmul fast <4 x float> %i.hap, %i.hat
  %i.hav = fadd fast <4 x float> %i.hau, splat (float 1.000000e+00) ; 2 uses
  %i.haw = fcmp fast ole <4 x float> %i.hav, zeroinitializer
  %i.hax = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hav, <4 x float> splat (float f0x00800000))
  %i.hay = bitcast <4 x float> %i.hax to <4 x i32> ; 2 uses
  %i.haz = lshr <4 x i32> %i.hay, splat (i32 23)
  %i.hba = and <4 x i32> %i.hay, splat (i32 -2139095041)
  %i.hbb = or disjoint <4 x i32> %i.hba, splat (i32 1056964608)
  %i.hbc = bitcast <4 x i32> %i.hbb to <4 x float> ; 3 uses
  %i.hbd = add nsw <4 x i32> %i.haz, splat (i32 -127)
  %i.hbe = sitofp fast <4 x i32> %i.hbd to <4 x float> ; 2 uses
  %i.hbf = fadd fast <4 x float> %i.hbe, splat (float 1.000000e+00)
  %i.hbg = fcmp fast olt <4 x float> %i.hbc, splat (float f0x3F3504F3) ; 2 uses
  %i.hbh = select <4 x i1> %i.hbg, <4 x float> %i.hbc, <4 x float> zeroinitializer
  %i.hbi = fadd fast <4 x float> %i.hbc, splat (float -1.000000e+00)
  %i.hbj = select fast <4 x i1> %i.hbg, <4 x float> %i.hbe, <4 x float> %i.hbf
  %i.hbk = fadd fast <4 x float> %i.hbi, %i.hbh   ; 12 uses
  %i.hbl = fmul fast <4 x float> %i.hbk, %i.hbk
  %i.hbm = fmul fast <4 x float> %i.hbk, splat (float f0x3D9021BB)
  %i.hbn = fadd fast <4 x float> %i.hbm, splat (float f0xBDEBD1B8)
  %i.hbo = fmul fast <4 x float> %i.hbn, %i.hbk
  %i.hbp = fadd fast <4 x float> %i.hbo, splat (float f0x3DEF251A)
  %i.hbq = fmul fast <4 x float> %i.hbp, %i.hbk
  %i.hbr = fadd fast <4 x float> %i.hbq, splat (float f0xBDFE5D4F)
  %i.hbs = fmul fast <4 x float> %i.hbr, %i.hbk
  %i.hbt = fadd fast <4 x float> %i.hbs, splat (float f0x3E11E9BF)
  %i.hbu = fmul fast <4 x float> %i.hbt, %i.hbk
  %i.hbv = fadd fast <4 x float> %i.hbu, splat (float f0xBE2AAE50)
  %i.hbw = fmul fast <4 x float> %i.hbv, %i.hbk
  %i.hbx = fadd fast <4 x float> %i.hbw, splat (float f0x3E4CCEAC)
  %i.hby = fmul fast <4 x float> %i.hbx, %i.hbk
  %i.hbz = fadd fast <4 x float> %i.hby, splat (float f0xBE7FFFFC)
  %i.hca = fmul fast <4 x float> %i.hbz, %i.hbk
  %i.hcb = fadd fast <4 x float> %i.hca, splat (float f0x3EAAAAAA)
  %i.hcc = fmul fast <4 x float> %i.hcb, %i.hbk
  %reass.mul.i.i919 = fmul fast <4 x float> %i.hbj, splat (float f0x3F317218)
  %reass.add84.i.i = fadd fast <4 x float> %i.hcc, splat (float -5.000000e-01)
  %reass.mul85.i.i = fmul fast <4 x float> %i.hbl, %reass.add84.i.i
  %i.hcd = fadd fast <4 x float> %reass.mul.i.i919, %i.hbk
  %i.hce = fadd fast <4 x float> %reass.mul85.i.i, %i.hcd
  %i.hcf = select <4 x i1> %i.haw, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.hce
  %i.hcg = fadd fast <4 x float> %i.hcf, %i.gzo
  store <4 x float> %i.hcg, ptr %.02286.i.i, align 1, !tbaa !60
  %i.hch = getelementptr inbounds nuw i8, ptr %.089.i.i, i64 16 ; 2 uses
  %i.hci = getelementptr inbounds nuw i8, ptr %.02087.i.i, i64 16 ; 2 uses
  %i.hcj = getelementptr inbounds nuw i8, ptr %.02286.i.i, i64 16 ; 2 uses
  %i.hck = add nuw nsw i32 %.01888.i.i, 4         ; 2 uses
  %i.hcl = or disjoint i32 %i.hck, 3
  %i.hcm = icmp slt i32 %i.hcl, %i.gzg
  br i1 %i.hcm, label %.lr.ph.i.i918, label %.preheader.loopexit.i.i920, !llvm.loop !291

.lr.ph97.i.i:                                     ; preds = %.preheader.i.i912, %.lr.ph97.i.i
  %.196.i.i = phi ptr [ %i.hcv, %.lr.ph97.i.i ], [ %.0.lcssa.i.i916, %.preheader.i.i912 ] ; 2 uses
  %.11995.i.i = phi i32 [ %i.hcy, %.lr.ph97.i.i ], [ %.018.lcssa.i.i915, %.preheader.i.i912 ]
  %.12194.i.i = phi ptr [ %i.hcw, %.lr.ph97.i.i ], [ %.020.lcssa.i.i914, %.preheader.i.i912 ] ; 2 uses
  %.12393.i.i = phi ptr [ %i.hcx, %.lr.ph97.i.i ], [ %.022.lcssa.i.i913, %.preheader.i.i912 ] ; 2 uses
  %i.hcn = load float, ptr %.196.i.i, align 4, !tbaa !59 ; 2 uses
  %i.hco = load float, ptr %.12194.i.i, align 4, !tbaa !59 ; 2 uses
  %i.hcp = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.hcn, float %i.hco) ; 2 uses
  %i.hcq = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.hco, float %i.hcn)
  %i.hcr = fsub fast float %i.hcq, %i.hcp
  %i.hcs = tail call fast float @llvm.exp.f32(float %i.hcr)
  %i.hct = tail call fast nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.hcs) #21
  %i.hcu = fadd fast float %i.hcp, %i.hct
  store float %i.hcu, ptr %.12393.i.i, align 4, !tbaa !59
  %i.hcv = getelementptr inbounds nuw i8, ptr %.196.i.i, i64 4
  %i.hcw = getelementptr inbounds nuw i8, ptr %.12194.i.i, i64 4
  %i.hcx = getelementptr inbounds nuw i8, ptr %.12393.i.i, i64 4
  %i.hcy = add nuw nsw i32 %.11995.i.i, 1         ; 2 uses
  %exitcond.not.i.i917 = icmp eq i32 %i.hcy, %i.gzg
  br i1 %exitcond.not.i.i917, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph97.i.i, !llvm.loop !292

bb.kg:                                            ; preds = %bb.ke
  %i.hcz = icmp eq i32 %4, 1
  br i1 %i.hcz, label %bb.kh, label %bb.kl

bb.kh:                                            ; preds = %bb.kg
  %i.hda = load float, ptr %1, align 4, !tbaa !59 ; 3 uses
  %i.hdb = icmp eq i32 %.sroa.speculated.i891, 4
  br i1 %i.hdb, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.hdc = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kh
  %i.hdd = insertelement <4 x float> poison, float %i.hda, i64 0
  %i.hde = shufflevector <4 x float> %i.hdd, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %i.hdf = phi fast <4 x float> [ %i.hdc, %bb.ki ], [ %i.hde, %bb.kj ] ; 2 uses
  %i.hdg = icmp sgt i32 %i.gzg, 3
  br i1 %i.hdg, label %.lr.ph.i37.i909, label %.preheader.i34.i903

.preheader.loopexit.i39.i911:                     ; preds = %.lr.ph.i37.i909
  %i.hdh = and i32 %i.gzg, 2147483644
  br label %.preheader.i34.i903

.preheader.i34.i903:                              ; preds = %.preheader.loopexit.i39.i911, %bb.kk
  %.019.lcssa.i.i904 = phi ptr [ %2, %bb.kk ], [ %i.hge, %.preheader.loopexit.i39.i911 ]
  %.017.lcssa.i.i905 = phi i32 [ 0, %bb.kk ], [ %i.hdh, %.preheader.loopexit.i39.i911 ] ; 2 uses
  %.0.lcssa.i35.i906 = phi ptr [ %0, %bb.kk ], [ %i.hgd, %.preheader.loopexit.i39.i911 ]
  %i.hdi = icmp slt i32 %.017.lcssa.i.i905, %i.gzg
  br i1 %i.hdi, label %.lr.ph96.i.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i37.i909:                                  ; preds = %bb.kk, %.lr.ph.i37.i909
  %.090.i.i = phi ptr [ %i.hgd, %.lr.ph.i37.i909 ], [ %0, %bb.kk ] ; 2 uses
  %.01789.i.i = phi i32 [ %i.hgf, %.lr.ph.i37.i909 ], [ 0, %bb.kk ]
  %.01988.i.i = phi ptr [ %i.hge, %.lr.ph.i37.i909 ], [ %2, %bb.kk ] ; 2 uses
  %i.hdj = load <4 x float>, ptr %.090.i.i, align 1, !tbaa !60 ; 2 uses
  %i.hdk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hdj, <4 x float> nofpclass(nan inf) %i.hdf) ; 2 uses
  %i.hdl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hdj, <4 x float> nofpclass(nan inf) %i.hdf)
  %i.hdm = fsub fast <4 x float> %i.hdl, %i.hdk
  %i.hdn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hdm, <4 x float> splat (float f0x42B0C0A5))
  %i.hdo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hdn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hdp = fmul fast <4 x float> %i.hdo, splat (float f0x3FB8AA3B)
  %i.hdq = fadd fast <4 x float> %i.hdp, splat (float 5.000000e-01) ; 2 uses
  %i.hdr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hdq)
  %i.hds = sitofp fast <4 x i32> %i.hdr to <4 x float> ; 2 uses
  %i.hdt = fcmp fast olt <4 x float> %i.hdq, %i.hds
  %i.hdu = select <4 x i1> %i.hdt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hdv = fsub fast <4 x float> %i.hds, %i.hdu   ; 2 uses
  %i.hdw = fmul fast <4 x float> %i.hdv, splat (float f0x3F317218)
  %i.hdx = fsub fast <4 x float> %i.hdo, %i.hdw   ; 8 uses
  %i.hdy = fmul fast <4 x float> %i.hdx, %i.hdx
  %i.hdz = fmul fast <4 x float> %i.hdx, splat (float f0x39506967)
  %i.hea = fadd fast <4 x float> %i.hdz, splat (float f0x3AB743CE)
  %i.heb = fmul fast <4 x float> %i.hea, %i.hdx
  %i.hec = fadd fast <4 x float> %i.heb, splat (float f0x3C088908)
  %i.hed = fmul fast <4 x float> %i.hec, %i.hdx
  %i.hee = fadd fast <4 x float> %i.hed, splat (float f0x3D2AA9C1)
  %i.hef = fmul fast <4 x float> %i.hee, %i.hdx
  %i.heg = fadd fast <4 x float> %i.hef, splat (float f0x3E2AAAAA)
  %i.heh = fmul fast <4 x float> %i.heg, %i.hdx
  %i.hei = fadd fast <4 x float> %i.heh, splat (float 5.000000e-01)
  %i.hej = fmul fast <4 x float> %i.hdy, %i.hei
  %i.hek = fadd fast <4 x float> %i.hdx, %i.hej
  %i.hel = fadd fast <4 x float> %i.hek, splat (float 1.000000e+00)
  %i.hem = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hdv)
  %i.hen = shl <4 x i32> %i.hem, splat (i32 23)
  %i.heo = add <4 x i32> %i.hen, splat (i32 1065353216)
  %i.hep = bitcast <4 x i32> %i.heo to <4 x float>
  %i.heq = fmul fast <4 x float> %i.hel, %i.hep
  %i.her = fadd fast <4 x float> %i.heq, splat (float 1.000000e+00) ; 2 uses
  %i.hes = fcmp fast ole <4 x float> %i.her, zeroinitializer
  %i.het = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.her, <4 x float> splat (float f0x00800000))
  %i.heu = bitcast <4 x float> %i.het to <4 x i32> ; 2 uses
  %i.hev = lshr <4 x i32> %i.heu, splat (i32 23)
  %i.hew = and <4 x i32> %i.heu, splat (i32 -2139095041)
  %i.hex = or disjoint <4 x i32> %i.hew, splat (i32 1056964608)
  %i.hey = bitcast <4 x i32> %i.hex to <4 x float> ; 3 uses
  %i.hez = add nsw <4 x i32> %i.hev, splat (i32 -127)
  %i.hfa = sitofp fast <4 x i32> %i.hez to <4 x float> ; 2 uses
  %i.hfb = fadd fast <4 x float> %i.hfa, splat (float 1.000000e+00)
  %i.hfc = fcmp fast olt <4 x float> %i.hey, splat (float f0x3F3504F3) ; 2 uses
  %i.hfd = select <4 x i1> %i.hfc, <4 x float> %i.hey, <4 x float> zeroinitializer
  %i.hfe = fadd fast <4 x float> %i.hey, splat (float -1.000000e+00)
  %i.hff = select fast <4 x i1> %i.hfc, <4 x float> %i.hfa, <4 x float> %i.hfb
  %i.hfg = fadd fast <4 x float> %i.hfe, %i.hfd   ; 12 uses
  %i.hfh = fmul fast <4 x float> %i.hfg, %i.hfg
  %i.hfi = fmul fast <4 x float> %i.hfg, splat (float f0x3D9021BB)
  %i.hfj = fadd fast <4 x float> %i.hfi, splat (float f0xBDEBD1B8)
  %i.hfk = fmul fast <4 x float> %i.hfj, %i.hfg
  %i.hfl = fadd fast <4 x float> %i.hfk, splat (float f0x3DEF251A)
  %i.hfm = fmul fast <4 x float> %i.hfl, %i.hfg
  %i.hfn = fadd fast <4 x float> %i.hfm, splat (float f0xBDFE5D4F)
  %i.hfo = fmul fast <4 x float> %i.hfn, %i.hfg
  %i.hfp = fadd fast <4 x float> %i.hfo, splat (float f0x3E11E9BF)
  %i.hfq = fmul fast <4 x float> %i.hfp, %i.hfg
  %i.hfr = fadd fast <4 x float> %i.hfq, splat (float f0xBE2AAE50)
  %i.hfs = fmul fast <4 x float> %i.hfr, %i.hfg
  %i.hft = fadd fast <4 x float> %i.hfs, splat (float f0x3E4CCEAC)
  %i.hfu = fmul fast <4 x float> %i.hft, %i.hfg
  %i.hfv = fadd fast <4 x float> %i.hfu, splat (float f0xBE7FFFFC)
  %i.hfw = fmul fast <4 x float> %i.hfv, %i.hfg
  %i.hfx = fadd fast <4 x float> %i.hfw, splat (float f0x3EAAAAAA)
  %i.hfy = fmul fast <4 x float> %i.hfx, %i.hfg
  %reass.mul.i38.i910 = fmul fast <4 x float> %i.hff, splat (float f0x3F317218)
  %reass.add86.i.i = fadd fast <4 x float> %i.hfy, splat (float -5.000000e-01)
  %reass.mul87.i.i = fmul fast <4 x float> %i.hfh, %reass.add86.i.i
  %i.hfz = fadd fast <4 x float> %reass.mul.i38.i910, %i.hfg
  %i.hga = fadd fast <4 x float> %reass.mul87.i.i, %i.hfz
  %i.hgb = select <4 x i1> %i.hes, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.hga
  %i.hgc = fadd fast <4 x float> %i.hgb, %i.hdk
  store <4 x float> %i.hgc, ptr %.01988.i.i, align 1, !tbaa !60
  %i.hgd = getelementptr inbounds nuw i8, ptr %.090.i.i, i64 16 ; 2 uses
  %i.hge = getelementptr inbounds nuw i8, ptr %.01988.i.i, i64 16 ; 2 uses
  %i.hgf = add nuw nsw i32 %.01789.i.i, 4         ; 2 uses
  %i.hgg = or disjoint i32 %i.hgf, 3
  %i.hgh = icmp slt i32 %i.hgg, %i.gzg
  br i1 %i.hgh, label %.lr.ph.i37.i909, label %.preheader.loopexit.i39.i911, !llvm.loop !293

.lr.ph96.i.i:                                     ; preds = %.preheader.i34.i903, %.lr.ph96.i.i
  %.195.i.i = phi ptr [ %i.hgn, %.lr.ph96.i.i ], [ %.0.lcssa.i35.i906, %.preheader.i34.i903 ] ; 2 uses
  %.11894.i.i = phi i32 [ %i.hgp, %.lr.ph96.i.i ], [ %.017.lcssa.i.i905, %.preheader.i34.i903 ]
  %.12093.i.i = phi ptr [ %i.hgo, %.lr.ph96.i.i ], [ %.019.lcssa.i.i904, %.preheader.i34.i903 ] ; 2 uses
  %i.hgi = load float, ptr %.195.i.i, align 4, !tbaa !59 ; 2 uses
  %.sroa.speculated29.i.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.hgi, float %i.hda) ; 2 uses
  %.sroa.speculated.i.i907 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.hda, float %i.hgi)
  %i.hgj = fsub fast float %.sroa.speculated.i.i907, %.sroa.speculated29.i.i
  %i.hgk = tail call fast float @llvm.exp.f32(float %i.hgj)
  %i.hgl = tail call fast nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.hgk) #21
  %i.hgm = fadd fast float %.sroa.speculated29.i.i, %i.hgl
  store float %i.hgm, ptr %.12093.i.i, align 4, !tbaa !59
  %i.hgn = getelementptr inbounds nuw i8, ptr %.195.i.i, i64 4
  %i.hgo = getelementptr inbounds nuw i8, ptr %.12093.i.i, i64 4
  %i.hgp = add nuw nsw i32 %.11894.i.i, 1         ; 2 uses
  %exitcond.not.i36.i908 = icmp eq i32 %i.hgp, %i.gzg
  br i1 %exitcond.not.i36.i908, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph96.i.i, !llvm.loop !294

bb.kl:                                            ; preds = %bb.kg
  %i.hgq = icmp eq i32 %3, 1
  br i1 %i.hgq, label %bb.km, label %bb.kq

bb.km:                                            ; preds = %bb.kl
  %i.hgr = load float, ptr %0, align 4, !tbaa !59 ; 3 uses
  %i.hgs = icmp eq i32 %.sroa.speculated.i891, 4
  br i1 %i.hgs, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.hgt = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.kp

bb.ko:                                            ; preds = %bb.km
  %i.hgu = insertelement <4 x float> poison, float %i.hgr, i64 0
  %i.hgv = shufflevector <4 x float> %i.hgu, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn
  %i.hgw = phi fast <4 x float> [ %i.hgt, %bb.kn ], [ %i.hgv, %bb.ko ] ; 2 uses
  %i.hgx = icmp sgt i32 %i.gzg, 3
  br i1 %i.hgx, label %.lr.ph.i51.i, label %.preheader.i40.i899

.preheader.loopexit.i58.i:                        ; preds = %.lr.ph.i51.i
  %i.hgy = and i32 %i.gzg, 2147483644
  br label %.preheader.i40.i899

.preheader.i40.i899:                              ; preds = %.preheader.loopexit.i58.i, %bb.kp
  %.019.lcssa.i41.i900 = phi ptr [ %2, %bb.kp ], [ %i.hjv, %.preheader.loopexit.i58.i ]
  %.017.lcssa.i42.i901 = phi i32 [ 0, %bb.kp ], [ %i.hgy, %.preheader.loopexit.i58.i ] ; 2 uses
  %.0.lcssa.i43.i902 = phi ptr [ %1, %bb.kp ], [ %i.hju, %.preheader.loopexit.i58.i ]
  %i.hgz = icmp slt i32 %.017.lcssa.i42.i901, %i.gzg
  br i1 %i.hgz, label %.lr.ph96.i44.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i51.i:                                     ; preds = %bb.kp, %.lr.ph.i51.i
  %.090.i52.i = phi ptr [ %i.hju, %.lr.ph.i51.i ], [ %1, %bb.kp ] ; 2 uses
  %.01789.i53.i = phi i32 [ %i.hjw, %.lr.ph.i51.i ], [ 0, %bb.kp ]
  %.01988.i54.i = phi ptr [ %i.hjv, %.lr.ph.i51.i ], [ %2, %bb.kp ] ; 2 uses
  %i.hha = load <4 x float>, ptr %.090.i52.i, align 1, !tbaa !60 ; 2 uses
  %i.hhb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hgw, <4 x float> nofpclass(nan inf) %i.hha) ; 2 uses
  %i.hhc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hgw, <4 x float> nofpclass(nan inf) %i.hha)
  %i.hhd = fsub fast <4 x float> %i.hhc, %i.hhb
  %i.hhe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hhd, <4 x float> splat (float f0x42B0C0A5))
  %i.hhf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hhe, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hhg = fmul fast <4 x float> %i.hhf, splat (float f0x3FB8AA3B)
  %i.hhh = fadd fast <4 x float> %i.hhg, splat (float 5.000000e-01) ; 2 uses
  %i.hhi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hhh)
  %i.hhj = sitofp fast <4 x i32> %i.hhi to <4 x float> ; 2 uses
  %i.hhk = fcmp fast olt <4 x float> %i.hhh, %i.hhj
  %i.hhl = select <4 x i1> %i.hhk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hhm = fsub fast <4 x float> %i.hhj, %i.hhl   ; 2 uses
  %i.hhn = fmul fast <4 x float> %i.hhm, splat (float f0x3F317218)
  %i.hho = fsub fast <4 x float> %i.hhf, %i.hhn   ; 8 uses
  %i.hhp = fmul fast <4 x float> %i.hho, %i.hho
  %i.hhq = fmul fast <4 x float> %i.hho, splat (float f0x39506967)
  %i.hhr = fadd fast <4 x float> %i.hhq, splat (float f0x3AB743CE)
  %i.hhs = fmul fast <4 x float> %i.hhr, %i.hho
  %i.hht = fadd fast <4 x float> %i.hhs, splat (float f0x3C088908)
  %i.hhu = fmul fast <4 x float> %i.hht, %i.hho
  %i.hhv = fadd fast <4 x float> %i.hhu, splat (float f0x3D2AA9C1)
  %i.hhw = fmul fast <4 x float> %i.hhv, %i.hho
  %i.hhx = fadd fast <4 x float> %i.hhw, splat (float f0x3E2AAAAA)
  %i.hhy = fmul fast <4 x float> %i.hhx, %i.hho
  %i.hhz = fadd fast <4 x float> %i.hhy, splat (float 5.000000e-01)
  %i.hia = fmul fast <4 x float> %i.hhp, %i.hhz
  %i.hib = fadd fast <4 x float> %i.hho, %i.hia
  %i.hic = fadd fast <4 x float> %i.hib, splat (float 1.000000e+00)
  %i.hid = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hhm)
  %i.hie = shl <4 x i32> %i.hid, splat (i32 23)
  %i.hif = add <4 x i32> %i.hie, splat (i32 1065353216)
  %i.hig = bitcast <4 x i32> %i.hif to <4 x float>
  %i.hih = fmul fast <4 x float> %i.hic, %i.hig
  %i.hii = fadd fast <4 x float> %i.hih, splat (float 1.000000e+00) ; 2 uses
  %i.hij = fcmp fast ole <4 x float> %i.hii, zeroinitializer
  %i.hik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hii, <4 x float> splat (float f0x00800000))
  %i.hil = bitcast <4 x float> %i.hik to <4 x i32> ; 2 uses
  %i.him = lshr <4 x i32> %i.hil, splat (i32 23)
  %i.hin = and <4 x i32> %i.hil, splat (i32 -2139095041)
  %i.hio = or disjoint <4 x i32> %i.hin, splat (i32 1056964608)
  %i.hip = bitcast <4 x i32> %i.hio to <4 x float> ; 3 uses
  %i.hiq = add nsw <4 x i32> %i.him, splat (i32 -127)
  %i.hir = sitofp fast <4 x i32> %i.hiq to <4 x float> ; 2 uses
  %i.his = fadd fast <4 x float> %i.hir, splat (float 1.000000e+00)
  %i.hit = fcmp fast olt <4 x float> %i.hip, splat (float f0x3F3504F3) ; 2 uses
  %i.hiu = select <4 x i1> %i.hit, <4 x float> %i.hip, <4 x float> zeroinitializer
  %i.hiv = fadd fast <4 x float> %i.hip, splat (float -1.000000e+00)
  %i.hiw = select fast <4 x i1> %i.hit, <4 x float> %i.hir, <4 x float> %i.his
  %i.hix = fadd fast <4 x float> %i.hiv, %i.hiu   ; 12 uses
  %i.hiy = fmul fast <4 x float> %i.hix, %i.hix
  %i.hiz = fmul fast <4 x float> %i.hix, splat (float f0x3D9021BB)
  %i.hja = fadd fast <4 x float> %i.hiz, splat (float f0xBDEBD1B8)
  %i.hjb = fmul fast <4 x float> %i.hja, %i.hix
  %i.hjc = fadd fast <4 x float> %i.hjb, splat (float f0x3DEF251A)
  %i.hjd = fmul fast <4 x float> %i.hjc, %i.hix
  %i.hje = fadd fast <4 x float> %i.hjd, splat (float f0xBDFE5D4F)
  %i.hjf = fmul fast <4 x float> %i.hje, %i.hix
  %i.hjg = fadd fast <4 x float> %i.hjf, splat (float f0x3E11E9BF)
  %i.hjh = fmul fast <4 x float> %i.hjg, %i.hix
  %i.hji = fadd fast <4 x float> %i.hjh, splat (float f0xBE2AAE50)
  %i.hjj = fmul fast <4 x float> %i.hji, %i.hix
  %i.hjk = fadd fast <4 x float> %i.hjj, splat (float f0x3E4CCEAC)
  %i.hjl = fmul fast <4 x float> %i.hjk, %i.hix
  %i.hjm = fadd fast <4 x float> %i.hjl, splat (float f0xBE7FFFFC)
  %i.hjn = fmul fast <4 x float> %i.hjm, %i.hix
  %i.hjo = fadd fast <4 x float> %i.hjn, splat (float f0x3EAAAAAA)
  %i.hjp = fmul fast <4 x float> %i.hjo, %i.hix
  %reass.mul.i55.i = fmul fast <4 x float> %i.hiw, splat (float f0x3F317218)
  %reass.add86.i56.i = fadd fast <4 x float> %i.hjp, splat (float -5.000000e-01)
  %reass.mul87.i57.i = fmul fast <4 x float> %i.hiy, %reass.add86.i56.i
  %i.hjq = fadd fast <4 x float> %reass.mul.i55.i, %i.hix
  %i.hjr = fadd fast <4 x float> %reass.mul87.i57.i, %i.hjq
  %i.hjs = select <4 x i1> %i.hij, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.hjr
  %i.hjt = fadd fast <4 x float> %i.hjs, %i.hhb
  store <4 x float> %i.hjt, ptr %.01988.i54.i, align 1, !tbaa !60
  %i.hju = getelementptr inbounds nuw i8, ptr %.090.i52.i, i64 16 ; 2 uses
  %i.hjv = getelementptr inbounds nuw i8, ptr %.01988.i54.i, i64 16 ; 2 uses
  %i.hjw = add nuw nsw i32 %.01789.i53.i, 4       ; 2 uses
  %i.hjx = or disjoint i32 %i.hjw, 3
  %i.hjy = icmp slt i32 %i.hjx, %i.gzg
  br i1 %i.hjy, label %.lr.ph.i51.i, label %.preheader.loopexit.i58.i, !llvm.loop !295

.lr.ph96.i44.i:                                   ; preds = %.preheader.i40.i899, %.lr.ph96.i44.i
  %.195.i45.i = phi ptr [ %i.hke, %.lr.ph96.i44.i ], [ %.0.lcssa.i43.i902, %.preheader.i40.i899 ] ; 2 uses
  %.11894.i46.i = phi i32 [ %i.hkg, %.lr.ph96.i44.i ], [ %.017.lcssa.i42.i901, %.preheader.i40.i899 ]
  %.12093.i47.i = phi ptr [ %i.hkf, %.lr.ph96.i44.i ], [ %.019.lcssa.i41.i900, %.preheader.i40.i899 ] ; 2 uses
  %i.hjz = load float, ptr %.195.i45.i, align 4, !tbaa !59 ; 2 uses
  %.sroa.speculated29.i48.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.hgr, float %i.hjz) ; 2 uses
  %.sroa.speculated.i49.i = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.hjz, float %i.hgr)
  %i.hka = fsub fast float %.sroa.speculated.i49.i, %.sroa.speculated29.i48.i
  %i.hkb = tail call fast float @llvm.exp.f32(float %i.hka)
  %i.hkc = tail call fast nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.hkb) #21
  %i.hkd = fadd fast float %.sroa.speculated29.i48.i, %i.hkc
  store float %i.hkd, ptr %.12093.i47.i, align 4, !tbaa !59
  %i.hke = getelementptr inbounds nuw i8, ptr %.195.i45.i, i64 4
  %i.hkf = getelementptr inbounds nuw i8, ptr %.12093.i47.i, i64 4
  %i.hkg = add nuw nsw i32 %.11894.i46.i, 1       ; 2 uses
  %exitcond.not.i50.i = icmp eq i32 %i.hkg, %i.gzg
  br i1 %exitcond.not.i50.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph96.i44.i, !llvm.loop !296

bb.kq:                                            ; preds = %bb.kl, %bb.kd
  %i.hkh = icmp eq i32 %6, 1
  br i1 %i.hkh, label %bb.kr, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.kr:                                            ; preds = %bb.kq
  %i.hki = icmp eq i32 %3, %4
  br i1 %i.hki, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.hkj = icmp eq i32 %.sroa.speculated.i891, 4
  %i.hkk = icmp sgt i32 %.sroa.speculated77.i, 0
  %or.cond.i.i897 = and i1 %i.hkk, %i.hkj
  br i1 %or.cond.i.i897, label %.lr.ph.i59.i898, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i59.i898:                                  ; preds = %bb.ks, %.lr.ph.i59.i898
  %.077.i.i = phi ptr [ %i.hni, %.lr.ph.i59.i898 ], [ %0, %bb.ks ] ; 2 uses
  %.01076.i.i = phi i32 [ %i.hnl, %.lr.ph.i59.i898 ], [ 0, %bb.ks ]
  %.01175.i.i = phi ptr [ %i.hnj, %.lr.ph.i59.i898 ], [ %1, %bb.ks ] ; 2 uses
  %.01274.i.i = phi ptr [ %i.hnk, %.lr.ph.i59.i898 ], [ %2, %bb.ks ] ; 2 uses
  %i.hkl = load <4 x float>, ptr %.077.i.i, align 1, !tbaa !60 ; 2 uses
  %i.hkm = load float, ptr %.01175.i.i, align 4, !tbaa !59
  %i.hkn = insertelement <4 x float> poison, float %i.hkm, i64 0
  %i.hko = shufflevector <4 x float> %i.hkn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hkp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hkl, <4 x float> nofpclass(nan inf) %i.hko) ; 2 uses
  %i.hkq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hkl, <4 x float> nofpclass(nan inf) %i.hko)
  %i.hkr = fsub fast <4 x float> %i.hkq, %i.hkp
  %i.hks = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hkr, <4 x float> splat (float f0x42B0C0A5))
  %i.hkt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hks, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hku = fmul fast <4 x float> %i.hkt, splat (float f0x3FB8AA3B)
  %i.hkv = fadd fast <4 x float> %i.hku, splat (float 5.000000e-01) ; 2 uses
  %i.hkw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hkv)
  %i.hkx = sitofp fast <4 x i32> %i.hkw to <4 x float> ; 2 uses
  %i.hky = fcmp fast olt <4 x float> %i.hkv, %i.hkx
  %i.hkz = select <4 x i1> %i.hky, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hla = fsub fast <4 x float> %i.hkx, %i.hkz   ; 2 uses
  %i.hlb = fmul fast <4 x float> %i.hla, splat (float f0x3F317218)
  %i.hlc = fsub fast <4 x float> %i.hkt, %i.hlb   ; 8 uses
  %i.hld = fmul fast <4 x float> %i.hlc, %i.hlc
  %i.hle = fmul fast <4 x float> %i.hlc, splat (float f0x39506967)
  %i.hlf = fadd fast <4 x float> %i.hle, splat (float f0x3AB743CE)
  %i.hlg = fmul fast <4 x float> %i.hlf, %i.hlc
  %i.hlh = fadd fast <4 x float> %i.hlg, splat (float f0x3C088908)
  %i.hli = fmul fast <4 x float> %i.hlh, %i.hlc
  %i.hlj = fadd fast <4 x float> %i.hli, splat (float f0x3D2AA9C1)
  %i.hlk = fmul fast <4 x float> %i.hlj, %i.hlc
  %i.hll = fadd fast <4 x float> %i.hlk, splat (float f0x3E2AAAAA)
  %i.hlm = fmul fast <4 x float> %i.hll, %i.hlc
  %i.hln = fadd fast <4 x float> %i.hlm, splat (float 5.000000e-01)
  %i.hlo = fmul fast <4 x float> %i.hld, %i.hln
  %i.hlp = fadd fast <4 x float> %i.hlc, %i.hlo
  %i.hlq = fadd fast <4 x float> %i.hlp, splat (float 1.000000e+00)
  %i.hlr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hla)
  %i.hls = shl <4 x i32> %i.hlr, splat (i32 23)
  %i.hlt = add <4 x i32> %i.hls, splat (i32 1065353216)
  %i.hlu = bitcast <4 x i32> %i.hlt to <4 x float>
  %i.hlv = fmul fast <4 x float> %i.hlq, %i.hlu
  %i.hlw = fadd fast <4 x float> %i.hlv, splat (float 1.000000e+00) ; 2 uses
  %i.hlx = fcmp fast ole <4 x float> %i.hlw, zeroinitializer
  %i.hly = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hlw, <4 x float> splat (float f0x00800000))
  %i.hlz = bitcast <4 x float> %i.hly to <4 x i32> ; 2 uses
  %i.hma = lshr <4 x i32> %i.hlz, splat (i32 23)
  %i.hmb = and <4 x i32> %i.hlz, splat (i32 -2139095041)
  %i.hmc = or disjoint <4 x i32> %i.hmb, splat (i32 1056964608)
  %i.hmd = bitcast <4 x i32> %i.hmc to <4 x float> ; 3 uses
  %i.hme = add nsw <4 x i32> %i.hma, splat (i32 -127)
  %i.hmf = sitofp fast <4 x i32> %i.hme to <4 x float> ; 2 uses
  %i.hmg = fadd fast <4 x float> %i.hmf, splat (float 1.000000e+00)
  %i.hmh = fcmp fast olt <4 x float> %i.hmd, splat (float f0x3F3504F3) ; 2 uses
  %i.hmi = select <4 x i1> %i.hmh, <4 x float> %i.hmd, <4 x float> zeroinitializer
  %i.hmj = fadd fast <4 x float> %i.hmd, splat (float -1.000000e+00)
  %i.hmk = select fast <4 x i1> %i.hmh, <4 x float> %i.hmf, <4 x float> %i.hmg
  %i.hml = fadd fast <4 x float> %i.hmj, %i.hmi   ; 12 uses
  %i.hmm = fmul fast <4 x float> %i.hml, %i.hml
  %i.hmn = fmul fast <4 x float> %i.hml, splat (float f0x3D9021BB)
  %i.hmo = fadd fast <4 x float> %i.hmn, splat (float f0xBDEBD1B8)
  %i.hmp = fmul fast <4 x float> %i.hmo, %i.hml
  %i.hmq = fadd fast <4 x float> %i.hmp, splat (float f0x3DEF251A)
  %i.hmr = fmul fast <4 x float> %i.hmq, %i.hml
  %i.hms = fadd fast <4 x float> %i.hmr, splat (float f0xBDFE5D4F)
  %i.hmt = fmul fast <4 x float> %i.hms, %i.hml
  %i.hmu = fadd fast <4 x float> %i.hmt, splat (float f0x3E11E9BF)
  %i.hmv = fmul fast <4 x float> %i.hmu, %i.hml
  %i.hmw = fadd fast <4 x float> %i.hmv, splat (float f0xBE2AAE50)
  %i.hmx = fmul fast <4 x float> %i.hmw, %i.hml
  %i.hmy = fadd fast <4 x float> %i.hmx, splat (float f0x3E4CCEAC)
  %i.hmz = fmul fast <4 x float> %i.hmy, %i.hml
  %i.hna = fadd fast <4 x float> %i.hmz, splat (float f0xBE7FFFFC)
  %i.hnb = fmul fast <4 x float> %i.hna, %i.hml
  %i.hnc = fadd fast <4 x float> %i.hnb, splat (float f0x3EAAAAAA)
  %i.hnd = fmul fast <4 x float> %i.hnc, %i.hml
  %reass.mul.i60.i = fmul fast <4 x float> %i.hmk, splat (float f0x3F317218)
  %reass.add72.i.i = fadd fast <4 x float> %i.hnd, splat (float -5.000000e-01)
  %reass.mul73.i.i = fmul fast <4 x float> %i.hmm, %reass.add72.i.i
  %i.hne = fadd fast <4 x float> %reass.mul.i60.i, %i.hml
  %i.hnf = fadd fast <4 x float> %reass.mul73.i.i, %i.hne
  %i.hng = select <4 x i1> %i.hlx, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.hnf
  %i.hnh = fadd fast <4 x float> %i.hng, %i.hkp
  store <4 x float> %i.hnh, ptr %.01274.i.i, align 1, !tbaa !60
  %i.hni = getelementptr inbounds nuw i8, ptr %.077.i.i, i64 16
  %i.hnj = getelementptr inbounds nuw i8, ptr %.01175.i.i, i64 4
  %i.hnk = getelementptr inbounds nuw i8, ptr %.01274.i.i, i64 16
  %i.hnl = add nuw nsw i32 %.01076.i.i, 1         ; 2 uses
  %exitcond.not.i61.i = icmp eq i32 %i.hnl, %.sroa.speculated77.i
  br i1 %exitcond.not.i61.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i59.i898, !llvm.loop !297

bb.kt:                                            ; preds = %bb.kr
  %i.hnm = icmp eq i32 %4, 1
  br i1 %i.hnm, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %.val.i894 = load float, ptr %1, align 4, !tbaa !59
  %i.hnn = insertelement <4 x float> poison, float %.val.i894, i64 0
  %i.hno = shufflevector <4 x float> %i.hnn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hnp = icmp sgt i32 %i.gzg, 3
  br i1 %i.hnp, label %.lr.ph.i62.i895, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i62.i895:                                  ; preds = %bb.ku, %.lr.ph.i62.i895
  %.064.i.i = phi ptr [ %i.hqk, %.lr.ph.i62.i895 ], [ %0, %bb.ku ] ; 2 uses
  %.01063.i.i = phi i32 [ %i.hqm, %.lr.ph.i62.i895 ], [ 0, %bb.ku ]
  %.01162.i.i = phi ptr [ %i.hql, %.lr.ph.i62.i895 ], [ %2, %bb.ku ] ; 2 uses
  %i.hnq = load <4 x float>, ptr %.064.i.i, align 1, !tbaa !60 ; 2 uses
  %i.hnr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hnq, <4 x float> nofpclass(nan inf) %i.hno) ; 2 uses
  %i.hns = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hnq, <4 x float> nofpclass(nan inf) %i.hno)
  %i.hnt = fsub fast <4 x float> %i.hns, %i.hnr
  %i.hnu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hnt, <4 x float> splat (float f0x42B0C0A5))
  %i.hnv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hnu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hnw = fmul fast <4 x float> %i.hnv, splat (float f0x3FB8AA3B)
  %i.hnx = fadd fast <4 x float> %i.hnw, splat (float 5.000000e-01) ; 2 uses
  %i.hny = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hnx)
  %i.hnz = sitofp fast <4 x i32> %i.hny to <4 x float> ; 2 uses
  %i.hoa = fcmp fast olt <4 x float> %i.hnx, %i.hnz
  %i.hob = select <4 x i1> %i.hoa, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hoc = fsub fast <4 x float> %i.hnz, %i.hob   ; 2 uses
  %i.hod = fmul fast <4 x float> %i.hoc, splat (float f0x3F317218)
  %i.hoe = fsub fast <4 x float> %i.hnv, %i.hod   ; 8 uses
  %i.hof = fmul fast <4 x float> %i.hoe, %i.hoe
  %i.hog = fmul fast <4 x float> %i.hoe, splat (float f0x39506967)
  %i.hoh = fadd fast <4 x float> %i.hog, splat (float f0x3AB743CE)
  %i.hoi = fmul fast <4 x float> %i.hoh, %i.hoe
  %i.hoj = fadd fast <4 x float> %i.hoi, splat (float f0x3C088908)
  %i.hok = fmul fast <4 x float> %i.hoj, %i.hoe
  %i.hol = fadd fast <4 x float> %i.hok, splat (float f0x3D2AA9C1)
  %i.hom = fmul fast <4 x float> %i.hol, %i.hoe
  %i.hon = fadd fast <4 x float> %i.hom, splat (float f0x3E2AAAAA)
  %i.hoo = fmul fast <4 x float> %i.hon, %i.hoe
  %i.hop = fadd fast <4 x float> %i.hoo, splat (float 5.000000e-01)
  %i.hoq = fmul fast <4 x float> %i.hof, %i.hop
  %i.hor = fadd fast <4 x float> %i.hoe, %i.hoq
  %i.hos = fadd fast <4 x float> %i.hor, splat (float 1.000000e+00)
  %i.hot = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hoc)
  %i.hou = shl <4 x i32> %i.hot, splat (i32 23)
  %i.hov = add <4 x i32> %i.hou, splat (i32 1065353216)
  %i.how = bitcast <4 x i32> %i.hov to <4 x float>
  %i.hox = fmul fast <4 x float> %i.hos, %i.how
  %i.hoy = fadd fast <4 x float> %i.hox, splat (float 1.000000e+00) ; 2 uses
  %i.hoz = fcmp fast ole <4 x float> %i.hoy, zeroinitializer
  %i.hpa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hoy, <4 x float> splat (float f0x00800000))
  %i.hpb = bitcast <4 x float> %i.hpa to <4 x i32> ; 2 uses
  %i.hpc = lshr <4 x i32> %i.hpb, splat (i32 23)
  %i.hpd = and <4 x i32> %i.hpb, splat (i32 -2139095041)
  %i.hpe = or disjoint <4 x i32> %i.hpd, splat (i32 1056964608)
  %i.hpf = bitcast <4 x i32> %i.hpe to <4 x float> ; 3 uses
  %i.hpg = add nsw <4 x i32> %i.hpc, splat (i32 -127)
  %i.hph = sitofp fast <4 x i32> %i.hpg to <4 x float> ; 2 uses
  %i.hpi = fadd fast <4 x float> %i.hph, splat (float 1.000000e+00)
  %i.hpj = fcmp fast olt <4 x float> %i.hpf, splat (float f0x3F3504F3) ; 2 uses
  %i.hpk = select <4 x i1> %i.hpj, <4 x float> %i.hpf, <4 x float> zeroinitializer
  %i.hpl = fadd fast <4 x float> %i.hpf, splat (float -1.000000e+00)
  %i.hpm = select fast <4 x i1> %i.hpj, <4 x float> %i.hph, <4 x float> %i.hpi
  %i.hpn = fadd fast <4 x float> %i.hpl, %i.hpk   ; 12 uses
  %i.hpo = fmul fast <4 x float> %i.hpn, %i.hpn
  %i.hpp = fmul fast <4 x float> %i.hpn, splat (float f0x3D9021BB)
  %i.hpq = fadd fast <4 x float> %i.hpp, splat (float f0xBDEBD1B8)
  %i.hpr = fmul fast <4 x float> %i.hpq, %i.hpn
  %i.hps = fadd fast <4 x float> %i.hpr, splat (float f0x3DEF251A)
  %i.hpt = fmul fast <4 x float> %i.hps, %i.hpn
  %i.hpu = fadd fast <4 x float> %i.hpt, splat (float f0xBDFE5D4F)
  %i.hpv = fmul fast <4 x float> %i.hpu, %i.hpn
  %i.hpw = fadd fast <4 x float> %i.hpv, splat (float f0x3E11E9BF)
  %i.hpx = fmul fast <4 x float> %i.hpw, %i.hpn
  %i.hpy = fadd fast <4 x float> %i.hpx, splat (float f0xBE2AAE50)
  %i.hpz = fmul fast <4 x float> %i.hpy, %i.hpn
  %i.hqa = fadd fast <4 x float> %i.hpz, splat (float f0x3E4CCEAC)
  %i.hqb = fmul fast <4 x float> %i.hqa, %i.hpn
  %i.hqc = fadd fast <4 x float> %i.hqb, splat (float f0xBE7FFFFC)
  %i.hqd = fmul fast <4 x float> %i.hqc, %i.hpn
  %i.hqe = fadd fast <4 x float> %i.hqd, splat (float f0x3EAAAAAA)
  %i.hqf = fmul fast <4 x float> %i.hqe, %i.hpn
  %reass.mul.i63.i896 = fmul fast <4 x float> %i.hpm, splat (float f0x3F317218)
  %reass.add60.i.i = fadd fast <4 x float> %i.hqf, splat (float -5.000000e-01)
  %reass.mul61.i.i = fmul fast <4 x float> %i.hpo, %reass.add60.i.i
  %i.hqg = fadd fast <4 x float> %reass.mul.i63.i896, %i.hpn
  %i.hqh = fadd fast <4 x float> %reass.mul61.i.i, %i.hqg
  %i.hqi = select <4 x i1> %i.hoz, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.hqh
  %i.hqj = fadd fast <4 x float> %i.hqi, %i.hnr
  store <4 x float> %i.hqj, ptr %.01162.i.i, align 1, !tbaa !60
  %i.hqk = getelementptr inbounds nuw i8, ptr %.064.i.i, i64 16
  %i.hql = getelementptr inbounds nuw i8, ptr %.01162.i.i, i64 16
  %i.hqm = add nuw nsw i32 %.01063.i.i, 4         ; 2 uses
  %i.hqn = or disjoint i32 %i.hqm, 3
  %i.hqo = icmp slt i32 %i.hqn, %i.gzg
  br i1 %i.hqo, label %.lr.ph.i62.i895, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, !llvm.loop !298

bb.kv:                                            ; preds = %bb.kt
  %i.hqp = icmp eq i32 %3, 1
  %i.hqq = icmp eq i32 %.sroa.speculated.i891, 4
  %or.cond.i892 = and i1 %i.hqp, %i.hqq
  br i1 %or.cond.i892, label %bb.kw, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.kw:                                            ; preds = %bb.kv
  %i.hqr = load <4 x float>, ptr %0, align 1, !tbaa !60 ; 2 uses
  br label %.lr.ph.i64.i

.lr.ph.i64.i:                                     ; preds = %.lr.ph.i64.i, %bb.kw
  %.074.i.i893 = phi ptr [ %i.hto, %.lr.ph.i64.i ], [ %1, %bb.kw ] ; 2 uses
  %.0973.i.i = phi i32 [ %i.htq, %.lr.ph.i64.i ], [ 0, %bb.kw ]
  %.01072.i.i = phi ptr [ %i.htp, %.lr.ph.i64.i ], [ %2, %bb.kw ] ; 2 uses
  %i.hqs = load float, ptr %.074.i.i893, align 4, !tbaa !59
  %i.hqt = insertelement <4 x float> poison, float %i.hqs, i64 0
  %i.hqu = shufflevector <4 x float> %i.hqt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hqv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hqr, <4 x float> nofpclass(nan inf) %i.hqu) ; 2 uses
  %i.hqw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hqr, <4 x float> nofpclass(nan inf) %i.hqu)
  %i.hqx = fsub fast <4 x float> %i.hqw, %i.hqv
  %i.hqy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hqx, <4 x float> splat (float f0x42B0C0A5))
  %i.hqz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hqy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hra = fmul fast <4 x float> %i.hqz, splat (float f0x3FB8AA3B)
  %i.hrb = fadd fast <4 x float> %i.hra, splat (float 5.000000e-01) ; 2 uses
  %i.hrc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hrb)
  %i.hrd = sitofp fast <4 x i32> %i.hrc to <4 x float> ; 2 uses
  %i.hre = fcmp fast olt <4 x float> %i.hrb, %i.hrd
  %i.hrf = select <4 x i1> %i.hre, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hrg = fsub fast <4 x float> %i.hrd, %i.hrf   ; 2 uses
  %i.hrh = fmul fast <4 x float> %i.hrg, splat (float f0x3F317218)
  %i.hri = fsub fast <4 x float> %i.hqz, %i.hrh   ; 8 uses
  %i.hrj = fmul fast <4 x float> %i.hri, %i.hri
  %i.hrk = fmul fast <4 x float> %i.hri, splat (float f0x39506967)
  %i.hrl = fadd fast <4 x float> %i.hrk, splat (float f0x3AB743CE)
  %i.hrm = fmul fast <4 x float> %i.hrl, %i.hri
  %i.hrn = fadd fast <4 x float> %i.hrm, splat (float f0x3C088908)
  %i.hro = fmul fast <4 x float> %i.hrn, %i.hri
  %i.hrp = fadd fast <4 x float> %i.hro, splat (float f0x3D2AA9C1)
  %i.hrq = fmul fast <4 x float> %i.hrp, %i.hri
  %i.hrr = fadd fast <4 x float> %i.hrq, splat (float f0x3E2AAAAA)
  %i.hrs = fmul fast <4 x float> %i.hrr, %i.hri
  %i.hrt = fadd fast <4 x float> %i.hrs, splat (float 5.000000e-01)
  %i.hru = fmul fast <4 x float> %i.hrj, %i.hrt
  %i.hrv = fadd fast <4 x float> %i.hri, %i.hru
  %i.hrw = fadd fast <4 x float> %i.hrv, splat (float 1.000000e+00)
  %i.hrx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hrg)
  %i.hry = shl <4 x i32> %i.hrx, splat (i32 23)
  %i.hrz = add <4 x i32> %i.hry, splat (i32 1065353216)
  %i.hsa = bitcast <4 x i32> %i.hrz to <4 x float>
  %i.hsb = fmul fast <4 x float> %i.hrw, %i.hsa
  %i.hsc = fadd fast <4 x float> %i.hsb, splat (float 1.000000e+00) ; 2 uses
  %i.hsd = fcmp fast ole <4 x float> %i.hsc, zeroinitializer
  %i.hse = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hsc, <4 x float> splat (float f0x00800000))
  %i.hsf = bitcast <4 x float> %i.hse to <4 x i32> ; 2 uses
  %i.hsg = lshr <4 x i32> %i.hsf, splat (i32 23)
  %i.hsh = and <4 x i32> %i.hsf, splat (i32 -2139095041)
  %i.hsi = or disjoint <4 x i32> %i.hsh, splat (i32 1056964608)
  %i.hsj = bitcast <4 x i32> %i.hsi to <4 x float> ; 3 uses
  %i.hsk = add nsw <4 x i32> %i.hsg, splat (i32 -127)
  %i.hsl = sitofp fast <4 x i32> %i.hsk to <4 x float> ; 2 uses
  %i.hsm = fadd fast <4 x float> %i.hsl, splat (float 1.000000e+00)
  %i.hsn = fcmp fast olt <4 x float> %i.hsj, splat (float f0x3F3504F3) ; 2 uses
  %i.hso = select <4 x i1> %i.hsn, <4 x float> %i.hsj, <4 x float> zeroinitializer
  %i.hsp = fadd fast <4 x float> %i.hsj, splat (float -1.000000e+00)
  %i.hsq = select fast <4 x i1> %i.hsn, <4 x float> %i.hsl, <4 x float> %i.hsm
  %i.hsr = fadd fast <4 x float> %i.hsp, %i.hso   ; 12 uses
  %i.hss = fmul fast <4 x float> %i.hsr, %i.hsr
  %i.hst = fmul fast <4 x float> %i.hsr, splat (float f0x3D9021BB)
  %i.hsu = fadd fast <4 x float> %i.hst, splat (float f0xBDEBD1B8)
  %i.hsv = fmul fast <4 x float> %i.hsu, %i.hsr
  %i.hsw = fadd fast <4 x float> %i.hsv, splat (float f0x3DEF251A)
  %i.hsx = fmul fast <4 x float> %i.hsw, %i.hsr
  %i.hsy = fadd fast <4 x float> %i.hsx, splat (float f0xBDFE5D4F)
  %i.hsz = fmul fast <4 x float> %i.hsy, %i.hsr
  %i.hta = fadd fast <4 x float> %i.hsz, splat (float f0x3E11E9BF)
  %i.htb = fmul fast <4 x float> %i.hta, %i.hsr
  %i.htc = fadd fast <4 x float> %i.htb, splat (float f0xBE2AAE50)
  %i.htd = fmul fast <4 x float> %i.htc, %i.hsr
  %i.hte = fadd fast <4 x float> %i.htd, splat (float f0x3E4CCEAC)
  %i.htf = fmul fast <4 x float> %i.hte, %i.hsr
  %i.htg = fadd fast <4 x float> %i.htf, splat (float f0xBE7FFFFC)
  %i.hth = fmul fast <4 x float> %i.htg, %i.hsr
  %i.hti = fadd fast <4 x float> %i.hth, splat (float f0x3EAAAAAA)
  %i.htj = fmul fast <4 x float> %i.hti, %i.hsr
  %reass.mul.i65.i = fmul fast <4 x float> %i.hsq, splat (float f0x3F317218)
  %reass.add70.i.i = fadd fast <4 x float> %i.htj, splat (float -5.000000e-01)
  %reass.mul71.i.i = fmul fast <4 x float> %i.hss, %reass.add70.i.i
  %i.htk = fadd fast <4 x float> %reass.mul.i65.i, %i.hsr
  %i.htl = fadd fast <4 x float> %reass.mul71.i.i, %i.htk
  %i.htm = select <4 x i1> %i.hsd, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.htl
  %i.htn = fadd fast <4 x float> %i.htm, %i.hqv
  store <4 x float> %i.htn, ptr %.01072.i.i, align 1, !tbaa !60
  %i.hto = getelementptr inbounds nuw i8, ptr %.074.i.i893, i64 4
  %i.htp = getelementptr inbounds nuw i8, ptr %.01072.i.i, i64 16
  %i.htq = add nuw nsw i32 %.0973.i.i, 1          ; 2 uses
  %exitcond.not.i66.i = icmp eq i32 %i.htq, %.sroa.speculated77.i
  br i1 %exitcond.not.i66.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i64.i, !llvm.loop !299

bb.kx:                                            ; preds = %bb.a
  %.sroa.speculated73.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i921 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.htr = mul i32 %.sroa.speculated.i921, %.sroa.speculated73.i ; 26 uses
  %i.hts = icmp eq i32 %5, %6
  br i1 %i.hts, label %bb.ky, label %bb.lk

bb.ky:                                            ; preds = %bb.kx
  %i.htt = icmp eq i32 %3, %4
  br i1 %i.htt, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.htu = icmp sgt i32 %i.htr, 3
  br i1 %i.htu, label %.lr.ph.i.i950, label %.preheader.i.i944

.preheader.loopexit.i.i951:                       ; preds = %.lr.ph.i.i950
  %i.htv = and i32 %i.htr, 2147483644
  br label %.preheader.i.i944

.preheader.i.i944:                                ; preds = %.preheader.loopexit.i.i951, %bb.kz
  %.022.lcssa.i.i945 = phi ptr [ %2, %bb.kz ], [ %i.hvp, %.preheader.loopexit.i.i951 ] ; 5 uses
  %.020.lcssa.i.i946 = phi ptr [ %1, %bb.kz ], [ %i.hvo, %.preheader.loopexit.i.i951 ] ; 5 uses
  %.018.lcssa.i.i947 = phi i32 [ 0, %bb.kz ], [ %i.htv, %.preheader.loopexit.i.i951 ] ; 5 uses
  %.0.lcssa.i.i948 = phi ptr [ %0, %bb.kz ], [ %i.hvn, %.preheader.loopexit.i.i951 ] ; 5 uses
  %.022.lcssa.i.i9452403 = ptrtoaddr ptr %.022.lcssa.i.i945 to i64 ; 2 uses
  %.0.lcssa.i.i9482404 = ptrtoaddr ptr %.0.lcssa.i.i948 to i64
  %.020.lcssa.i.i9462406 = ptrtoaddr ptr %.020.lcssa.i.i946 to i64
  %i.htw = icmp slt i32 %.018.lcssa.i.i947, %i.htr
  br i1 %i.htw, label %.lr.ph40.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph40.i.i.preheader:                           ; preds = %.preheader.i.i944
  %i.htx = xor i32 %.018.lcssa.i.i947, -1
  %i.hty = add i32 %i.htr, %i.htx                 ; 2 uses
  %i.htz = zext i32 %i.hty to i64
  %i.hua = add nuw nsw i64 %i.htz, 1              ; 2 uses
  %min.iters.check2410 = icmp ult i32 %i.hty, 3
  br i1 %min.iters.check2410, label %.lr.ph40.i.i.preheader3639, label %vector.memcheck2402

vector.memcheck2402:                              ; preds = %.lr.ph40.i.i.preheader
  %i.hub = sub i64 %.0.lcssa.i.i9482404, %.022.lcssa.i.i9452403
  %diff.check2405 = icmp ugt i64 %i.hub, -16
  %i.huc = sub i64 %.020.lcssa.i.i9462406, %.022.lcssa.i.i9452403
  %diff.check2407 = icmp ugt i64 %i.huc, -16
  %conflict.rdx2408 = or i1 %diff.check2405, %diff.check2407
  br i1 %conflict.rdx2408, label %.lr.ph40.i.i.preheader3639, label %vector.ph2411

vector.ph2411:                                    ; preds = %vector.memcheck2402
  %n.vec2412 = and i64 %i.hua, 8589934588         ; 4 uses
  %i.hud = shl nuw nsw i64 %n.vec2412, 2          ; 3 uses
  %i.hue = getelementptr i8, ptr %.0.lcssa.i.i948, i64 %i.hud
  %i.huf = trunc i64 %n.vec2412 to i32
  %i.hug = add i32 %.018.lcssa.i.i947, %i.huf
  %i.huh = getelementptr i8, ptr %.020.lcssa.i.i946, i64 %i.hud
  %i.hui = getelementptr i8, ptr %.022.lcssa.i.i945, i64 %i.hud
  br label %vector.body2413

vector.body2413:                                  ; preds = %vector.body2413, %vector.ph2411
  %index2414 = phi i64 [ 0, %vector.ph2411 ], [ %index.next2420, %vector.body2413 ] ; 2 uses
  %i.huj = shl i64 %index2414, 2                  ; 3 uses
  %next.gep2415 = getelementptr i8, ptr %.0.lcssa.i.i948, i64 %i.huj
  %next.gep2416 = getelementptr i8, ptr %.020.lcssa.i.i946, i64 %i.huj
  %next.gep2417 = getelementptr i8, ptr %.022.lcssa.i.i945, i64 %i.huj
  %wide.load2418 = load <4 x float>, ptr %next.gep2415, align 4, !tbaa !59
  %wide.load2419 = load <4 x float>, ptr %next.gep2416, align 4, !tbaa !59
  %i.huk = fdiv fast <4 x float> %wide.load2418, %wide.load2419
  %i.hul = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.huk)
  store <4 x float> %i.hul, ptr %next.gep2417, align 4, !tbaa !59
  %index.next2420 = add nuw i64 %index2414, 4     ; 2 uses
  %i.hum = icmp eq i64 %index.next2420, %n.vec2412
  br i1 %i.hum, label %middle.block2421, label %vector.body2413, !llvm.loop !300

middle.block2421:                                 ; preds = %vector.body2413
  %cmp.n2422 = icmp eq i64 %i.hua, %n.vec2412
  br i1 %cmp.n2422, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph40.i.i.preheader3639

.lr.ph40.i.i.preheader3639:                       ; preds = %vector.memcheck2402, %.lr.ph40.i.i.preheader, %middle.block2421
  %.139.i.i.ph = phi ptr [ %.0.lcssa.i.i948, %vector.memcheck2402 ], [ %.0.lcssa.i.i948, %.lr.ph40.i.i.preheader ], [ %i.hue, %middle.block2421 ] ; 2 uses
  %.11938.i.i.ph = phi i32 [ %.018.lcssa.i.i947, %vector.memcheck2402 ], [ %.018.lcssa.i.i947, %.lr.ph40.i.i.preheader ], [ %i.hug, %middle.block2421 ] ; 4 uses
  %.12137.i.i.ph = phi ptr [ %.020.lcssa.i.i946, %vector.memcheck2402 ], [ %.020.lcssa.i.i946, %.lr.ph40.i.i.preheader ], [ %i.huh, %middle.block2421 ] ; 2 uses
  %.12336.i.i.ph = phi ptr [ %.022.lcssa.i.i945, %vector.memcheck2402 ], [ %.022.lcssa.i.i945, %.lr.ph40.i.i.preheader ], [ %i.hui, %middle.block2421 ] ; 2 uses
  %i.hun = sub i32 %i.htr, %.11938.i.i.ph
  %xtraiter3709 = and i32 %i.hun, 3               ; 2 uses
  %lcmp.mod3710.not = icmp eq i32 %xtraiter3709, 0
  br i1 %lcmp.mod3710.not, label %.lr.ph40.i.i.prol.loopexit, label %.lr.ph40.i.i.prol

.lr.ph40.i.i.prol:                                ; preds = %.lr.ph40.i.i.preheader3639, %.lr.ph40.i.i.prol
  %.139.i.i.prol = phi ptr [ %i.hus, %.lr.ph40.i.i.prol ], [ %.139.i.i.ph, %.lr.ph40.i.i.preheader3639 ] ; 2 uses
  %.11938.i.i.prol = phi i32 [ %i.huv, %.lr.ph40.i.i.prol ], [ %.11938.i.i.ph, %.lr.ph40.i.i.preheader3639 ]
  %.12137.i.i.prol = phi ptr [ %i.hut, %.lr.ph40.i.i.prol ], [ %.12137.i.i.ph, %.lr.ph40.i.i.preheader3639 ] ; 2 uses
  %.12336.i.i.prol = phi ptr [ %i.huu, %.lr.ph40.i.i.prol ], [ %.12336.i.i.ph, %.lr.ph40.i.i.preheader3639 ] ; 2 uses
  %prol.iter3711 = phi i32 [ %prol.iter3711.next, %.lr.ph40.i.i.prol ], [ 0, %.lr.ph40.i.i.preheader3639 ]
  %i.huo = load float, ptr %.139.i.i.prol, align 4, !tbaa !59
  %i.hup = load float, ptr %.12137.i.i.prol, align 4, !tbaa !59
  %i.huq = fdiv fast float %i.huo, %i.hup
  %i.hur = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.huq)
  store float %i.hur, ptr %.12336.i.i.prol, align 4, !tbaa !59
  %i.hus = getelementptr inbounds nuw i8, ptr %.139.i.i.prol, i64 4 ; 2 uses
  %i.hut = getelementptr inbounds nuw i8, ptr %.12137.i.i.prol, i64 4 ; 2 uses
  %i.huu = getelementptr inbounds nuw i8, ptr %.12336.i.i.prol, i64 4 ; 2 uses
  %i.huv = add nuw nsw i32 %.11938.i.i.prol, 1    ; 2 uses
  %prol.iter3711.next = add i32 %prol.iter3711, 1 ; 2 uses
  %prol.iter3711.cmp.not = icmp eq i32 %prol.iter3711.next, %xtraiter3709
  br i1 %prol.iter3711.cmp.not, label %.lr.ph40.i.i.prol.loopexit, label %.lr.ph40.i.i.prol, !llvm.loop !301

.lr.ph40.i.i.prol.loopexit:                       ; preds = %.lr.ph40.i.i.prol, %.lr.ph40.i.i.preheader3639
  %.139.i.i.unr = phi ptr [ %.139.i.i.ph, %.lr.ph40.i.i.preheader3639 ], [ %i.hus, %.lr.ph40.i.i.prol ]
  %.11938.i.i.unr = phi i32 [ %.11938.i.i.ph, %.lr.ph40.i.i.preheader3639 ], [ %i.huv, %.lr.ph40.i.i.prol ]
  %.12137.i.i.unr = phi ptr [ %.12137.i.i.ph, %.lr.ph40.i.i.preheader3639 ], [ %i.hut, %.lr.ph40.i.i.prol ]
  %.12336.i.i.unr = phi ptr [ %.12336.i.i.ph, %.lr.ph40.i.i.preheader3639 ], [ %i.huu, %.lr.ph40.i.i.prol ]
  %i.huw = sub i32 %.11938.i.i.ph, %i.htr
  %i.hux = icmp ugt i32 %i.huw, -4
  br i1 %i.hux, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph40.i.i

.lr.ph.i.i950:                                    ; preds = %bb.kz, %.lr.ph.i.i950
  %.032.i.i = phi ptr [ %i.hvn, %.lr.ph.i.i950 ], [ %0, %bb.kz ] ; 2 uses
  %.01831.i.i = phi i32 [ %i.hvq, %.lr.ph.i.i950 ], [ 0, %bb.kz ]
  %.02030.i.i = phi ptr [ %i.hvo, %.lr.ph.i.i950 ], [ %1, %bb.kz ] ; 2 uses
  %.02229.i.i = phi ptr [ %i.hvp, %.lr.ph.i.i950 ], [ %2, %bb.kz ] ; 2 uses
  %i.huy = load <4 x float>, ptr %.032.i.i, align 1, !tbaa !60
  %i.huz = load <4 x float>, ptr %.02030.i.i, align 1, !tbaa !60
  %i.hva = fdiv fast <4 x float> %i.huy, %i.huz   ; 4 uses
  %i.hvb = bitcast <4 x float> %i.hva to <4 x i32>
  %i.hvc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hva) ; 2 uses
  %i.hvd = and <4 x i32> %i.hvb, splat (i32 -2147483648)
  %i.hve = fcmp fast ule <4 x float> %i.hvc, splat (float f0x4B000000)
  %i.hvf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hvc)
  %i.hvg = sitofp fast <4 x i32> %i.hvf to <4 x float>
  %i.hvh = bitcast <4 x float> %i.hvg to <4 x i32>
  %i.hvi = or <4 x i32> %i.hvd, %i.hvh
  %i.hvj = bitcast <4 x i32> %i.hvi to <4 x float> ; 2 uses
  %i.hvk = fcmp fast olt <4 x float> %i.hva, %i.hvj
  %i.hvl = select <4 x i1> %i.hvk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hvm = fsub fast <4 x float> %i.hvj, %i.hvl
  %.v.i.i = select <4 x i1> %i.hve, <4 x float> %i.hvm, <4 x float> %i.hva
  store <4 x float> %.v.i.i, ptr %.02229.i.i, align 1, !tbaa !60
  %i.hvn = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 16 ; 2 uses
  %i.hvo = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 16 ; 2 uses
  %i.hvp = getelementptr inbounds nuw i8, ptr %.02229.i.i, i64 16 ; 2 uses
  %i.hvq = add nuw nsw i32 %.01831.i.i, 4         ; 2 uses
  %i.hvr = or disjoint i32 %i.hvq, 3
  %i.hvs = icmp slt i32 %i.hvr, %i.htr
  br i1 %i.hvs, label %.lr.ph.i.i950, label %.preheader.loopexit.i.i951, !llvm.loop !302

.lr.ph40.i.i:                                     ; preds = %.lr.ph40.i.i.prol.loopexit, %.lr.ph40.i.i
  %.139.i.i = phi ptr [ %i.hws, %.lr.ph40.i.i ], [ %.139.i.i.unr, %.lr.ph40.i.i.prol.loopexit ] ; 5 uses
  %.11938.i.i = phi i32 [ %i.hwv, %.lr.ph40.i.i ], [ %.11938.i.i.unr, %.lr.ph40.i.i.prol.loopexit ]
  %.12137.i.i = phi ptr [ %i.hwt, %.lr.ph40.i.i ], [ %.12137.i.i.unr, %.lr.ph40.i.i.prol.loopexit ] ; 5 uses
  %.12336.i.i = phi ptr [ %i.hwu, %.lr.ph40.i.i ], [ %.12336.i.i.unr, %.lr.ph40.i.i.prol.loopexit ] ; 5 uses
  %i.hvt = load float, ptr %.139.i.i, align 4, !tbaa !59
  %i.hvu = load float, ptr %.12137.i.i, align 4, !tbaa !59
  %i.hvv = fdiv fast float %i.hvt, %i.hvu
  %i.hvw = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.hvv)
  store float %i.hvw, ptr %.12336.i.i, align 4, !tbaa !59
  %i.hvx = getelementptr inbounds nuw i8, ptr %.139.i.i, i64 4
  %i.hvy = getelementptr inbounds nuw i8, ptr %.12137.i.i, i64 4
  %i.hvz = getelementptr inbounds nuw i8, ptr %.12336.i.i, i64 4
  %i.hwa = load float, ptr %i.hvx, align 4, !tbaa !59
  %i.hwb = load float, ptr %i.hvy, align 4, !tbaa !59
  %i.hwc = fdiv fast float %i.hwa, %i.hwb
  %i.hwd = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.hwc)
  store float %i.hwd, ptr %i.hvz, align 4, !tbaa !59
  %i.hwe = getelementptr inbounds nuw i8, ptr %.139.i.i, i64 8
  %i.hwf = getelementptr inbounds nuw i8, ptr %.12137.i.i, i64 8
  %i.hwg = getelementptr inbounds nuw i8, ptr %.12336.i.i, i64 8
  %i.hwh = load float, ptr %i.hwe, align 4, !tbaa !59
  %i.hwi = load float, ptr %i.hwf, align 4, !tbaa !59
  %i.hwj = fdiv fast float %i.hwh, %i.hwi
  %i.hwk = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.hwj)
  store float %i.hwk, ptr %i.hwg, align 4, !tbaa !59
  %i.hwl = getelementptr inbounds nuw i8, ptr %.139.i.i, i64 12
  %i.hwm = getelementptr inbounds nuw i8, ptr %.12137.i.i, i64 12
  %i.hwn = getelementptr inbounds nuw i8, ptr %.12336.i.i, i64 12
  %i.hwo = load float, ptr %i.hwl, align 4, !tbaa !59
  %i.hwp = load float, ptr %i.hwm, align 4, !tbaa !59
  %i.hwq = fdiv fast float %i.hwo, %i.hwp
  %i.hwr = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.hwq)
  store float %i.hwr, ptr %i.hwn, align 4, !tbaa !59
  %i.hws = getelementptr inbounds nuw i8, ptr %.139.i.i, i64 16
  %i.hwt = getelementptr inbounds nuw i8, ptr %.12137.i.i, i64 16
  %i.hwu = getelementptr inbounds nuw i8, ptr %.12336.i.i, i64 16
  %i.hwv = add nuw nsw i32 %.11938.i.i, 4         ; 2 uses
  %exitcond.not.i.i949.3 = icmp eq i32 %i.hwv, %i.htr
  br i1 %exitcond.not.i.i949.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph40.i.i, !llvm.loop !303

bb.la:                                            ; preds = %bb.ky
  %i.hww = icmp eq i32 %4, 1
  br i1 %i.hww, label %bb.lb, label %bb.lf

bb.lb:                                            ; preds = %bb.la
  %i.hwx = load float, ptr %1, align 4, !tbaa !59 ; 7 uses
  %i.hwy = icmp eq i32 %.sroa.speculated.i921, 4
end_hunk_2
begin_hunk_3_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
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
  %.016.lcssa.i.i4973367 = ptrtoaddr ptr %.016.lcssa.i.i497 to i64 ; 2 uses
  %.014.lcssa.i.i4983368 = ptrtoaddr ptr %.014.lcssa.i.i498 to i64
  %.018.lcssa.i.i4963370 = ptrtoaddr ptr %.018.lcssa.i.i496 to i64
  %i.cmg = icmp slt i32 %.0.lcssa.i.i499, %i.cmb
  br i1 %i.cmg, label %.lr.ph94.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph94.i.i.preheader:                           ; preds = %.preheader.i.i495
  %i.cmh = xor i32 %.0.lcssa.i.i499, -1
  %i.cmi = add i32 %i.cmb, %i.cmh                 ; 2 uses
  %i.cmj = zext i32 %i.cmi to i64
  %i.cmk = add nuw nsw i64 %i.cmj, 1              ; 2 uses
  %min.iters.check3374 = icmp ult i32 %i.cmi, 7
  br i1 %min.iters.check3374, label %.lr.ph94.i.i.preheader4105, label %vector.memcheck3366

vector.memcheck3366:                              ; preds = %.lr.ph94.i.i.preheader
  %i.cml = sub i64 %.014.lcssa.i.i4983368, %.016.lcssa.i.i4973367
  %diff.check3369 = icmp ugt i64 %i.cml, -16
  %i.cmm = sub i64 %.018.lcssa.i.i4963370, %.016.lcssa.i.i4973367
  %diff.check3371 = icmp ugt i64 %i.cmm, -16
  %conflict.rdx3372 = or i1 %diff.check3369, %diff.check3371
  br i1 %conflict.rdx3372, label %.lr.ph94.i.i.preheader4105, label %vector.ph3375

vector.ph3375:                                    ; preds = %vector.memcheck3366
  %n.vec3376 = and i64 %i.cmk, 8589934584         ; 4 uses
  %i.cmn = trunc i64 %n.vec3376 to i32
  %i.cmo = add i32 %.0.lcssa.i.i499, %i.cmn
  %i.cmp = shl nuw nsw i64 %n.vec3376, 1          ; 3 uses
  %i.cmq = getelementptr i8, ptr %.014.lcssa.i.i498, i64 %i.cmp
  %i.cmr = getelementptr i8, ptr %.016.lcssa.i.i497, i64 %i.cmp
  %i.cms = getelementptr i8, ptr %.018.lcssa.i.i496, i64 %i.cmp
  br label %vector.body3377

vector.body3377:                                  ; preds = %vector.body3377, %vector.ph3375
  %index3378 = phi i64 [ 0, %vector.ph3375 ], [ %index.next3384, %vector.body3377 ] ; 2 uses
  %i.cmt = shl i64 %index3378, 1                  ; 3 uses
  %next.gep3379 = getelementptr i8, ptr %.014.lcssa.i.i498, i64 %i.cmt
  %next.gep3380 = getelementptr i8, ptr %.016.lcssa.i.i497, i64 %i.cmt
  %next.gep3381 = getelementptr i8, ptr %.018.lcssa.i.i496, i64 %i.cmt
  %wide.load3382 = load <8 x i16>, ptr %next.gep3379, align 2, !tbaa !57
  %i.cmu = zext <8 x i16> %wide.load3382 to <8 x i32>
  %i.cmv = shl nuw <8 x i32> %i.cmu, splat (i32 16)
  %i.cmw = bitcast <8 x i32> %i.cmv to <8 x float>
  %wide.load3383 = load <8 x i16>, ptr %next.gep3381, align 2, !tbaa !57
  %i.cmx = zext <8 x i16> %wide.load3383 to <8 x i32>
  %i.cmy = shl nuw <8 x i32> %i.cmx, splat (i32 16)
  %i.cmz = bitcast <8 x i32> %i.cmy to <8 x float>
  %i.cna = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.cmw, <8 x float> %i.cmz)
  %i.cnb = bitcast <8 x float> %i.cna to <8 x i32>
  %i.cnc = lshr <8 x i32> %i.cnb, splat (i32 16)
  %i.cnd = trunc nuw <8 x i32> %i.cnc to <8 x i16>
  store <8 x i16> %i.cnd, ptr %next.gep3380, align 2, !tbaa !57
  %index.next3384 = add nuw i64 %index3378, 8     ; 2 uses
  %i.cne = icmp eq i64 %index.next3384, %n.vec3376
  br i1 %i.cne, label %middle.block3385, label %vector.body3377, !llvm.loop !505

middle.block3385:                                 ; preds = %vector.body3377
  %cmp.n3386 = icmp eq i64 %i.cmk, %n.vec3376
  br i1 %cmp.n3386, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i.preheader4105

.lr.ph94.i.i.preheader4105:                       ; preds = %vector.memcheck3366, %.lr.ph94.i.i.preheader, %middle.block3385
  %.193.i.i.ph = phi i32 [ %.0.lcssa.i.i499, %vector.memcheck3366 ], [ %.0.lcssa.i.i499, %.lr.ph94.i.i.preheader ], [ %i.cmo, %middle.block3385 ] ; 4 uses
  %.11592.i.i.ph = phi ptr [ %.014.lcssa.i.i498, %vector.memcheck3366 ], [ %.014.lcssa.i.i498, %.lr.ph94.i.i.preheader ], [ %i.cmq, %middle.block3385 ] ; 3 uses
  %.11791.i.i.ph = phi ptr [ %.016.lcssa.i.i497, %vector.memcheck3366 ], [ %.016.lcssa.i.i497, %.lr.ph94.i.i.preheader ], [ %i.cmr, %middle.block3385 ] ; 3 uses
  %.11990.i.i.ph = phi ptr [ %.018.lcssa.i.i496, %vector.memcheck3366 ], [ %.018.lcssa.i.i496, %.lr.ph94.i.i.preheader ], [ %i.cms, %middle.block3385 ] ; 3 uses
  %i.cnf = sub i32 %i.cmb, %.193.i.i.ph
  %.neg4494 = add i32 %.193.i.i.ph, 1
  %xtraiter4412 = and i32 %i.cnf, 1
  %lcmp.mod4413.not = icmp eq i32 %xtraiter4412, 0
  br i1 %lcmp.mod4413.not, label %.lr.ph94.i.i.prol.loopexit, label %.lr.ph94.i.i.prol

.lr.ph94.i.i.prol:                                ; preds = %.lr.ph94.i.i.preheader4105
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

.lr.ph94.i.i.prol.loopexit:                       ; preds = %.lr.ph94.i.i.prol, %.lr.ph94.i.i.preheader4105
  %.193.i.i.unr = phi i32 [ %.193.i.i.ph, %.lr.ph94.i.i.preheader4105 ], [ %i.cnv, %.lr.ph94.i.i.prol ]
  %.11592.i.i.unr = phi ptr [ %.11592.i.i.ph, %.lr.ph94.i.i.preheader4105 ], [ %i.cng, %.lr.ph94.i.i.prol ]
  %.11791.i.i.unr = phi ptr [ %.11791.i.i.ph, %.lr.ph94.i.i.preheader4105 ], [ %i.cnu, %.lr.ph94.i.i.prol ]
  %.11990.i.i.unr = phi ptr [ %.11990.i.i.ph, %.lr.ph94.i.i.preheader4105 ], [ %i.cnl, %.lr.ph94.i.i.prol ]
  %i.cnw = icmp eq i32 %i.cmb, %.neg4494
  br i1 %i.cnw, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i

.lr.ph.i.i501:                                    ; preds = %bb.dt, %.lr.ph.i.i501
  %.086.i.i = phi i32 [ %i.crd, %.lr.ph.i.i501 ], [ 0, %bb.dt ]
  %.01485.i.i = phi ptr [ %i.cra, %.lr.ph.i.i501 ], [ %0, %bb.dt ] ; 2 uses
  %.01684.i.i = phi ptr [ %i.crc, %.lr.ph.i.i501 ], [ %2, %bb.dt ] ; 2 uses
  %.01883.i.i = phi ptr [ %i.crb, %.lr.ph.i.i501 ], [ %1, %bb.dt ] ; 2 uses
  %i.cnx = load i64, ptr %.01485.i.i, align 1, !tbaa !60
  %i.cny = insertelement <2 x i64> poison, i64 %i.cnx, i64 0
  %i.cnz = bitcast <2 x i64> %i.cny to <8 x i16>
  %i.coa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cnz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cob = bitcast <8 x i16> %i.coa to <4 x float>
  %i.coc = load i64, ptr %.01883.i.i, align 1, !tbaa !60
  %i.cod = insertelement <2 x i64> poison, i64 %i.coc, i64 0
  %i.coe = bitcast <2 x i64> %i.cod to <8 x i16>
  %i.cof = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.coe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cog = bitcast <8 x i16> %i.cof to <4 x float>
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
  %i.cpo = fadd fast <4 x float> %reass.mul82.i.i, %i.cpn
  %i.cpp = fmul fast <4 x float> %i.cpo, %i.cog
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
  %i.cqn = fadd fast <4 x float> %i.cqa, %i.cqm
  %i.cqo = fadd fast <4 x float> %i.cqn, splat (float 1.000000e+00)
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
  %i.csu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cst, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
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
  %.015.lcssa.i.i4903349 = ptrtoaddr ptr %.015.lcssa.i.i490 to i64
  %.017.lcssa.i.i4893348 = ptrtoaddr ptr %.017.lcssa.i.i489 to i64
  %i.ctc = xor i32 %.0.lcssa.i35.i491, -1
  %i.ctd = add i32 %i.cmb, %i.ctc                 ; 2 uses
  %i.cte = zext i32 %i.ctd to i64
  %i.ctf = add nuw nsw i64 %i.cte, 1              ; 2 uses
  %min.iters.check3352 = icmp ult i32 %i.ctd, 7
  %i.ctg = sub i64 %.015.lcssa.i.i4903349, %.017.lcssa.i.i4893348
  %diff.check3350 = icmp ugt i64 %i.ctg, -16
  %or.cond3936 = select i1 %min.iters.check3352, i1 true, i1 %diff.check3350
  br i1 %or.cond3936, label %.lr.ph90.i.i.preheader4110, label %vector.ph3353

vector.ph3353:                                    ; preds = %.lr.ph90.i.i.preheader
  %n.vec3354 = and i64 %i.ctf, 8589934584         ; 4 uses
  %i.cth = trunc i64 %n.vec3354 to i32
  %i.cti = add i32 %.0.lcssa.i35.i491, %i.cth
  %i.ctj = shl nuw nsw i64 %n.vec3354, 1          ; 2 uses
  %i.ctk = getelementptr i8, ptr %.015.lcssa.i.i490, i64 %i.ctj
  %i.ctl = getelementptr i8, ptr %.017.lcssa.i.i489, i64 %i.ctj
  %i.ctm = insertelement <4 x float> poison, float %i.csp, i64 0
  %i.ctn = shufflevector <4 x float> %i.ctm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cto = insertelement <2 x float> poison, float %i.csp, i64 0
  %i.ctp = shufflevector <2 x float> %i.cto, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3355

vector.body3355:                                  ; preds = %vector.body3355, %vector.ph3353
  %index3356 = phi i64 [ 0, %vector.ph3353 ], [ %index.next3360, %vector.body3355 ] ; 2 uses
  %i.ctq = shl i64 %index3356, 1                  ; 2 uses
  %next.gep3357 = getelementptr i8, ptr %.015.lcssa.i.i490, i64 %i.ctq
  %next.gep3358 = getelementptr i8, ptr %.017.lcssa.i.i489, i64 %i.ctq
  %wide.load3359 = load <8 x i16>, ptr %next.gep3357, align 2, !tbaa !57
  %i.ctr = zext <8 x i16> %wide.load3359 to <8 x i32>
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
  store <8 x i16> %i.cub, ptr %next.gep3358, align 2, !tbaa !57
  %index.next3360 = add nuw i64 %index3356, 8     ; 2 uses
  %i.cuc = icmp eq i64 %index.next3360, %n.vec3354
  br i1 %i.cuc, label %middle.block3361, label %vector.body3355, !llvm.loop !508

middle.block3361:                                 ; preds = %vector.body3355
  %cmp.n3362 = icmp eq i64 %i.ctf, %n.vec3354
  br i1 %cmp.n3362, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i.preheader4110

.lr.ph90.i.i.preheader4110:                       ; preds = %.lr.ph90.i.i.preheader, %middle.block3361
  %.189.i.i.ph = phi i32 [ %.0.lcssa.i35.i491, %.lr.ph90.i.i.preheader ], [ %i.cti, %middle.block3361 ] ; 4 uses
  %.11688.i.i.ph = phi ptr [ %.015.lcssa.i.i490, %.lr.ph90.i.i.preheader ], [ %i.ctk, %middle.block3361 ] ; 3 uses
  %.11887.i.i.ph = phi ptr [ %.017.lcssa.i.i489, %.lr.ph90.i.i.preheader ], [ %i.ctl, %middle.block3361 ] ; 3 uses
  %i.cud = sub i32 %i.cmb, %.189.i.i.ph
  %.neg4493 = add i32 %.189.i.i.ph, 1
  %xtraiter4410 = and i32 %i.cud, 1
  %lcmp.mod4411.not = icmp eq i32 %xtraiter4410, 0
  br i1 %lcmp.mod4411.not, label %.lr.ph90.i.i.prol.loopexit, label %.lr.ph90.i.i.prol

.lr.ph90.i.i.prol:                                ; preds = %.lr.ph90.i.i.preheader4110
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

.lr.ph90.i.i.prol.loopexit:                       ; preds = %.lr.ph90.i.i.prol, %.lr.ph90.i.i.preheader4110
  %.189.i.i.unr = phi i32 [ %.189.i.i.ph, %.lr.ph90.i.i.preheader4110 ], [ %i.cuo, %.lr.ph90.i.i.prol ]
  %.11688.i.i.unr = phi ptr [ %.11688.i.i.ph, %.lr.ph90.i.i.preheader4110 ], [ %i.cue, %.lr.ph90.i.i.prol ]
  %.11887.i.i.unr = phi ptr [ %.11887.i.i.ph, %.lr.ph90.i.i.preheader4110 ], [ %i.cun, %.lr.ph90.i.i.prol ]
  %i.cup = icmp eq i32 %i.cmb, %.neg4493
  br i1 %i.cup, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i

.lr.ph.i37.i493:                                  ; preds = %bb.dy, %.lr.ph.i37.i493
  %.084.i.i = phi i32 [ %i.cxq, %.lr.ph.i37.i493 ], [ 0, %bb.dy ]
  %.01583.i.i = phi ptr [ %i.cxo, %.lr.ph.i37.i493 ], [ %0, %bb.dy ] ; 2 uses
  %.01782.i.i = phi ptr [ %i.cxp, %.lr.ph.i37.i493 ], [ %2, %bb.dy ] ; 2 uses
  %i.cuq = load i64, ptr %.01583.i.i, align 1, !tbaa !60
  %i.cur = insertelement <2 x i64> poison, i64 %i.cuq, i64 0
  %i.cus = bitcast <2 x i64> %i.cur to <8 x i16>
  %i.cut = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cus, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cuu = bitcast <8 x i16> %i.cut to <4 x float>
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
  %i.cwc = fadd fast <4 x float> %reass.mul81.i.i, %i.cwb
  %i.cwd = fmul fast <4 x float> %i.cwc, %i.csy
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
  %i.cxb = fadd fast <4 x float> %i.cwo, %i.cxa
  %i.cxc = fadd fast <4 x float> %i.cxb, splat (float 1.000000e+00)
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
  %i.cyx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cyw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cyy = bitcast <8 x i16> %i.cyx to <4 x float>
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.cyz = insertelement <4 x float> poison, float %i.cys, i64 0
  %i.cza = shufflevector <4 x float> %i.cyz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.czb = phi fast <4 x float> [ %i.cyy, %bb.eb ], [ %i.cza, %bb.ec ]
  %i.czc = icmp sgt i32 %i.cmb, 3
  br i1 %i.czc, label %.lr.ph.i49.i, label %.preheader.i40.i484

.lr.ph.i49.i:                                     ; preds = %bb.ed
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
  %i.dak = fadd fast <4 x float> %reass.mul81.i52.i, %i.daj
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
  %.015.lcssa.i42.i4863330 = ptrtoaddr ptr %.015.lcssa.i42.i486 to i64
  %.017.lcssa.i41.i4853329 = ptrtoaddr ptr %.017.lcssa.i41.i485 to i64
  %i.dan = xor i32 %.0.lcssa.i43.i487, -1
  %i.dao = add i32 %i.cmb, %i.dan                 ; 2 uses
  %i.dap = zext i32 %i.dao to i64
  %i.daq = add nuw nsw i64 %i.dap, 1              ; 2 uses
  %min.iters.check3333 = icmp ult i32 %i.dao, 7
  %i.dar = sub i64 %.015.lcssa.i42.i4863330, %.017.lcssa.i41.i4853329
  %diff.check3331 = icmp ugt i64 %i.dar, -16
  %or.cond3937 = select i1 %min.iters.check3333, i1 true, i1 %diff.check3331
  br i1 %or.cond3937, label %.lr.ph90.i44.i.preheader4114, label %vector.ph3334

vector.ph3334:                                    ; preds = %.lr.ph90.i44.i.preheader
  %n.vec3335 = and i64 %i.daq, 8589934584         ; 4 uses
  %i.das = trunc i64 %n.vec3335 to i32
  %i.dat = add i32 %.0.lcssa.i43.i487, %i.das
  %i.dau = shl nuw nsw i64 %n.vec3335, 1          ; 2 uses
  %i.dav = getelementptr i8, ptr %.015.lcssa.i42.i486, i64 %i.dau
  %i.daw = getelementptr i8, ptr %.017.lcssa.i41.i485, i64 %i.dau
  %i.dax = insertelement <4 x float> poison, float %i.cys, i64 0
  %i.day = shufflevector <4 x float> %i.dax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.daz = insertelement <2 x float> poison, float %i.cys, i64 0
  %i.dba = shufflevector <2 x float> %i.daz, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3336

vector.body3336:                                  ; preds = %vector.body3336, %vector.ph3334
  %index3337 = phi i64 [ 0, %vector.ph3334 ], [ %index.next3341, %vector.body3336 ] ; 2 uses
  %i.dbb = shl i64 %index3337, 1                  ; 2 uses
  %next.gep3338 = getelementptr i8, ptr %.015.lcssa.i42.i486, i64 %i.dbb
  %next.gep3339 = getelementptr i8, ptr %.017.lcssa.i41.i485, i64 %i.dbb
  %wide.load3340 = load <8 x i16>, ptr %next.gep3338, align 2, !tbaa !57
  %i.dbc = zext <8 x i16> %wide.load3340 to <8 x i32>
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
  store <8 x i16> %i.dbm, ptr %next.gep3339, align 2, !tbaa !57
  %index.next3341 = add nuw i64 %index3337, 8     ; 2 uses
  %i.dbn = icmp eq i64 %index.next3341, %n.vec3335
  br i1 %i.dbn, label %middle.block3342, label %vector.body3336, !llvm.loop !511

middle.block3342:                                 ; preds = %vector.body3336
  %cmp.n3343 = icmp eq i64 %i.daq, %n.vec3335
  br i1 %cmp.n3343, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i.preheader4114

.lr.ph90.i44.i.preheader4114:                     ; preds = %.lr.ph90.i44.i.preheader, %middle.block3342
  %.189.i45.i.ph = phi i32 [ %.0.lcssa.i43.i487, %.lr.ph90.i44.i.preheader ], [ %i.dat, %middle.block3342 ] ; 4 uses
  %.11688.i46.i.ph = phi ptr [ %.015.lcssa.i42.i486, %.lr.ph90.i44.i.preheader ], [ %i.dav, %middle.block3342 ] ; 3 uses
  %.11887.i47.i.ph = phi ptr [ %.017.lcssa.i41.i485, %.lr.ph90.i44.i.preheader ], [ %i.daw, %middle.block3342 ] ; 3 uses
  %i.dbo = sub i32 %i.cmb, %.189.i45.i.ph
  %.neg4492 = add i32 %.189.i45.i.ph, 1
  %xtraiter4408 = and i32 %i.dbo, 1
  %lcmp.mod4409.not = icmp eq i32 %xtraiter4408, 0
  br i1 %lcmp.mod4409.not, label %.lr.ph90.i44.i.prol.loopexit, label %.lr.ph90.i44.i.prol

.lr.ph90.i44.i.prol:                              ; preds = %.lr.ph90.i44.i.preheader4114
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

.lr.ph90.i44.i.prol.loopexit:                     ; preds = %.lr.ph90.i44.i.prol, %.lr.ph90.i44.i.preheader4114
  %.189.i45.i.unr = phi i32 [ %.189.i45.i.ph, %.lr.ph90.i44.i.preheader4114 ], [ %i.dbz, %.lr.ph90.i44.i.prol ]
  %.11688.i46.i.unr = phi ptr [ %.11688.i46.i.ph, %.lr.ph90.i44.i.preheader4114 ], [ %i.dbp, %.lr.ph90.i44.i.prol ]
  %.11887.i47.i.unr = phi ptr [ %.11887.i47.i.ph, %.lr.ph90.i44.i.preheader4114 ], [ %i.dby, %.lr.ph90.i44.i.prol ]
  %i.dca = icmp eq i32 %i.cmb, %.neg4492
  br i1 %i.dca, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i

bb.ee:                                            ; preds = %bb.ee, %.lr.ph.i49.i
  %.084.i53.i = phi i32 [ 0, %.lr.ph.i49.i ], [ %i.ddt, %bb.ee ]
  %.01583.i54.i = phi ptr [ %1, %.lr.ph.i49.i ], [ %i.ddr, %bb.ee ] ; 2 uses
  %.01782.i55.i = phi ptr [ %2, %.lr.ph.i49.i ], [ %i.dds, %bb.ee ] ; 2 uses
  %i.dcb = load i64, ptr %.01583.i54.i, align 1, !tbaa !60
  %i.dcc = insertelement <2 x i64> poison, i64 %i.dcb, i64 0
  %i.dcd = bitcast <2 x i64> %i.dcc to <8 x i16>
  %i.dce = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dcd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcf = bitcast <8 x i16> %i.dce to <4 x float>
  %i.dcg = fmul fast <4 x float> %i.dak, %i.dcf
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
  %i.dde = fadd fast <4 x float> %i.dcr, %i.ddd
  %i.ddf = fadd fast <4 x float> %i.dde, splat (float 1.000000e+00)
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
  %i.dey = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dex, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dez = bitcast <8 x i16> %i.dey to <4 x float>
  %i.dfa = load i16, ptr %.01074.i.i, align 2, !tbaa !57
  %i.dfb = zext i16 %i.dfa to i32
  %i.dfc = shl nuw i32 %i.dfb, 16
  %i.dfd = insertelement <4 x i32> poison, i32 %i.dfc, i64 0
  %i.dfe = bitcast <4 x i32> %i.dfd to <4 x float>
  %i.dff = shufflevector <4 x float> %i.dfe, <4 x float> poison, <4 x i32> zeroinitializer
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
  %i.dgn = fadd fast <4 x float> %reass.mul72.i.i, %i.dgm
  %i.dgo = fmul fast <4 x float> %i.dgn, %i.dff
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
  %i.dhm = fadd fast <4 x float> %i.dgz, %i.dhl
  %i.dhn = fadd fast <4 x float> %i.dhm, splat (float 1.000000e+00)
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
  %.014.lcssa.i62.i3311 = ptrtoaddr ptr %.014.lcssa.i62.i to i64
  %.016.lcssa.i61.i3310 = ptrtoaddr ptr %.016.lcssa.i61.i to i64
  %i.dim = xor i32 %.0.lcssa.i63.i, -1
  %i.din = add i32 %i.cmb, %i.dim                 ; 2 uses
  %i.dio = zext i32 %i.din to i64
  %i.dip = add nuw nsw i64 %i.dio, 1              ; 2 uses
  %min.iters.check3314 = icmp ult i32 %i.din, 7
  %i.diq = sub i64 %.014.lcssa.i62.i3311, %.016.lcssa.i61.i3310
  %diff.check3312 = icmp ugt i64 %i.diq, -16
  %or.cond3938 = select i1 %min.iters.check3314, i1 true, i1 %diff.check3312
  br i1 %or.cond3938, label %.lr.ph71.i.i.preheader4119, label %vector.ph3315

vector.ph3315:                                    ; preds = %.lr.ph71.i.i.preheader
  %n.vec3316 = and i64 %i.dip, 8589934584         ; 4 uses
  %i.dir = trunc i64 %n.vec3316 to i32
  %i.dis = add i32 %.0.lcssa.i63.i, %i.dir
  %i.dit = shl nuw nsw i64 %n.vec3316, 1          ; 2 uses
  %i.diu = getelementptr i8, ptr %.014.lcssa.i62.i, i64 %i.dit
  %i.div = getelementptr i8, ptr %.016.lcssa.i61.i, i64 %i.dit
  %i.diw = insertelement <4 x float> poison, float %i.dig, i64 0
  %i.dix = shufflevector <4 x float> %i.diw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.diy = insertelement <2 x float> poison, float %i.dig, i64 0
  %i.diz = shufflevector <2 x float> %i.diy, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3317

vector.body3317:                                  ; preds = %vector.body3317, %vector.ph3315
  %index3318 = phi i64 [ 0, %vector.ph3315 ], [ %index.next3322, %vector.body3317 ] ; 2 uses
  %i.dja = shl i64 %index3318, 1                  ; 2 uses
  %next.gep3319 = getelementptr i8, ptr %.014.lcssa.i62.i, i64 %i.dja
  %next.gep3320 = getelementptr i8, ptr %.016.lcssa.i61.i, i64 %i.dja
  %wide.load3321 = load <8 x i16>, ptr %next.gep3319, align 2, !tbaa !57
  %i.djb = zext <8 x i16> %wide.load3321 to <8 x i32>
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
  store <8 x i16> %i.djl, ptr %next.gep3320, align 2, !tbaa !57
  %index.next3322 = add nuw i64 %index3318, 8     ; 2 uses
  %i.djm = icmp eq i64 %index.next3322, %n.vec3316
  br i1 %i.djm, label %middle.block3323, label %vector.body3317, !llvm.loop !515

middle.block3323:                                 ; preds = %vector.body3317
  %cmp.n3324 = icmp eq i64 %i.dip, %n.vec3316
  br i1 %cmp.n3324, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i.preheader4119

.lr.ph71.i.i.preheader4119:                       ; preds = %.lr.ph71.i.i.preheader, %middle.block3323
  %.170.i.i.ph = phi i32 [ %.0.lcssa.i63.i, %.lr.ph71.i.i.preheader ], [ %i.dis, %middle.block3323 ] ; 4 uses
  %.11569.i.i.ph = phi ptr [ %.014.lcssa.i62.i, %.lr.ph71.i.i.preheader ], [ %i.diu, %middle.block3323 ] ; 3 uses
  %.11768.i.i.ph = phi ptr [ %.016.lcssa.i61.i, %.lr.ph71.i.i.preheader ], [ %i.div, %middle.block3323 ] ; 3 uses
  %i.djn = sub i32 %i.cmb, %.170.i.i.ph
  %.neg4491 = add i32 %.170.i.i.ph, 1
  %xtraiter4406 = and i32 %i.djn, 1
  %lcmp.mod4407.not = icmp eq i32 %xtraiter4406, 0
  br i1 %lcmp.mod4407.not, label %.lr.ph71.i.i.prol.loopexit, label %.lr.ph71.i.i.prol

.lr.ph71.i.i.prol:                                ; preds = %.lr.ph71.i.i.preheader4119
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

.lr.ph71.i.i.prol.loopexit:                       ; preds = %.lr.ph71.i.i.prol, %.lr.ph71.i.i.preheader4119
  %.170.i.i.unr = phi i32 [ %.170.i.i.ph, %.lr.ph71.i.i.preheader4119 ], [ %i.djy, %.lr.ph71.i.i.prol ]
  %.11569.i.i.unr = phi ptr [ %.11569.i.i.ph, %.lr.ph71.i.i.preheader4119 ], [ %i.djo, %.lr.ph71.i.i.prol ]
  %.11768.i.i.unr = phi ptr [ %.11768.i.i.ph, %.lr.ph71.i.i.preheader4119 ], [ %i.djx, %.lr.ph71.i.i.prol ]
  %i.djz = icmp eq i32 %i.cmb, %.neg4491
  br i1 %i.djz, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i

.lr.ph.i65.i481:                                  ; preds = %bb.ej, %.lr.ph.i65.i481
  %.065.i.i = phi i32 [ %i.dna, %.lr.ph.i65.i481 ], [ 0, %bb.ej ]
  %.01464.i.i = phi ptr [ %i.dmy, %.lr.ph.i65.i481 ], [ %0, %bb.ej ] ; 2 uses
  %.01663.i.i = phi ptr [ %i.dmz, %.lr.ph.i65.i481 ], [ %2, %bb.ej ] ; 2 uses
  %i.dka = load i64, ptr %.01464.i.i, align 1, !tbaa !60
  %i.dkb = insertelement <2 x i64> poison, i64 %i.dka, i64 0
  %i.dkc = bitcast <2 x i64> %i.dkb to <8 x i16>
  %i.dkd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dkc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dke = bitcast <8 x i16> %i.dkd to <4 x float>
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
  %i.dlm = fadd fast <4 x float> %reass.mul62.i.i, %i.dll
  %i.dln = fmul fast <4 x float> %i.dlm, %i.dii
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
  %i.dml = fadd fast <4 x float> %i.dly, %i.dmk
  %i.dmm = fadd fast <4 x float> %i.dml, splat (float 1.000000e+00)
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
  %i.dod = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.doc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.doe = bitcast <8 x i16> %i.dod to <4 x float>
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
  %i.dpm = fadd fast <4 x float> %reass.mul70.i.i, %i.dpl
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
  %i.dpt = fmul fast <4 x float> %i.dps, %i.dpm
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
  %i.dqr = fadd fast <4 x float> %i.dqe, %i.dqq
  %i.dqs = fadd fast <4 x float> %i.dqr, splat (float 1.000000e+00)
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
  %.016.lcssa.i.i5633285 = ptrtoaddr ptr %.016.lcssa.i.i563 to i64 ; 2 uses
  %.014.lcssa.i.i5643286 = ptrtoaddr ptr %.014.lcssa.i.i564 to i64
  %.018.lcssa.i.i5623288 = ptrtoaddr ptr %.018.lcssa.i.i562 to i64
  %i.drm = icmp slt i32 %.0.lcssa.i.i565, %i.drh
  br i1 %i.drm, label %.lr.ph37.i.i566.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph37.i.i566.preheader:                        ; preds = %.preheader.i.i561
  %i.drn = xor i32 %.0.lcssa.i.i565, -1
  %i.dro = add i32 %i.drh, %i.drn                 ; 2 uses
  %i.drp = zext i32 %i.dro to i64
  %i.drq = add nuw nsw i64 %i.drp, 1              ; 2 uses
  %min.iters.check3292 = icmp ult i32 %i.dro, 7
  br i1 %min.iters.check3292, label %.lr.ph37.i.i566.preheader4124, label %vector.memcheck3284

vector.memcheck3284:                              ; preds = %.lr.ph37.i.i566.preheader
  %i.drr = sub i64 %.014.lcssa.i.i5643286, %.016.lcssa.i.i5633285
  %diff.check3287 = icmp ugt i64 %i.drr, -16
  %i.drs = sub i64 %.018.lcssa.i.i5623288, %.016.lcssa.i.i5633285
  %diff.check3289 = icmp ugt i64 %i.drs, -16
  %conflict.rdx3290 = or i1 %diff.check3287, %diff.check3289
  br i1 %conflict.rdx3290, label %.lr.ph37.i.i566.preheader4124, label %vector.ph3293

vector.ph3293:                                    ; preds = %vector.memcheck3284
  %n.vec3294 = and i64 %i.drq, 8589934584         ; 4 uses
  %i.drt = trunc i64 %n.vec3294 to i32
  %i.dru = add i32 %.0.lcssa.i.i565, %i.drt
  %i.drv = shl nuw nsw i64 %n.vec3294, 1          ; 3 uses
  %i.drw = getelementptr i8, ptr %.014.lcssa.i.i564, i64 %i.drv
  %i.drx = getelementptr i8, ptr %.016.lcssa.i.i563, i64 %i.drv
  %i.dry = getelementptr i8, ptr %.018.lcssa.i.i562, i64 %i.drv
  br label %vector.body3295

vector.body3295:                                  ; preds = %vector.body3295, %vector.ph3293
  %index3296 = phi i64 [ 0, %vector.ph3293 ], [ %index.next3302, %vector.body3295 ] ; 2 uses
  %i.drz = shl i64 %index3296, 1                  ; 3 uses
  %next.gep3297 = getelementptr i8, ptr %.014.lcssa.i.i564, i64 %i.drz
  %next.gep3298 = getelementptr i8, ptr %.016.lcssa.i.i563, i64 %i.drz
  %next.gep3299 = getelementptr i8, ptr %.018.lcssa.i.i562, i64 %i.drz
  %wide.load3300 = load <8 x i16>, ptr %next.gep3297, align 2, !tbaa !57
  %i.dsa = zext <8 x i16> %wide.load3300 to <8 x i32>
  %i.dsb = shl nuw <8 x i32> %i.dsa, splat (i32 16)
  %i.dsc = bitcast <8 x i32> %i.dsb to <8 x float>
  %wide.load3301 = load <8 x i16>, ptr %next.gep3299, align 2, !tbaa !57
  %i.dsd = zext <8 x i16> %wide.load3301 to <8 x i32>
  %i.dse = shl nuw <8 x i32> %i.dsd, splat (i32 16)
  %i.dsf = bitcast <8 x i32> %i.dse to <8 x float>
  %i.dsg = fsub fast <8 x float> %i.dsf, %i.dsc
  %i.dsh = bitcast <8 x float> %i.dsg to <8 x i32>
  %i.dsi = lshr <8 x i32> %i.dsh, splat (i32 16)
  %i.dsj = trunc nuw <8 x i32> %i.dsi to <8 x i16>
  store <8 x i16> %i.dsj, ptr %next.gep3298, align 2, !tbaa !57
  %index.next3302 = add nuw i64 %index3296, 8     ; 2 uses
  %i.dsk = icmp eq i64 %index.next3302, %n.vec3294
  br i1 %i.dsk, label %middle.block3303, label %vector.body3295, !llvm.loop !519

middle.block3303:                                 ; preds = %vector.body3295
  %cmp.n3304 = icmp eq i64 %i.drq, %n.vec3294
  br i1 %cmp.n3304, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph37.i.i566.preheader4124

.lr.ph37.i.i566.preheader4124:                    ; preds = %vector.memcheck3284, %.lr.ph37.i.i566.preheader, %middle.block3303
  %.136.i.i567.ph = phi i32 [ %.0.lcssa.i.i565, %vector.memcheck3284 ], [ %.0.lcssa.i.i565, %.lr.ph37.i.i566.preheader ], [ %i.dru, %middle.block3303 ] ; 4 uses
  %.11535.i.i568.ph = phi ptr [ %.014.lcssa.i.i564, %vector.memcheck3284 ], [ %.014.lcssa.i.i564, %.lr.ph37.i.i566.preheader ], [ %i.drw, %middle.block3303 ] ; 3 uses
  %.11734.i.i569.ph = phi ptr [ %.016.lcssa.i.i563, %vector.memcheck3284 ], [ %.016.lcssa.i.i563, %.lr.ph37.i.i566.preheader ], [ %i.drx, %middle.block3303 ] ; 3 uses
  %.11933.i.i570.ph = phi ptr [ %.018.lcssa.i.i562, %vector.memcheck3284 ], [ %.018.lcssa.i.i562, %.lr.ph37.i.i566.preheader ], [ %i.dry, %middle.block3303 ] ; 3 uses
  %i.dsl = sub i32 %i.drh, %.136.i.i567.ph
  %.neg4490 = add i32 %.136.i.i567.ph, 1
  %xtraiter4404 = and i32 %i.dsl, 1
  %lcmp.mod4405.not = icmp eq i32 %xtraiter4404, 0
  br i1 %lcmp.mod4405.not, label %.lr.ph37.i.i566.prol.loopexit, label %.lr.ph37.i.i566.prol

.lr.ph37.i.i566.prol:                             ; preds = %.lr.ph37.i.i566.preheader4124
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

.lr.ph37.i.i566.prol.loopexit:                    ; preds = %.lr.ph37.i.i566.prol, %.lr.ph37.i.i566.preheader4124
  %.136.i.i567.unr = phi i32 [ %.136.i.i567.ph, %.lr.ph37.i.i566.preheader4124 ], [ %i.dtb, %.lr.ph37.i.i566.prol ]
  %.11535.i.i568.unr = phi ptr [ %.11535.i.i568.ph, %.lr.ph37.i.i566.preheader4124 ], [ %i.dsm, %.lr.ph37.i.i566.prol ]
  %.11734.i.i569.unr = phi ptr [ %.11734.i.i569.ph, %.lr.ph37.i.i566.preheader4124 ], [ %i.dta, %.lr.ph37.i.i566.prol ]
  %.11933.i.i570.unr = phi ptr [ %.11933.i.i570.ph, %.lr.ph37.i.i566.preheader4124 ], [ %i.dsr, %.lr.ph37.i.i566.prol ]
  %i.dtc = icmp eq i32 %i.drh, %.neg4490
  br i1 %i.dtc, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph37.i.i566

.lr.ph.i.i572:                                    ; preds = %bb.eo, %.lr.ph.i.i572
  %.029.i.i573 = phi i32 [ %i.dtx, %.lr.ph.i.i572 ], [ 0, %bb.eo ]
  %.01428.i.i574 = phi ptr [ %i.dtu, %.lr.ph.i.i572 ], [ %0, %bb.eo ] ; 2 uses
  %.01627.i.i575 = phi ptr [ %i.dtw, %.lr.ph.i.i572 ], [ %2, %bb.eo ] ; 2 uses
  %.01826.i.i576 = phi ptr [ %i.dtv, %.lr.ph.i.i572 ], [ %1, %bb.eo ] ; 2 uses
  %i.dtd = load i64, ptr %.01428.i.i574, align 1, !tbaa !60
  %i.dte = insertelement <2 x i64> poison, i64 %i.dtd, i64 0
  %i.dtf = bitcast <2 x i64> %i.dte to <8 x i16>
  %i.dtg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dtf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dth = bitcast <8 x i16> %i.dtg to <4 x float>
  %i.dti = load i64, ptr %.01826.i.i576, align 1, !tbaa !60
  %i.dtj = insertelement <2 x i64> poison, i64 %i.dti, i64 0
  %i.dtk = bitcast <2 x i64> %i.dtj to <8 x i16>
  %i.dtl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dtk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
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
  %.11933.i.i570 = phi ptr [ %i.duu, %.lr.ph37.i.i566 ], [ %.11933.i.i570.unr, %.lr.ph37.i.i566.prol.loopexit ] ; 3 uses
  %i.dua = getelementptr inbounds nuw i8, ptr %.11535.i.i568, i64 2
  %i.dub = load i16, ptr %.11535.i.i568, align 2, !tbaa !57
  %i.duc = zext i16 %i.dub to i32
  %i.dud = shl nuw i32 %i.duc, 16
  %i.due = bitcast i32 %i.dud to float
  %i.duf = getelementptr inbounds nuw i8, ptr %.11933.i.i570, i64 2
  %i.dug = load i16, ptr %.11933.i.i570, align 2, !tbaa !57
  %i.duh = zext i16 %i.dug to i32
  %i.dui = shl nuw i32 %i.duh, 16
  %i.duj = bitcast i32 %i.dui to float
  %i.duk = fsub fast float %i.duj, %i.due
  %i.dul = bitcast float %i.duk to i32
  %i.dum = lshr i32 %i.dul, 16
  %i.dun = trunc nuw i32 %i.dum to i16
  %i.duo = getelementptr inbounds nuw i8, ptr %.11734.i.i569, i64 2
  store i16 %i.dun, ptr %.11734.i.i569, align 2, !tbaa !57
  %i.dup = getelementptr inbounds nuw i8, ptr %.11535.i.i568, i64 4
  %i.duq = load i16, ptr %i.dua, align 2, !tbaa !57
  %i.dur = zext i16 %i.duq to i32
  %i.dus = shl nuw i32 %i.dur, 16
  %i.dut = bitcast i32 %i.dus to float
  %i.duu = getelementptr inbounds nuw i8, ptr %.11933.i.i570, i64 4
  %i.duv = load i16, ptr %i.duf, align 2, !tbaa !57
  %i.duw = zext i16 %i.duv to i32
end_hunk_3
begin_hunk_4_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
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
  %.016.lcssa.i.i7173109 = ptrtoaddr ptr %.016.lcssa.i.i717 to i64 ; 2 uses
  %.014.lcssa.i.i7183110 = ptrtoaddr ptr %.014.lcssa.i.i718 to i64
  %.018.lcssa.i.i7163112 = ptrtoaddr ptr %.018.lcssa.i.i716 to i64
  %i.ewt = icmp slt i32 %.0.lcssa.i.i719, %i.ewo
  br i1 %i.ewt, label %.lr.ph94.i.i720.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph94.i.i720.preheader:                        ; preds = %.preheader.i.i715
  %i.ewu = xor i32 %.0.lcssa.i.i719, -1
  %i.ewv = add i32 %i.ewo, %i.ewu                 ; 2 uses
  %i.eww = zext i32 %i.ewv to i64
  %i.ewx = add nuw nsw i64 %i.eww, 1              ; 2 uses
  %min.iters.check3116 = icmp ult i32 %i.ewv, 7
  br i1 %min.iters.check3116, label %.lr.ph94.i.i720.preheader4162, label %vector.memcheck3108

vector.memcheck3108:                              ; preds = %.lr.ph94.i.i720.preheader
  %i.ewy = sub i64 %.014.lcssa.i.i7183110, %.016.lcssa.i.i7173109
  %diff.check3111 = icmp ugt i64 %i.ewy, -16
  %i.ewz = sub i64 %.018.lcssa.i.i7163112, %.016.lcssa.i.i7173109
  %diff.check3113 = icmp ugt i64 %i.ewz, -16
  %conflict.rdx3114 = or i1 %diff.check3111, %diff.check3113
  br i1 %conflict.rdx3114, label %.lr.ph94.i.i720.preheader4162, label %vector.ph3117

vector.ph3117:                                    ; preds = %vector.memcheck3108
  %n.vec3118 = and i64 %i.ewx, 8589934584         ; 4 uses
  %i.exa = trunc i64 %n.vec3118 to i32
  %i.exb = add i32 %.0.lcssa.i.i719, %i.exa
  %i.exc = shl nuw nsw i64 %n.vec3118, 1          ; 3 uses
  %i.exd = getelementptr i8, ptr %.014.lcssa.i.i718, i64 %i.exc
  %i.exe = getelementptr i8, ptr %.016.lcssa.i.i717, i64 %i.exc
  %i.exf = getelementptr i8, ptr %.018.lcssa.i.i716, i64 %i.exc
  br label %vector.body3119

vector.body3119:                                  ; preds = %vector.body3119, %vector.ph3117
  %index3120 = phi i64 [ 0, %vector.ph3117 ], [ %index.next3126, %vector.body3119 ] ; 2 uses
  %i.exg = shl i64 %index3120, 1                  ; 3 uses
  %next.gep3121 = getelementptr i8, ptr %.014.lcssa.i.i718, i64 %i.exg
  %next.gep3122 = getelementptr i8, ptr %.016.lcssa.i.i717, i64 %i.exg
  %next.gep3123 = getelementptr i8, ptr %.018.lcssa.i.i716, i64 %i.exg
  %wide.load3124 = load <8 x i16>, ptr %next.gep3121, align 2, !tbaa !57
  %i.exh = zext <8 x i16> %wide.load3124 to <8 x i32>
  %i.exi = shl nuw <8 x i32> %i.exh, splat (i32 16)
  %i.exj = bitcast <8 x i32> %i.exi to <8 x float>
  %wide.load3125 = load <8 x i16>, ptr %next.gep3123, align 2, !tbaa !57
  %i.exk = zext <8 x i16> %wide.load3125 to <8 x i32>
  %i.exl = shl nuw <8 x i32> %i.exk, splat (i32 16)
  %i.exm = bitcast <8 x i32> %i.exl to <8 x float>
  %i.exn = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.exm, <8 x float> %i.exj)
  %i.exo = bitcast <8 x float> %i.exn to <8 x i32>
  %i.exp = lshr <8 x i32> %i.exo, splat (i32 16)
  %i.exq = trunc nuw <8 x i32> %i.exp to <8 x i16>
  store <8 x i16> %i.exq, ptr %next.gep3122, align 2, !tbaa !57
  %index.next3126 = add nuw i64 %index3120, 8     ; 2 uses
  %i.exr = icmp eq i64 %index.next3126, %n.vec3118
  br i1 %i.exr, label %middle.block3127, label %vector.body3119, !llvm.loop !547

middle.block3127:                                 ; preds = %vector.body3119
  %cmp.n3128 = icmp eq i64 %i.ewx, %n.vec3118
  br i1 %cmp.n3128, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i720.preheader4162

.lr.ph94.i.i720.preheader4162:                    ; preds = %vector.memcheck3108, %.lr.ph94.i.i720.preheader, %middle.block3127
  %.193.i.i721.ph = phi i32 [ %.0.lcssa.i.i719, %vector.memcheck3108 ], [ %.0.lcssa.i.i719, %.lr.ph94.i.i720.preheader ], [ %i.exb, %middle.block3127 ] ; 4 uses
  %.11592.i.i722.ph = phi ptr [ %.014.lcssa.i.i718, %vector.memcheck3108 ], [ %.014.lcssa.i.i718, %.lr.ph94.i.i720.preheader ], [ %i.exd, %middle.block3127 ] ; 3 uses
  %.11791.i.i723.ph = phi ptr [ %.016.lcssa.i.i717, %vector.memcheck3108 ], [ %.016.lcssa.i.i717, %.lr.ph94.i.i720.preheader ], [ %i.exe, %middle.block3127 ] ; 3 uses
  %.11990.i.i724.ph = phi ptr [ %.018.lcssa.i.i716, %vector.memcheck3108 ], [ %.018.lcssa.i.i716, %.lr.ph94.i.i720.preheader ], [ %i.exf, %middle.block3127 ] ; 3 uses
  %i.exs = sub i32 %i.ewo, %.193.i.i721.ph
  %.neg4482 = add i32 %.193.i.i721.ph, 1
  %xtraiter4388 = and i32 %i.exs, 1
  %lcmp.mod4389.not = icmp eq i32 %xtraiter4388, 0
  br i1 %lcmp.mod4389.not, label %.lr.ph94.i.i720.prol.loopexit, label %.lr.ph94.i.i720.prol

.lr.ph94.i.i720.prol:                             ; preds = %.lr.ph94.i.i720.preheader4162
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

.lr.ph94.i.i720.prol.loopexit:                    ; preds = %.lr.ph94.i.i720.prol, %.lr.ph94.i.i720.preheader4162
  %.193.i.i721.unr = phi i32 [ %.193.i.i721.ph, %.lr.ph94.i.i720.preheader4162 ], [ %i.eyi, %.lr.ph94.i.i720.prol ]
  %.11592.i.i722.unr = phi ptr [ %.11592.i.i722.ph, %.lr.ph94.i.i720.preheader4162 ], [ %i.ext, %.lr.ph94.i.i720.prol ]
  %.11791.i.i723.unr = phi ptr [ %.11791.i.i723.ph, %.lr.ph94.i.i720.preheader4162 ], [ %i.eyh, %.lr.ph94.i.i720.prol ]
  %.11990.i.i724.unr = phi ptr [ %.11990.i.i724.ph, %.lr.ph94.i.i720.preheader4162 ], [ %i.exy, %.lr.ph94.i.i720.prol ]
  %i.eyj = icmp eq i32 %i.ewo, %.neg4482
  br i1 %i.eyj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i720

.lr.ph.i.i726:                                    ; preds = %bb.gb, %.lr.ph.i.i726
  %.086.i.i727 = phi i32 [ %i.fbq, %.lr.ph.i.i726 ], [ 0, %bb.gb ]
  %.01485.i.i728 = phi ptr [ %i.fbn, %.lr.ph.i.i726 ], [ %0, %bb.gb ] ; 2 uses
  %.01684.i.i729 = phi ptr [ %i.fbp, %.lr.ph.i.i726 ], [ %2, %bb.gb ] ; 2 uses
  %.01883.i.i730 = phi ptr [ %i.fbo, %.lr.ph.i.i726 ], [ %1, %bb.gb ] ; 2 uses
  %i.eyk = load i64, ptr %.01485.i.i728, align 1, !tbaa !60
  %i.eyl = insertelement <2 x i64> poison, i64 %i.eyk, i64 0
  %i.eym = bitcast <2 x i64> %i.eyl to <8 x i16>
  %i.eyn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eym, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eyo = bitcast <8 x i16> %i.eyn to <4 x float>
  %i.eyp = load i64, ptr %.01883.i.i730, align 1, !tbaa !60
  %i.eyq = insertelement <2 x i64> poison, i64 %i.eyp, i64 0
  %i.eyr = bitcast <2 x i64> %i.eyq to <8 x i16>
  %i.eys = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eyr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eyt = bitcast <8 x i16> %i.eys to <4 x float>
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
  %i.fab = fadd fast <4 x float> %reass.mul82.i.i733, %i.faa
  %i.fac = fmul fast <4 x float> %i.fab, %i.eyo
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
  %i.fba = fadd fast <4 x float> %i.fan, %i.faz
  %i.fbb = fadd fast <4 x float> %i.fba, splat (float 1.000000e+00)
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
  %i.fdh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fdg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fdi = bitcast <8 x i16> %i.fdh to <4 x float>
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  %i.fdj = insertelement <4 x float> poison, float %i.fdc, i64 0
  %i.fdk = shufflevector <4 x float> %i.fdj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.fdl = phi fast <4 x float> [ %i.fdi, %bb.ge ], [ %i.fdk, %bb.gf ]
  %i.fdm = icmp sgt i32 %i.ewo, 3
  br i1 %i.fdm, label %.lr.ph.i37.i707, label %.preheader.i34.i698

.lr.ph.i37.i707:                                  ; preds = %bb.gg
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
  %i.feu = fadd fast <4 x float> %reass.mul81.i.i710, %i.fet
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
  %.015.lcssa.i.i7003091 = ptrtoaddr ptr %.015.lcssa.i.i700 to i64
  %.017.lcssa.i.i6993090 = ptrtoaddr ptr %.017.lcssa.i.i699 to i64
  %i.fex = xor i32 %.0.lcssa.i35.i701, -1
  %i.fey = add i32 %i.ewo, %i.fex                 ; 2 uses
  %i.fez = zext i32 %i.fey to i64
  %i.ffa = add nuw nsw i64 %i.fez, 1              ; 2 uses
  %min.iters.check3094 = icmp ult i32 %i.fey, 7
  %i.ffb = sub i64 %.015.lcssa.i.i7003091, %.017.lcssa.i.i6993090
  %diff.check3092 = icmp ugt i64 %i.ffb, -16
  %or.cond3945 = select i1 %min.iters.check3094, i1 true, i1 %diff.check3092
  br i1 %or.cond3945, label %.lr.ph90.i.i702.preheader4167, label %vector.ph3095

vector.ph3095:                                    ; preds = %.lr.ph90.i.i702.preheader
  %n.vec3096 = and i64 %i.ffa, 8589934584         ; 4 uses
  %i.ffc = trunc i64 %n.vec3096 to i32
  %i.ffd = add i32 %.0.lcssa.i35.i701, %i.ffc
  %i.ffe = shl nuw nsw i64 %n.vec3096, 1          ; 2 uses
  %i.fff = getelementptr i8, ptr %.015.lcssa.i.i700, i64 %i.ffe
  %i.ffg = getelementptr i8, ptr %.017.lcssa.i.i699, i64 %i.ffe
  %i.ffh = insertelement <4 x float> poison, float %i.fdc, i64 0
  %i.ffi = shufflevector <4 x float> %i.ffh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ffj = insertelement <2 x float> poison, float %i.fdc, i64 0
  %i.ffk = shufflevector <2 x float> %i.ffj, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3097

vector.body3097:                                  ; preds = %vector.body3097, %vector.ph3095
  %index3098 = phi i64 [ 0, %vector.ph3095 ], [ %index.next3102, %vector.body3097 ] ; 2 uses
  %i.ffl = shl i64 %index3098, 1                  ; 2 uses
  %next.gep3099 = getelementptr i8, ptr %.015.lcssa.i.i700, i64 %i.ffl
  %next.gep3100 = getelementptr i8, ptr %.017.lcssa.i.i699, i64 %i.ffl
  %wide.load3101 = load <8 x i16>, ptr %next.gep3099, align 2, !tbaa !57
  %i.ffm = zext <8 x i16> %wide.load3101 to <8 x i32>
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
  store <8 x i16> %i.ffw, ptr %next.gep3100, align 2, !tbaa !57
  %index.next3102 = add nuw i64 %index3098, 8     ; 2 uses
  %i.ffx = icmp eq i64 %index.next3102, %n.vec3096
  br i1 %i.ffx, label %middle.block3103, label %vector.body3097, !llvm.loop !550

middle.block3103:                                 ; preds = %vector.body3097
  %cmp.n3104 = icmp eq i64 %i.ffa, %n.vec3096
  br i1 %cmp.n3104, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i702.preheader4167

.lr.ph90.i.i702.preheader4167:                    ; preds = %.lr.ph90.i.i702.preheader, %middle.block3103
  %.189.i.i703.ph = phi i32 [ %.0.lcssa.i35.i701, %.lr.ph90.i.i702.preheader ], [ %i.ffd, %middle.block3103 ] ; 4 uses
  %.11688.i.i704.ph = phi ptr [ %.015.lcssa.i.i700, %.lr.ph90.i.i702.preheader ], [ %i.fff, %middle.block3103 ] ; 3 uses
  %.11887.i.i705.ph = phi ptr [ %.017.lcssa.i.i699, %.lr.ph90.i.i702.preheader ], [ %i.ffg, %middle.block3103 ] ; 3 uses
  %i.ffy = sub i32 %i.ewo, %.189.i.i703.ph
  %.neg4481 = add i32 %.189.i.i703.ph, 1
  %xtraiter4386 = and i32 %i.ffy, 1
  %lcmp.mod4387.not = icmp eq i32 %xtraiter4386, 0
  br i1 %lcmp.mod4387.not, label %.lr.ph90.i.i702.prol.loopexit, label %.lr.ph90.i.i702.prol

.lr.ph90.i.i702.prol:                             ; preds = %.lr.ph90.i.i702.preheader4167
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

.lr.ph90.i.i702.prol.loopexit:                    ; preds = %.lr.ph90.i.i702.prol, %.lr.ph90.i.i702.preheader4167
  %.189.i.i703.unr = phi i32 [ %.189.i.i703.ph, %.lr.ph90.i.i702.preheader4167 ], [ %i.fgj, %.lr.ph90.i.i702.prol ]
  %.11688.i.i704.unr = phi ptr [ %.11688.i.i704.ph, %.lr.ph90.i.i702.preheader4167 ], [ %i.ffz, %.lr.ph90.i.i702.prol ]
  %.11887.i.i705.unr = phi ptr [ %.11887.i.i705.ph, %.lr.ph90.i.i702.preheader4167 ], [ %i.fgi, %.lr.ph90.i.i702.prol ]
  %i.fgk = icmp eq i32 %i.ewo, %.neg4481
  br i1 %i.fgk, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i.i702

bb.gh:                                            ; preds = %bb.gh, %.lr.ph.i37.i707
  %.084.i.i711 = phi i32 [ 0, %.lr.ph.i37.i707 ], [ %i.fid, %bb.gh ]
  %.01583.i.i712 = phi ptr [ %0, %.lr.ph.i37.i707 ], [ %i.fib, %bb.gh ] ; 2 uses
  %.01782.i.i713 = phi ptr [ %2, %.lr.ph.i37.i707 ], [ %i.fic, %bb.gh ] ; 2 uses
  %i.fgl = load i64, ptr %.01583.i.i712, align 1, !tbaa !60
  %i.fgm = insertelement <2 x i64> poison, i64 %i.fgl, i64 0
  %i.fgn = bitcast <2 x i64> %i.fgm to <8 x i16>
  %i.fgo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fgn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fgp = bitcast <8 x i16> %i.fgo to <4 x float>
  %i.fgq = fmul fast <4 x float> %i.feu, %i.fgp
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
  %i.fho = fadd fast <4 x float> %i.fhb, %i.fhn
  %i.fhp = fadd fast <4 x float> %i.fho, splat (float 1.000000e+00)
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
  %i.fjk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fjj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
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
  %.015.lcssa.i42.i6893072 = ptrtoaddr ptr %.015.lcssa.i42.i689 to i64
  %.017.lcssa.i41.i6883071 = ptrtoaddr ptr %.017.lcssa.i41.i688 to i64
  %i.fjs = xor i32 %.0.lcssa.i43.i690, -1
  %i.fjt = add i32 %i.ewo, %i.fjs                 ; 2 uses
  %i.fju = zext i32 %i.fjt to i64
  %i.fjv = add nuw nsw i64 %i.fju, 1              ; 2 uses
  %min.iters.check3075 = icmp ult i32 %i.fjt, 7
  %i.fjw = sub i64 %.015.lcssa.i42.i6893072, %.017.lcssa.i41.i6883071
  %diff.check3073 = icmp ugt i64 %i.fjw, -16
  %or.cond3946 = select i1 %min.iters.check3075, i1 true, i1 %diff.check3073
  br i1 %or.cond3946, label %.lr.ph90.i44.i691.preheader4171, label %vector.ph3076

vector.ph3076:                                    ; preds = %.lr.ph90.i44.i691.preheader
  %n.vec3077 = and i64 %i.fjv, 8589934584         ; 4 uses
  %i.fjx = trunc i64 %n.vec3077 to i32
  %i.fjy = add i32 %.0.lcssa.i43.i690, %i.fjx
  %i.fjz = shl nuw nsw i64 %n.vec3077, 1          ; 2 uses
  %i.fka = getelementptr i8, ptr %.015.lcssa.i42.i689, i64 %i.fjz
  %i.fkb = getelementptr i8, ptr %.017.lcssa.i41.i688, i64 %i.fjz
  %i.fkc = insertelement <4 x float> poison, float %i.fjf, i64 0
  %i.fkd = shufflevector <4 x float> %i.fkc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fke = insertelement <2 x float> poison, float %i.fjf, i64 0
  %i.fkf = shufflevector <2 x float> %i.fke, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3078

vector.body3078:                                  ; preds = %vector.body3078, %vector.ph3076
  %index3079 = phi i64 [ 0, %vector.ph3076 ], [ %index.next3083, %vector.body3078 ] ; 2 uses
  %i.fkg = shl i64 %index3079, 1                  ; 2 uses
  %next.gep3080 = getelementptr i8, ptr %.015.lcssa.i42.i689, i64 %i.fkg
  %next.gep3081 = getelementptr i8, ptr %.017.lcssa.i41.i688, i64 %i.fkg
  %wide.load3082 = load <8 x i16>, ptr %next.gep3080, align 2, !tbaa !57
  %i.fkh = zext <8 x i16> %wide.load3082 to <8 x i32>
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
  store <8 x i16> %i.fkr, ptr %next.gep3081, align 2, !tbaa !57
  %index.next3083 = add nuw i64 %index3079, 8     ; 2 uses
  %i.fks = icmp eq i64 %index.next3083, %n.vec3077
  br i1 %i.fks, label %middle.block3084, label %vector.body3078, !llvm.loop !553

middle.block3084:                                 ; preds = %vector.body3078
  %cmp.n3085 = icmp eq i64 %i.fjv, %n.vec3077
  br i1 %cmp.n3085, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i691.preheader4171

.lr.ph90.i44.i691.preheader4171:                  ; preds = %.lr.ph90.i44.i691.preheader, %middle.block3084
  %.189.i45.i692.ph = phi i32 [ %.0.lcssa.i43.i690, %.lr.ph90.i44.i691.preheader ], [ %i.fjy, %middle.block3084 ] ; 4 uses
  %.11688.i46.i693.ph = phi ptr [ %.015.lcssa.i42.i689, %.lr.ph90.i44.i691.preheader ], [ %i.fka, %middle.block3084 ] ; 3 uses
  %.11887.i47.i694.ph = phi ptr [ %.017.lcssa.i41.i688, %.lr.ph90.i44.i691.preheader ], [ %i.fkb, %middle.block3084 ] ; 3 uses
  %i.fkt = sub i32 %i.ewo, %.189.i45.i692.ph
  %.neg4480 = add i32 %.189.i45.i692.ph, 1
  %xtraiter4384 = and i32 %i.fkt, 1
  %lcmp.mod4385.not = icmp eq i32 %xtraiter4384, 0
  br i1 %lcmp.mod4385.not, label %.lr.ph90.i44.i691.prol.loopexit, label %.lr.ph90.i44.i691.prol

.lr.ph90.i44.i691.prol:                           ; preds = %.lr.ph90.i44.i691.preheader4171
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

.lr.ph90.i44.i691.prol.loopexit:                  ; preds = %.lr.ph90.i44.i691.prol, %.lr.ph90.i44.i691.preheader4171
  %.189.i45.i692.unr = phi i32 [ %.189.i45.i692.ph, %.lr.ph90.i44.i691.preheader4171 ], [ %i.fle, %.lr.ph90.i44.i691.prol ]
  %.11688.i46.i693.unr = phi ptr [ %.11688.i46.i693.ph, %.lr.ph90.i44.i691.preheader4171 ], [ %i.fku, %.lr.ph90.i44.i691.prol ]
  %.11887.i47.i694.unr = phi ptr [ %.11887.i47.i694.ph, %.lr.ph90.i44.i691.preheader4171 ], [ %i.fld, %.lr.ph90.i44.i691.prol ]
  %i.flf = icmp eq i32 %i.ewo, %.neg4480
  br i1 %i.flf, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph90.i44.i691

.lr.ph.i49.i696:                                  ; preds = %bb.gm, %.lr.ph.i49.i696
  %.084.i50.i = phi i32 [ %i.fog, %.lr.ph.i49.i696 ], [ 0, %bb.gm ]
  %.01583.i51.i = phi ptr [ %i.foe, %.lr.ph.i49.i696 ], [ %1, %bb.gm ] ; 2 uses
  %.01782.i52.i = phi ptr [ %i.fof, %.lr.ph.i49.i696 ], [ %2, %bb.gm ] ; 2 uses
  %i.flg = load i64, ptr %.01583.i51.i, align 1, !tbaa !60
  %i.flh = insertelement <2 x i64> poison, i64 %i.flg, i64 0
  %i.fli = bitcast <2 x i64> %i.flh to <8 x i16>
  %i.flj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fli, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.flk = bitcast <8 x i16> %i.flj to <4 x float>
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
  %i.fms = fadd fast <4 x float> %reass.mul81.i55.i, %i.fmr
  %i.fmt = fmul fast <4 x float> %i.fms, %i.fjo
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
  %i.fnr = fadd fast <4 x float> %i.fne, %i.fnq
  %i.fns = fadd fast <4 x float> %i.fnr, splat (float 1.000000e+00)
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
  %i.fpl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fpk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fpm = bitcast <8 x i16> %i.fpl to <4 x float>
  %i.fpn = load i16, ptr %.01074.i.i681, align 2, !tbaa !57
  %i.fpo = zext i16 %i.fpn to i32
  %i.fpp = shl nuw i32 %i.fpo, 16
  %i.fpq = insertelement <4 x i32> poison, i32 %i.fpp, i64 0
  %i.fpr = bitcast <4 x i32> %i.fpq to <4 x float>
  %i.fps = shufflevector <4 x float> %i.fpr, <4 x float> poison, <4 x i32> zeroinitializer
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
  %i.fra = fadd fast <4 x float> %reass.mul72.i.i685, %i.fqz
  %i.frb = fmul fast <4 x float> %i.fra, %i.fpm
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
  %i.frz = fadd fast <4 x float> %i.frm, %i.fry
  %i.fsa = fadd fast <4 x float> %i.frz, splat (float 1.000000e+00)
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
  %i.fsw = shufflevector <4 x float> %i.fsv, <4 x float> poison, <4 x i32> zeroinitializer
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
  %i.fue = fadd fast <4 x float> %reass.mul62.i.i672, %i.fud
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
  %.014.lcssa.i62.i6623053 = ptrtoaddr ptr %.014.lcssa.i62.i662 to i64
  %.016.lcssa.i61.i6613052 = ptrtoaddr ptr %.016.lcssa.i61.i661 to i64
  %i.fuh = xor i32 %.0.lcssa.i63.i663, -1
  %i.fui = add i32 %i.ewo, %i.fuh                 ; 2 uses
  %i.fuj = zext i32 %i.fui to i64
  %i.fuk = add nuw nsw i64 %i.fuj, 1              ; 2 uses
  %min.iters.check3056 = icmp ult i32 %i.fui, 7
  %i.ful = sub i64 %.014.lcssa.i62.i6623053, %.016.lcssa.i61.i6613052
  %diff.check3054 = icmp ugt i64 %i.ful, -16
  %or.cond3947 = select i1 %min.iters.check3056, i1 true, i1 %diff.check3054
  br i1 %or.cond3947, label %.lr.ph71.i.i664.preheader4176, label %vector.ph3057

vector.ph3057:                                    ; preds = %.lr.ph71.i.i664.preheader
  %n.vec3058 = and i64 %i.fuk, 8589934584         ; 4 uses
  %i.fum = trunc i64 %n.vec3058 to i32
  %i.fun = add i32 %.0.lcssa.i63.i663, %i.fum
  %i.fuo = shl nuw nsw i64 %n.vec3058, 1          ; 2 uses
  %i.fup = getelementptr i8, ptr %.014.lcssa.i62.i662, i64 %i.fuo
  %i.fuq = getelementptr i8, ptr %.016.lcssa.i61.i661, i64 %i.fuo
  %i.fur = insertelement <4 x float> poison, float %i.fst, i64 0
  %i.fus = shufflevector <4 x float> %i.fur, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fut = insertelement <2 x float> poison, float %i.fst, i64 0
  %i.fuu = shufflevector <2 x float> %i.fut, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body3059

vector.body3059:                                  ; preds = %vector.body3059, %vector.ph3057
  %index3060 = phi i64 [ 0, %vector.ph3057 ], [ %index.next3064, %vector.body3059 ] ; 2 uses
  %i.fuv = shl i64 %index3060, 1                  ; 2 uses
  %next.gep3061 = getelementptr i8, ptr %.014.lcssa.i62.i662, i64 %i.fuv
  %next.gep3062 = getelementptr i8, ptr %.016.lcssa.i61.i661, i64 %i.fuv
  %wide.load3063 = load <8 x i16>, ptr %next.gep3061, align 2, !tbaa !57
  %i.fuw = zext <8 x i16> %wide.load3063 to <8 x i32>
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
  store <8 x i16> %i.fvg, ptr %next.gep3062, align 2, !tbaa !57
  %index.next3064 = add nuw i64 %index3060, 8     ; 2 uses
  %i.fvh = icmp eq i64 %index.next3064, %n.vec3058
  br i1 %i.fvh, label %middle.block3065, label %vector.body3059, !llvm.loop !557

middle.block3065:                                 ; preds = %vector.body3059
  %cmp.n3066 = icmp eq i64 %i.fuk, %n.vec3058
  br i1 %cmp.n3066, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i664.preheader4176

.lr.ph71.i.i664.preheader4176:                    ; preds = %.lr.ph71.i.i664.preheader, %middle.block3065
  %.170.i.i665.ph = phi i32 [ %.0.lcssa.i63.i663, %.lr.ph71.i.i664.preheader ], [ %i.fun, %middle.block3065 ] ; 4 uses
  %.11569.i.i666.ph = phi ptr [ %.014.lcssa.i62.i662, %.lr.ph71.i.i664.preheader ], [ %i.fup, %middle.block3065 ] ; 3 uses
  %.11768.i.i667.ph = phi ptr [ %.016.lcssa.i61.i661, %.lr.ph71.i.i664.preheader ], [ %i.fuq, %middle.block3065 ] ; 3 uses
  %i.fvi = sub i32 %i.ewo, %.170.i.i665.ph
  %.neg4479 = add i32 %.170.i.i665.ph, 1
  %xtraiter4382 = and i32 %i.fvi, 1
  %lcmp.mod4383.not = icmp eq i32 %xtraiter4382, 0
  br i1 %lcmp.mod4383.not, label %.lr.ph71.i.i664.prol.loopexit, label %.lr.ph71.i.i664.prol

.lr.ph71.i.i664.prol:                             ; preds = %.lr.ph71.i.i664.preheader4176
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

.lr.ph71.i.i664.prol.loopexit:                    ; preds = %.lr.ph71.i.i664.prol, %.lr.ph71.i.i664.preheader4176
  %.170.i.i665.unr = phi i32 [ %.170.i.i665.ph, %.lr.ph71.i.i664.preheader4176 ], [ %i.fvt, %.lr.ph71.i.i664.prol ]
  %.11569.i.i666.unr = phi ptr [ %.11569.i.i666.ph, %.lr.ph71.i.i664.preheader4176 ], [ %i.fvj, %.lr.ph71.i.i664.prol ]
  %.11768.i.i667.unr = phi ptr [ %.11768.i.i667.ph, %.lr.ph71.i.i664.preheader4176 ], [ %i.fvs, %.lr.ph71.i.i664.prol ]
  %i.fvu = icmp eq i32 %i.ewo, %.neg4479
  br i1 %i.fvu, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph71.i.i664

bb.gs:                                            ; preds = %bb.gs, %.lr.ph.i65.i669
  %.065.i.i673 = phi i32 [ 0, %.lr.ph.i65.i669 ], [ %i.fxn, %bb.gs ]
  %.01464.i.i674 = phi ptr [ %0, %.lr.ph.i65.i669 ], [ %i.fxl, %bb.gs ] ; 2 uses
  %.01663.i.i675 = phi ptr [ %2, %.lr.ph.i65.i669 ], [ %i.fxm, %bb.gs ] ; 2 uses
  %i.fvv = load i64, ptr %.01464.i.i674, align 1, !tbaa !60
  %i.fvw = insertelement <2 x i64> poison, i64 %i.fvv, i64 0
  %i.fvx = bitcast <2 x i64> %i.fvw to <8 x i16>
  %i.fvy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvz = bitcast <8 x i16> %i.fvy to <4 x float>
  %i.fwa = fmul fast <4 x float> %i.fue, %i.fvz
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
  %i.fwy = fadd fast <4 x float> %i.fwl, %i.fwx
  %i.fwz = fadd fast <4 x float> %i.fwy, splat (float 1.000000e+00)
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
  %i.fyq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fyp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
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
  %i.fyx = shufflevector <4 x float> %i.fyw, <4 x float> poison, <4 x i32> zeroinitializer
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
  %i.gaf = fadd fast <4 x float> %reass.mul70.i.i658, %i.gae
  %i.gag = fmul fast <4 x float> %i.gaf, %i.fyr
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
  %i.gbe = fadd fast <4 x float> %i.gar, %i.gbd
  %i.gbf = fadd fast <4 x float> %i.gbe, splat (float 1.000000e+00)
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
  %.018.lcssa.i.i755 = phi ptr [ %1, %bb.gx ], [ %i.ggi, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.016.lcssa.i.i756 = phi ptr [ %2, %bb.gx ], [ %i.ggj, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.014.lcssa.i.i757 = phi ptr [ %0, %bb.gx ], [ %i.ggh, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.0.lcssa.i.i758 = phi i32 [ 0, %bb.gx ], [ %i.gby, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.016.lcssa.i.i7563027 = ptrtoaddr ptr %.016.lcssa.i.i756 to i64 ; 2 uses
  %.014.lcssa.i.i7573028 = ptrtoaddr ptr %.014.lcssa.i.i757 to i64
  %.018.lcssa.i.i7553030 = ptrtoaddr ptr %.018.lcssa.i.i755 to i64
  %i.gbz = icmp slt i32 %.0.lcssa.i.i758, %i.gbu
  br i1 %i.gbz, label %.lr.ph72.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph72.i.i.preheader:                           ; preds = %.preheader.i.i754
  %i.gca = xor i32 %.0.lcssa.i.i758, -1
  %i.gcb = add i32 %i.gbu, %i.gca                 ; 2 uses
  %i.gcc = zext i32 %i.gcb to i64
  %i.gcd = add nuw nsw i64 %i.gcc, 1              ; 2 uses
  %min.iters.check3034 = icmp ult i32 %i.gcb, 7
  br i1 %min.iters.check3034, label %.lr.ph72.i.i.preheader4181, label %vector.memcheck3026

vector.memcheck3026:                              ; preds = %.lr.ph72.i.i.preheader
  %i.gce = sub i64 %.014.lcssa.i.i7573028, %.016.lcssa.i.i7563027
  %diff.check3029 = icmp ugt i64 %i.gce, -16
  %i.gcf = sub i64 %.018.lcssa.i.i7553030, %.016.lcssa.i.i7563027
  %diff.check3031 = icmp ugt i64 %i.gcf, -16
  %conflict.rdx3032 = or i1 %diff.check3029, %diff.check3031
  br i1 %conflict.rdx3032, label %.lr.ph72.i.i.preheader4181, label %vector.ph3035

vector.ph3035:                                    ; preds = %vector.memcheck3026
  %n.vec3036 = and i64 %i.gcd, 8589934584         ; 4 uses
  %i.gcg = trunc i64 %n.vec3036 to i32
  %i.gch = add i32 %.0.lcssa.i.i758, %i.gcg
  %i.gci = shl nuw nsw i64 %n.vec3036, 1          ; 3 uses
  %i.gcj = getelementptr i8, ptr %.014.lcssa.i.i757, i64 %i.gci
  %i.gck = getelementptr i8, ptr %.016.lcssa.i.i756, i64 %i.gci
  %i.gcl = getelementptr i8, ptr %.018.lcssa.i.i755, i64 %i.gci
  br label %vector.body3037

vector.body3037:                                  ; preds = %vector.body3037, %vector.ph3035
  %index3038 = phi i64 [ 0, %vector.ph3035 ], [ %index.next3044, %vector.body3037 ] ; 2 uses
  %i.gcm = shl i64 %index3038, 1                  ; 3 uses
  %next.gep3039 = getelementptr i8, ptr %.014.lcssa.i.i757, i64 %i.gcm
  %next.gep3040 = getelementptr i8, ptr %.016.lcssa.i.i756, i64 %i.gcm
  %next.gep3041 = getelementptr i8, ptr %.018.lcssa.i.i755, i64 %i.gcm
  %wide.load3042 = load <8 x i16>, ptr %next.gep3039, align 2, !tbaa !57
  %i.gcn = zext <8 x i16> %wide.load3042 to <8 x i32>
  %i.gco = shl nuw <8 x i32> %i.gcn, splat (i32 16)
  %i.gcp = bitcast <8 x i32> %i.gco to <8 x float>
  %wide.load3043 = load <8 x i16>, ptr %next.gep3041, align 2, !tbaa !57
  %i.gcq = zext <8 x i16> %wide.load3043 to <8 x i32>
  %i.gcr = shl nuw <8 x i32> %i.gcq, splat (i32 16)
  %i.gcs = bitcast <8 x i32> %i.gcr to <8 x float>
  %i.gct = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.gcp, <8 x float> %i.gcs)
  %i.gcu = bitcast <8 x float> %i.gct to <8 x i32>
  %i.gcv = lshr <8 x i32> %i.gcu, splat (i32 16)
  %i.gcw = trunc nuw <8 x i32> %i.gcv to <8 x i16>
  store <8 x i16> %i.gcw, ptr %next.gep3040, align 2, !tbaa !57
  %index.next3044 = add nuw i64 %index3038, 8     ; 2 uses
  %i.gcx = icmp eq i64 %index.next3044, %n.vec3036
  br i1 %i.gcx, label %middle.block3045, label %vector.body3037, !llvm.loop !561

middle.block3045:                                 ; preds = %vector.body3037
  %cmp.n3046 = icmp eq i64 %i.gcd, %n.vec3036
  br i1 %cmp.n3046, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i.preheader4181

.lr.ph72.i.i.preheader4181:                       ; preds = %vector.memcheck3026, %.lr.ph72.i.i.preheader, %middle.block3045
  %.171.i.i.ph = phi i32 [ %.0.lcssa.i.i758, %vector.memcheck3026 ], [ %.0.lcssa.i.i758, %.lr.ph72.i.i.preheader ], [ %i.gch, %middle.block3045 ] ; 4 uses
  %.11570.i.i.ph = phi ptr [ %.014.lcssa.i.i757, %vector.memcheck3026 ], [ %.014.lcssa.i.i757, %.lr.ph72.i.i.preheader ], [ %i.gcj, %middle.block3045 ] ; 3 uses
  %.11769.i.i.ph = phi ptr [ %.016.lcssa.i.i756, %vector.memcheck3026 ], [ %.016.lcssa.i.i756, %.lr.ph72.i.i.preheader ], [ %i.gck, %middle.block3045 ] ; 3 uses
  %.11968.i.i.ph = phi ptr [ %.018.lcssa.i.i755, %vector.memcheck3026 ], [ %.018.lcssa.i.i755, %.lr.ph72.i.i.preheader ], [ %i.gcl, %middle.block3045 ] ; 3 uses
  %i.gcy = sub i32 %i.gbu, %.171.i.i.ph
  %.neg4478 = add i32 %.171.i.i.ph, 1
  %xtraiter4380 = and i32 %i.gcy, 1
  %lcmp.mod4381.not = icmp eq i32 %xtraiter4380, 0
  br i1 %lcmp.mod4381.not, label %.lr.ph72.i.i.prol.loopexit, label %.lr.ph72.i.i.prol

.lr.ph72.i.i.prol:                                ; preds = %.lr.ph72.i.i.preheader4181
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

.lr.ph72.i.i.prol.loopexit:                       ; preds = %.lr.ph72.i.i.prol, %.lr.ph72.i.i.preheader4181
  %.171.i.i.unr = phi i32 [ %.171.i.i.ph, %.lr.ph72.i.i.preheader4181 ], [ %i.gdo, %.lr.ph72.i.i.prol ]
  %.11570.i.i.unr = phi ptr [ %.11570.i.i.ph, %.lr.ph72.i.i.preheader4181 ], [ %i.gcz, %.lr.ph72.i.i.prol ]
  %.11769.i.i.unr = phi ptr [ %.11769.i.i.ph, %.lr.ph72.i.i.preheader4181 ], [ %i.gdn, %.lr.ph72.i.i.prol ]
  %.11968.i.i.unr = phi ptr [ %.11968.i.i.ph, %.lr.ph72.i.i.preheader4181 ], [ %i.gde, %.lr.ph72.i.i.prol ]
  %i.gdp = icmp eq i32 %i.gbu, %.neg4478
  br i1 %i.gdp, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i

.lr.ph.i.i760:                                    ; preds = %bb.gx, %.lr.ph.i.i760
  %.064.i.i = phi i32 [ %i.ggk, %.lr.ph.i.i760 ], [ 0, %bb.gx ]
  %.01463.i.i = phi ptr [ %i.ggh, %.lr.ph.i.i760 ], [ %0, %bb.gx ] ; 2 uses
  %.01662.i.i = phi ptr [ %i.ggj, %.lr.ph.i.i760 ], [ %2, %bb.gx ] ; 2 uses
  %.01861.i.i = phi ptr [ %i.ggi, %.lr.ph.i.i760 ], [ %1, %bb.gx ] ; 2 uses
  %i.gdq = load i64, ptr %.01463.i.i, align 1, !tbaa !60
  %i.gdr = insertelement <2 x i64> poison, i64 %i.gdq, i64 0
  %i.gds = bitcast <2 x i64> %i.gdr to <8 x i16>
  %i.gdt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.gdu = bitcast <8 x i16> %i.gdt to <4 x float> ; 3 uses
  %i.gdv = load i64, ptr %.01861.i.i, align 1, !tbaa !60
  %i.gdw = insertelement <2 x i64> poison, i64 %i.gdv, i64 0
  %i.gdx = bitcast <2 x i64> %i.gdw to <8 x i16>
  %i.gdy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gdx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.gdz = bitcast <8 x i16> %i.gdy to <4 x float> ; 3 uses
  %i.gea = fcmp fast oeq <4 x float> %i.gdz, zeroinitializer ; 2 uses
  %i.geb = fcmp fast oeq <4 x float> %i.gdu, zeroinitializer ; 2 uses
  %.not60.i.i = or <4 x i1> %i.geb, %i.gea
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
  %i.geu = fmul fast <4 x float> %i.get, %i.gep
  %i.gev = fadd fast <4 x float> %i.geu, splat (float f0xBEAAAA53)
  %i.gew = fmul fast <4 x float> %i.gep, splat (float f0x3B3AC537)
  %i.gex = fadd fast <4 x float> %i.gew, splat (float f0x3D2EDD4E)
  %i.gey = fmul fast <4 x float> %i.gex, %i.gep
  %i.gez = fadd fast <4 x float> %i.gey, splat (float f0x3DD9ED24)
  %i.gfa = fmul fast <4 x float> %i.gez, %i.gep
  %i.gfb = fadd fast <4 x float> %i.gfa, splat (float f0x3E4CB974)
  %i.gfc = fmul fast <4 x float> %i.gfb, %i.gep
  %i.gfd = fadd fast <4 x float> %i.gfc, splat (float 1.000000e+00)
  %i.gfe = fmul fast <4 x float> %i.gev, %i.geo
  %i.gff = fadd fast <4 x float> %i.gfd, %i.gfe
  %i.gfg = fmul fast <4 x float> %i.gff, %i.gen
  %i.gfh = select <4 x i1> %i.gek, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.gfi = fadd fast <4 x float> %i.gfg, %i.gfh
  %i.gfj = bitcast <4 x float> %i.gfi to <4 x i32>
  %i.gfk = or <4 x i32> %i.gei, %i.gfj
  %i.gfl = bitcast <4 x i32> %i.gfk to <4 x float>
  %i.gfm = fadd fast <4 x float> %i.gef, %i.gfl
  %i.gfn = bitcast <8 x i16> %i.gdy to <4 x i32>
  %i.gfo = and <4 x i32> %i.gfn, splat (i32 -2147483648)
  %i.gfp = or disjoint <4 x i32> %i.gfo, splat (i32 1078530011)
  %i.gfq = bitcast <4 x i32> %i.gfp to <4 x float>
  %i.gfr = fcmp fast uge <4 x float> %i.gfq, zeroinitializer
end_hunk_4
begin_hunk_5_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %.116.i.i875.ph = phi i32 [ %.0.lcssa.i58.i873, %.lr.ph17.i.i874.preheader ], [ %i.jgy, %middle.block2727 ] ; 4 uses
  %.11515.i.i876.ph = phi ptr [ %.014.lcssa.i57.i872, %.lr.ph17.i.i874.preheader ], [ %i.jha, %middle.block2727 ] ; 3 uses
  %.11714.i.i877.ph = phi ptr [ %.016.lcssa.i56.i871, %.lr.ph17.i.i874.preheader ], [ %i.jhb, %middle.block2727 ] ; 3 uses
  %i.jhl = sub i32 %i.ivj, %.116.i.i875.ph
  %.neg4465 = add i32 %.116.i.i875.ph, 1
  %xtraiter4354 = and i32 %i.jhl, 1
  %lcmp.mod4355.not = icmp eq i32 %xtraiter4354, 0
  br i1 %lcmp.mod4355.not, label %.lr.ph17.i.i874.prol.loopexit, label %.lr.ph17.i.i874.prol

.lr.ph17.i.i874.prol:                             ; preds = %.lr.ph17.i.i874.preheader4252
  %i.jhm = getelementptr inbounds nuw i8, ptr %.11515.i.i876.ph, i64 2
  %i.jhn = load i16, ptr %.11515.i.i876.ph, align 2, !tbaa !57
  %i.jho = zext i16 %i.jhn to i32
  %i.jhp = shl nuw i32 %i.jho, 16
  %i.jhq = bitcast i32 %i.jhp to float
  %i.jhr = frem fast float %i.jgm, %i.jhq
  %i.jhs = bitcast float %i.jhr to i32
  %i.jht = lshr i32 %i.jhs, 16
  %i.jhu = trunc nuw i32 %i.jht to i16
  %i.jhv = getelementptr inbounds nuw i8, ptr %.11714.i.i877.ph, i64 2
  store i16 %i.jhu, ptr %.11714.i.i877.ph, align 2, !tbaa !57
  %i.jhw = add nuw nsw i32 %.116.i.i875.ph, 1
  br label %.lr.ph17.i.i874.prol.loopexit

.lr.ph17.i.i874.prol.loopexit:                    ; preds = %.lr.ph17.i.i874.prol, %.lr.ph17.i.i874.preheader4252
  %.116.i.i875.unr = phi i32 [ %.116.i.i875.ph, %.lr.ph17.i.i874.preheader4252 ], [ %i.jhw, %.lr.ph17.i.i874.prol ]
  %.11515.i.i876.unr = phi ptr [ %.11515.i.i876.ph, %.lr.ph17.i.i874.preheader4252 ], [ %i.jhm, %.lr.ph17.i.i874.prol ]
  %.11714.i.i877.unr = phi ptr [ %.11714.i.i877.ph, %.lr.ph17.i.i874.preheader4252 ], [ %i.jhv, %.lr.ph17.i.i874.prol ]
  %i.jhx = icmp eq i32 %i.ivj, %.neg4465
  br i1 %i.jhx, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph17.i.i874

.lr.ph.i60.i879:                                  ; preds = %bb.ka, %.lr.ph.i60.i879
  %.011.i.i880 = phi i32 [ %i.jiq, %.lr.ph.i60.i879 ], [ 0, %bb.ka ]
  %.01410.i.i881 = phi ptr [ %i.jio, %.lr.ph.i60.i879 ], [ %0, %bb.ka ] ; 2 uses
  %.0169.i.i882 = phi ptr [ %i.jip, %.lr.ph.i60.i879 ], [ %2, %bb.ka ] ; 2 uses
  %i.jhy = load i64, ptr %.01410.i.i881, align 1, !tbaa !60
  %i.jhz = insertelement <2 x i64> poison, i64 %i.jhy, i64 0
  %i.jia = bitcast <2 x i64> %i.jhz to <8 x i16>
  %i.jib = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jia, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jic = bitcast <8 x i16> %i.jib to <4 x float> ; 2 uses
  %i.jid = fdiv fast <4 x float> %i.jgo, %i.jic
  %i.jie = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jid)
  %i.jif = sitofp fast <4 x i32> %i.jie to <4 x float>
  %i.jig = fmul fast <4 x float> %i.jic, %i.jif
  %i.jih = fsub fast <4 x float> %i.jgo, %i.jig
  %i.jii = bitcast <4 x float> %i.jih to <8 x i16>
  %i.jij = shufflevector <8 x i16> %i.jii, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jik = bitcast <8 x i16> %i.jij to <4 x float>
  %i.jil = shufflevector <4 x float> %i.jik, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jim = bitcast <4 x float> %i.jil to <2 x i64>
  %i.jin = extractelement <2 x i64> %i.jim, i64 0
  store i64 %i.jin, ptr %.0169.i.i882, align 1, !tbaa !60
  %i.jio = getelementptr inbounds nuw i8, ptr %.01410.i.i881, i64 8 ; 2 uses
  %i.jip = getelementptr inbounds nuw i8, ptr %.0169.i.i882, i64 8 ; 2 uses
  %i.jiq = add nuw nsw i32 %.011.i.i880, 4        ; 2 uses
  %i.jir = or disjoint i32 %i.jiq, 3
  %i.jis = icmp slt i32 %i.jir, %i.ivj
  br i1 %i.jis, label %.lr.ph.i60.i879, label %.preheader.loopexit.i61.i883, !llvm.loop !614

.lr.ph17.i.i874:                                  ; preds = %.lr.ph17.i.i874.prol.loopexit, %.lr.ph17.i.i874
  %.116.i.i875 = phi i32 [ %i.jjn, %.lr.ph17.i.i874 ], [ %.116.i.i875.unr, %.lr.ph17.i.i874.prol.loopexit ]
  %.11515.i.i876 = phi ptr [ %i.jjd, %.lr.ph17.i.i874 ], [ %.11515.i.i876.unr, %.lr.ph17.i.i874.prol.loopexit ] ; 3 uses
  %.11714.i.i877 = phi ptr [ %i.jjm, %.lr.ph17.i.i874 ], [ %.11714.i.i877.unr, %.lr.ph17.i.i874.prol.loopexit ] ; 3 uses
  %i.jit = getelementptr inbounds nuw i8, ptr %.11515.i.i876, i64 2
  %i.jiu = load i16, ptr %.11515.i.i876, align 2, !tbaa !57
  %i.jiv = zext i16 %i.jiu to i32
  %i.jiw = shl nuw i32 %i.jiv, 16
  %i.jix = bitcast i32 %i.jiw to float
  %i.jiy = frem fast float %i.jgm, %i.jix
  %i.jiz = bitcast float %i.jiy to i32
  %i.jja = lshr i32 %i.jiz, 16
  %i.jjb = trunc nuw i32 %i.jja to i16
  %i.jjc = getelementptr inbounds nuw i8, ptr %.11714.i.i877, i64 2
  store i16 %i.jjb, ptr %.11714.i.i877, align 2, !tbaa !57
  %i.jjd = getelementptr inbounds nuw i8, ptr %.11515.i.i876, i64 4
  %i.jje = load i16, ptr %i.jit, align 2, !tbaa !57
  %i.jjf = zext i16 %i.jje to i32
  %i.jjg = shl nuw i32 %i.jjf, 16
  %i.jjh = bitcast i32 %i.jjg to float
  %i.jji = frem fast float %i.jgm, %i.jjh
  %i.jjj = bitcast float %i.jji to i32
  %i.jjk = lshr i32 %i.jjj, 16
  %i.jjl = trunc nuw i32 %i.jjk to i16
  %i.jjm = getelementptr inbounds nuw i8, ptr %.11714.i.i877, i64 4
  store i16 %i.jjl, ptr %i.jjc, align 2, !tbaa !57
  %i.jjn = add nuw nsw i32 %.116.i.i875, 2        ; 2 uses
  %exitcond.not.i59.i878.1 = icmp eq i32 %i.jjn, %i.ivj
  br i1 %exitcond.not.i59.i878.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph17.i.i874, !llvm.loop !615

bb.kb:                                            ; preds = %bb.jz
  %i.jjo = icmp eq i32 %3, 1
  %i.jjp = icmp eq i32 %.sroa.speculated.i862, 4
  %or.cond.i863 = and i1 %i.jjo, %i.jjp
  br i1 %or.cond.i863, label %bb.kc, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kc:                                            ; preds = %bb.kb
  %i.jjq = load i64, ptr %0, align 1, !tbaa !60
  %i.jjr = insertelement <2 x i64> poison, i64 %i.jjq, i64 0
  %i.jjs = bitcast <2 x i64> %i.jjr to <8 x i16>
  %i.jjt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jjs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jju = bitcast <8 x i16> %i.jjt to <4 x float> ; 2 uses
  %i.jjv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.jju
  br label %.lr.ph.i63.i864

.lr.ph.i63.i864:                                  ; preds = %.lr.ph.i63.i864, %bb.kc
  %.019.i.i865 = phi i32 [ %i.jkp, %.lr.ph.i63.i864 ], [ 0, %bb.kc ]
  %.0818.i.i866 = phi ptr [ %i.jkn, %.lr.ph.i63.i864 ], [ %1, %bb.kc ] ; 2 uses
  %.0917.i.i867 = phi ptr [ %i.jko, %.lr.ph.i63.i864 ], [ %2, %bb.kc ] ; 2 uses
  %i.jjw = load i16, ptr %.0818.i.i866, align 2, !tbaa !57
  %i.jjx = zext i16 %i.jjw to i32
  %i.jjy = shl nuw i32 %i.jjx, 16
  %i.jjz = insertelement <4 x i32> poison, i32 %i.jjy, i64 0
  %i.jka = bitcast <4 x i32> %i.jjz to <4 x float>
  %i.jkb = shufflevector <4 x float> %i.jka, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jkc = fmul fast <4 x float> %i.jkb, %i.jjv
  %i.jkd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jkc)
  %i.jke = sitofp fast <4 x i32> %i.jkd to <4 x float>
  %i.jkf = fmul fast <4 x float> %i.jke, %i.jju
  %i.jkg = fsub fast <4 x float> %i.jkb, %i.jkf
  %i.jkh = bitcast <4 x float> %i.jkg to <8 x i16>
  %i.jki = shufflevector <8 x i16> %i.jkh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jkj = bitcast <8 x i16> %i.jki to <4 x float>
  %i.jkk = shufflevector <4 x float> %i.jkj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jkl = bitcast <4 x float> %i.jkk to <2 x i64>
  %i.jkm = extractelement <2 x i64> %i.jkl, i64 0
  store i64 %i.jkm, ptr %.0917.i.i867, align 1, !tbaa !60
  %i.jkn = getelementptr inbounds nuw i8, ptr %.0818.i.i866, i64 2
  %i.jko = getelementptr inbounds nuw i8, ptr %.0917.i.i867, i64 8
  %i.jkp = add nuw nsw i32 %.019.i.i865, 1        ; 2 uses
  %exitcond.not.i64.i868 = icmp eq i32 %i.jkp, %.sroa.speculated75.i861
  br i1 %exitcond.not.i64.i868, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i63.i864, !llvm.loop !616

bb.kd:                                            ; preds = %bb.a
  %.sroa.speculated85.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i937 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.jkq = mul nsw i32 %.sroa.speculated.i937, %.sroa.speculated85.i ; 20 uses
  %i.jkr = icmp eq i32 %5, %6
  br i1 %i.jkr, label %bb.ke, label %bb.kq

bb.ke:                                            ; preds = %bb.kd
  %i.jks = icmp eq i32 %3, %4
  br i1 %i.jks, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.jkt = icmp sgt i32 %i.jkq, 3
  br i1 %i.jkt, label %.lr.ph.i.i960, label %.preheader.i.i953

.preheader.loopexit.i.i962:                       ; preds = %.lr.ph.i.i960
  %i.jku = and i32 %i.jkq, 2147483644
  br label %.preheader.i.i953

.preheader.i.i953:                                ; preds = %.preheader.loopexit.i.i962, %bb.kf
  %.018.lcssa.i.i954 = phi ptr [ %1, %bb.kf ], [ %i.jog, %.preheader.loopexit.i.i962 ]
  %.016.lcssa.i.i955 = phi ptr [ %2, %bb.kf ], [ %i.joh, %.preheader.loopexit.i.i962 ]
  %.014.lcssa.i.i956 = phi ptr [ %0, %bb.kf ], [ %i.jof, %.preheader.loopexit.i.i962 ]
  %.0.lcssa.i.i957 = phi i32 [ 0, %bb.kf ], [ %i.jku, %.preheader.loopexit.i.i962 ] ; 2 uses
  %i.jkv = icmp slt i32 %.0.lcssa.i.i957, %i.jkq
  br i1 %i.jkv, label %.lr.ph102.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i.i960:                                    ; preds = %bb.kf, %.lr.ph.i.i960
  %.094.i.i = phi i32 [ %i.joi, %.lr.ph.i.i960 ], [ 0, %bb.kf ]
  %.01493.i.i = phi ptr [ %i.jof, %.lr.ph.i.i960 ], [ %0, %bb.kf ] ; 2 uses
  %.01692.i.i = phi ptr [ %i.joh, %.lr.ph.i.i960 ], [ %2, %bb.kf ] ; 2 uses
  %.01891.i.i = phi ptr [ %i.jog, %.lr.ph.i.i960 ], [ %1, %bb.kf ] ; 2 uses
  %i.jkw = load i64, ptr %.01493.i.i, align 1, !tbaa !60
  %i.jkx = insertelement <2 x i64> poison, i64 %i.jkw, i64 0
  %i.jky = bitcast <2 x i64> %i.jkx to <8 x i16>
  %i.jkz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jky, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jla = bitcast <8 x i16> %i.jkz to <4 x float> ; 2 uses
  %i.jlb = load i64, ptr %.01891.i.i, align 1, !tbaa !60
  %i.jlc = insertelement <2 x i64> poison, i64 %i.jlb, i64 0
  %i.jld = bitcast <2 x i64> %i.jlc to <8 x i16>
  %i.jle = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jld, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jlf = bitcast <8 x i16> %i.jle to <4 x float> ; 2 uses
  %i.jlg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jla, <4 x float> nofpclass(nan inf) %i.jlf) ; 2 uses
  %i.jlh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jla, <4 x float> nofpclass(nan inf) %i.jlf)
  %i.jli = fsub fast <4 x float> %i.jlh, %i.jlg
  %i.jlj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jli, <4 x float> splat (float f0x42B0C0A5))
  %i.jlk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jlj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jll = fmul fast <4 x float> %i.jlk, splat (float f0x3FB8AA3B)
  %i.jlm = fadd fast <4 x float> %i.jll, splat (float 5.000000e-01) ; 2 uses
  %i.jln = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jlm)
  %i.jlo = sitofp fast <4 x i32> %i.jln to <4 x float> ; 2 uses
  %i.jlp = fcmp fast olt <4 x float> %i.jlm, %i.jlo
  %i.jlq = select <4 x i1> %i.jlp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jlr = fsub fast <4 x float> %i.jlo, %i.jlq   ; 2 uses
  %i.jls = fmul fast <4 x float> %i.jlr, splat (float f0x3F317218)
  %i.jlt = fsub fast <4 x float> %i.jlk, %i.jls   ; 8 uses
  %i.jlu = fmul fast <4 x float> %i.jlt, %i.jlt
  %i.jlv = fmul fast <4 x float> %i.jlt, splat (float f0x39506967)
  %i.jlw = fadd fast <4 x float> %i.jlv, splat (float f0x3AB743CE)
  %i.jlx = fmul fast <4 x float> %i.jlw, %i.jlt
  %i.jly = fadd fast <4 x float> %i.jlx, splat (float f0x3C088908)
  %i.jlz = fmul fast <4 x float> %i.jly, %i.jlt
  %i.jma = fadd fast <4 x float> %i.jlz, splat (float f0x3D2AA9C1)
  %i.jmb = fmul fast <4 x float> %i.jma, %i.jlt
  %i.jmc = fadd fast <4 x float> %i.jmb, splat (float f0x3E2AAAAA)
  %i.jmd = fmul fast <4 x float> %i.jmc, %i.jlt
  %i.jme = fadd fast <4 x float> %i.jmd, splat (float 5.000000e-01)
  %i.jmf = fmul fast <4 x float> %i.jlu, %i.jme
  %i.jmg = fadd fast <4 x float> %i.jlt, %i.jmf
  %i.jmh = fadd fast <4 x float> %i.jmg, splat (float 1.000000e+00)
  %i.jmi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jlr)
  %i.jmj = shl <4 x i32> %i.jmi, splat (i32 23)
  %i.jmk = add <4 x i32> %i.jmj, splat (i32 1065353216)
  %i.jml = bitcast <4 x i32> %i.jmk to <4 x float>
  %i.jmm = fmul fast <4 x float> %i.jmh, %i.jml
  %i.jmn = fadd fast <4 x float> %i.jmm, splat (float 1.000000e+00) ; 2 uses
  %i.jmo = fcmp fast ole <4 x float> %i.jmn, zeroinitializer
  %i.jmp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jmn, <4 x float> splat (float f0x00800000))
  %i.jmq = bitcast <4 x float> %i.jmp to <4 x i32> ; 2 uses
  %i.jmr = lshr <4 x i32> %i.jmq, splat (i32 23)
  %i.jms = and <4 x i32> %i.jmq, splat (i32 -2139095041)
  %i.jmt = or disjoint <4 x i32> %i.jms, splat (i32 1056964608)
  %i.jmu = bitcast <4 x i32> %i.jmt to <4 x float> ; 3 uses
  %i.jmv = add nsw <4 x i32> %i.jmr, splat (i32 -127)
  %i.jmw = sitofp fast <4 x i32> %i.jmv to <4 x float> ; 2 uses
  %i.jmx = fadd fast <4 x float> %i.jmw, splat (float 1.000000e+00)
  %i.jmy = fcmp fast olt <4 x float> %i.jmu, splat (float f0x3F3504F3) ; 2 uses
  %i.jmz = select <4 x i1> %i.jmy, <4 x float> %i.jmu, <4 x float> zeroinitializer
  %i.jna = fadd fast <4 x float> %i.jmu, splat (float -1.000000e+00)
  %i.jnb = select fast <4 x i1> %i.jmy, <4 x float> %i.jmw, <4 x float> %i.jmx
  %i.jnc = fadd fast <4 x float> %i.jna, %i.jmz   ; 12 uses
  %i.jnd = fmul fast <4 x float> %i.jnc, %i.jnc
  %i.jne = fmul fast <4 x float> %i.jnc, splat (float f0x3D9021BB)
  %i.jnf = fadd fast <4 x float> %i.jne, splat (float f0xBDEBD1B8)
  %i.jng = fmul fast <4 x float> %i.jnf, %i.jnc
  %i.jnh = fadd fast <4 x float> %i.jng, splat (float f0x3DEF251A)
  %i.jni = fmul fast <4 x float> %i.jnh, %i.jnc
  %i.jnj = fadd fast <4 x float> %i.jni, splat (float f0xBDFE5D4F)
  %i.jnk = fmul fast <4 x float> %i.jnj, %i.jnc
  %i.jnl = fadd fast <4 x float> %i.jnk, splat (float f0x3E11E9BF)
  %i.jnm = fmul fast <4 x float> %i.jnl, %i.jnc
  %i.jnn = fadd fast <4 x float> %i.jnm, splat (float f0xBE2AAE50)
  %i.jno = fmul fast <4 x float> %i.jnn, %i.jnc
  %i.jnp = fadd fast <4 x float> %i.jno, splat (float f0x3E4CCEAC)
  %i.jnq = fmul fast <4 x float> %i.jnp, %i.jnc
  %i.jnr = fadd fast <4 x float> %i.jnq, splat (float f0xBE7FFFFC)
  %i.jns = fmul fast <4 x float> %i.jnr, %i.jnc
  %i.jnt = fadd fast <4 x float> %i.jns, splat (float f0x3EAAAAAA)
  %i.jnu = fmul fast <4 x float> %i.jnt, %i.jnc
  %reass.mul.i.i961 = fmul fast <4 x float> %i.jnb, splat (float f0x3F317218)
  %reass.add89.i.i = fadd fast <4 x float> %i.jnu, splat (float -5.000000e-01)
  %reass.mul90.i.i = fmul fast <4 x float> %i.jnd, %reass.add89.i.i
  %i.jnv = fadd fast <4 x float> %reass.mul.i.i961, %i.jnc
  %i.jnw = fadd fast <4 x float> %reass.mul90.i.i, %i.jnv
  %i.jnx = select <4 x i1> %i.jmo, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.jnw
  %i.jny = fadd fast <4 x float> %i.jnx, %i.jlg
  %i.jnz = bitcast <4 x float> %i.jny to <8 x i16>
  %i.joa = shufflevector <8 x i16> %i.jnz, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.job = bitcast <8 x i16> %i.joa to <4 x float>
  %i.joc = shufflevector <4 x float> %i.job, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jod = bitcast <4 x float> %i.joc to <2 x i64>
  %i.joe = extractelement <2 x i64> %i.jod, i64 0
  store i64 %i.joe, ptr %.01692.i.i, align 1, !tbaa !60
  %i.jof = getelementptr inbounds nuw i8, ptr %.01493.i.i, i64 8 ; 2 uses
  %i.jog = getelementptr inbounds nuw i8, ptr %.01891.i.i, i64 8 ; 2 uses
  %i.joh = getelementptr inbounds nuw i8, ptr %.01692.i.i, i64 8 ; 2 uses
  %i.joi = add nuw nsw i32 %.094.i.i, 4           ; 2 uses
  %i.joj = or disjoint i32 %i.joi, 3
  %i.jok = icmp slt i32 %i.joj, %i.jkq
  br i1 %i.jok, label %.lr.ph.i.i960, label %.preheader.loopexit.i.i962, !llvm.loop !617

.lr.ph102.i.i:                                    ; preds = %.preheader.i.i953, %.lr.ph102.i.i
  %.1101.i.i = phi i32 [ %i.jpd, %.lr.ph102.i.i ], [ %.0.lcssa.i.i957, %.preheader.i.i953 ]
  %.115100.i.i = phi ptr [ %i.jol, %.lr.ph102.i.i ], [ %.014.lcssa.i.i956, %.preheader.i.i953 ] ; 2 uses
  %.11799.i.i = phi ptr [ %i.jpc, %.lr.ph102.i.i ], [ %.016.lcssa.i.i955, %.preheader.i.i953 ] ; 2 uses
  %.11998.i.i = phi ptr [ %i.joq, %.lr.ph102.i.i ], [ %.018.lcssa.i.i954, %.preheader.i.i953 ] ; 2 uses
  %i.jol = getelementptr inbounds nuw i8, ptr %.115100.i.i, i64 2
  %i.jom = load i16, ptr %.115100.i.i, align 2, !tbaa !57
  %i.jon = zext i16 %i.jom to i32
  %i.joo = shl nuw i32 %i.jon, 16
  %i.jop = bitcast i32 %i.joo to float            ; 2 uses
  %i.joq = getelementptr inbounds nuw i8, ptr %.11998.i.i, i64 2
  %i.jor = load i16, ptr %.11998.i.i, align 2, !tbaa !57
  %i.jos = zext i16 %i.jor to i32
  %i.jot = shl nuw i32 %i.jos, 16
  %i.jou = bitcast i32 %i.jot to float            ; 2 uses
  %.sroa.speculated24.i.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.jop, float %i.jou) ; 2 uses
  %.sroa.speculated.i.i958 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.jou, float %i.jop)
  %i.jov = fsub fast float %.sroa.speculated.i.i958, %.sroa.speculated24.i.i
  %i.jow = tail call fast float @llvm.exp.f32(float %i.jov)
  %i.jox = tail call fast nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.jow) #21
  %i.joy = fadd fast float %.sroa.speculated24.i.i, %i.jox
  %i.joz = bitcast float %i.joy to i32
  %i.jpa = lshr i32 %i.joz, 16
  %i.jpb = trunc nuw i32 %i.jpa to i16
  %i.jpc = getelementptr inbounds nuw i8, ptr %.11799.i.i, i64 2
  store i16 %i.jpb, ptr %.11799.i.i, align 2, !tbaa !57
  %i.jpd = add nuw nsw i32 %.1101.i.i, 1          ; 2 uses
  %exitcond.not.i.i959 = icmp eq i32 %i.jpd, %i.jkq
  br i1 %exitcond.not.i.i959, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph102.i.i, !llvm.loop !618

bb.kg:                                            ; preds = %bb.ke
  %i.jpe = icmp eq i32 %4, 1
  br i1 %i.jpe, label %bb.kh, label %bb.kl

bb.kh:                                            ; preds = %bb.kg
  %i.jpf = load i16, ptr %1, align 2, !tbaa !57
  %i.jpg = zext i16 %i.jpf to i32
  %i.jph = shl nuw i32 %i.jpg, 16
  %i.jpi = bitcast i32 %i.jph to float            ; 3 uses
  %i.jpj = icmp eq i32 %.sroa.speculated.i937, 4
  br i1 %i.jpj, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.jpk = load i64, ptr %1, align 2, !tbaa !60
  %i.jpl = insertelement <2 x i64> poison, i64 %i.jpk, i64 0
  %i.jpm = bitcast <2 x i64> %i.jpl to <8 x i16>
  %i.jpn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jpm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jpo = bitcast <8 x i16> %i.jpn to <4 x float>
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kh
  %i.jpp = insertelement <4 x float> poison, float %i.jpi, i64 0
  %i.jpq = shufflevector <4 x float> %i.jpp, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %i.jpr = phi fast <4 x float> [ %i.jpo, %bb.ki ], [ %i.jpq, %bb.kj ] ; 2 uses
  %i.jps = icmp sgt i32 %i.jkq, 3
  br i1 %i.jps, label %.lr.ph.i38.i952, label %.preheader.i34.i946

.preheader.loopexit.i40.i:                        ; preds = %.lr.ph.i38.i952
  %i.jpt = and i32 %i.jkq, 2147483644
  br label %.preheader.i34.i946

.preheader.i34.i946:                              ; preds = %.preheader.loopexit.i40.i, %bb.kk
  %.017.lcssa.i.i947 = phi ptr [ %2, %bb.kk ], [ %i.jta, %.preheader.loopexit.i40.i ]
  %.015.lcssa.i.i948 = phi ptr [ %0, %bb.kk ], [ %i.jsz, %.preheader.loopexit.i40.i ]
  %.0.lcssa.i35.i949 = phi i32 [ 0, %bb.kk ], [ %i.jpt, %.preheader.loopexit.i40.i ] ; 2 uses
  %i.jpu = icmp slt i32 %.0.lcssa.i35.i949, %i.jkq
  br i1 %i.jpu, label %.lr.ph98.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i38.i952:                                  ; preds = %bb.kk, %.lr.ph.i38.i952
  %.092.i.i = phi i32 [ %i.jtb, %.lr.ph.i38.i952 ], [ 0, %bb.kk ]
  %.01591.i.i = phi ptr [ %i.jsz, %.lr.ph.i38.i952 ], [ %0, %bb.kk ] ; 2 uses
  %.01790.i.i = phi ptr [ %i.jta, %.lr.ph.i38.i952 ], [ %2, %bb.kk ] ; 2 uses
  %i.jpv = load i64, ptr %.01591.i.i, align 1, !tbaa !60
  %i.jpw = insertelement <2 x i64> poison, i64 %i.jpv, i64 0
  %i.jpx = bitcast <2 x i64> %i.jpw to <8 x i16>
  %i.jpy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jpx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jpz = bitcast <8 x i16> %i.jpy to <4 x float> ; 2 uses
  %i.jqa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jpz, <4 x float> nofpclass(nan inf) %i.jpr) ; 2 uses
  %i.jqb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jpz, <4 x float> nofpclass(nan inf) %i.jpr)
  %i.jqc = fsub fast <4 x float> %i.jqb, %i.jqa
  %i.jqd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jqc, <4 x float> splat (float f0x42B0C0A5))
  %i.jqe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jqd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jqf = fmul fast <4 x float> %i.jqe, splat (float f0x3FB8AA3B)
  %i.jqg = fadd fast <4 x float> %i.jqf, splat (float 5.000000e-01) ; 2 uses
  %i.jqh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jqg)
  %i.jqi = sitofp fast <4 x i32> %i.jqh to <4 x float> ; 2 uses
  %i.jqj = fcmp fast olt <4 x float> %i.jqg, %i.jqi
  %i.jqk = select <4 x i1> %i.jqj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jql = fsub fast <4 x float> %i.jqi, %i.jqk   ; 2 uses
  %i.jqm = fmul fast <4 x float> %i.jql, splat (float f0x3F317218)
  %i.jqn = fsub fast <4 x float> %i.jqe, %i.jqm   ; 8 uses
  %i.jqo = fmul fast <4 x float> %i.jqn, %i.jqn
  %i.jqp = fmul fast <4 x float> %i.jqn, splat (float f0x39506967)
  %i.jqq = fadd fast <4 x float> %i.jqp, splat (float f0x3AB743CE)
  %i.jqr = fmul fast <4 x float> %i.jqq, %i.jqn
  %i.jqs = fadd fast <4 x float> %i.jqr, splat (float f0x3C088908)
  %i.jqt = fmul fast <4 x float> %i.jqs, %i.jqn
  %i.jqu = fadd fast <4 x float> %i.jqt, splat (float f0x3D2AA9C1)
  %i.jqv = fmul fast <4 x float> %i.jqu, %i.jqn
  %i.jqw = fadd fast <4 x float> %i.jqv, splat (float f0x3E2AAAAA)
  %i.jqx = fmul fast <4 x float> %i.jqw, %i.jqn
  %i.jqy = fadd fast <4 x float> %i.jqx, splat (float 5.000000e-01)
  %i.jqz = fmul fast <4 x float> %i.jqo, %i.jqy
  %i.jra = fadd fast <4 x float> %i.jqn, %i.jqz
  %i.jrb = fadd fast <4 x float> %i.jra, splat (float 1.000000e+00)
  %i.jrc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jql)
  %i.jrd = shl <4 x i32> %i.jrc, splat (i32 23)
  %i.jre = add <4 x i32> %i.jrd, splat (i32 1065353216)
  %i.jrf = bitcast <4 x i32> %i.jre to <4 x float>
  %i.jrg = fmul fast <4 x float> %i.jrb, %i.jrf
  %i.jrh = fadd fast <4 x float> %i.jrg, splat (float 1.000000e+00) ; 2 uses
  %i.jri = fcmp fast ole <4 x float> %i.jrh, zeroinitializer
  %i.jrj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jrh, <4 x float> splat (float f0x00800000))
  %i.jrk = bitcast <4 x float> %i.jrj to <4 x i32> ; 2 uses
  %i.jrl = lshr <4 x i32> %i.jrk, splat (i32 23)
  %i.jrm = and <4 x i32> %i.jrk, splat (i32 -2139095041)
  %i.jrn = or disjoint <4 x i32> %i.jrm, splat (i32 1056964608)
  %i.jro = bitcast <4 x i32> %i.jrn to <4 x float> ; 3 uses
  %i.jrp = add nsw <4 x i32> %i.jrl, splat (i32 -127)
  %i.jrq = sitofp fast <4 x i32> %i.jrp to <4 x float> ; 2 uses
  %i.jrr = fadd fast <4 x float> %i.jrq, splat (float 1.000000e+00)
  %i.jrs = fcmp fast olt <4 x float> %i.jro, splat (float f0x3F3504F3) ; 2 uses
  %i.jrt = select <4 x i1> %i.jrs, <4 x float> %i.jro, <4 x float> zeroinitializer
  %i.jru = fadd fast <4 x float> %i.jro, splat (float -1.000000e+00)
  %i.jrv = select fast <4 x i1> %i.jrs, <4 x float> %i.jrq, <4 x float> %i.jrr
  %i.jrw = fadd fast <4 x float> %i.jru, %i.jrt   ; 12 uses
  %i.jrx = fmul fast <4 x float> %i.jrw, %i.jrw
  %i.jry = fmul fast <4 x float> %i.jrw, splat (float f0x3D9021BB)
  %i.jrz = fadd fast <4 x float> %i.jry, splat (float f0xBDEBD1B8)
  %i.jsa = fmul fast <4 x float> %i.jrz, %i.jrw
  %i.jsb = fadd fast <4 x float> %i.jsa, splat (float f0x3DEF251A)
  %i.jsc = fmul fast <4 x float> %i.jsb, %i.jrw
  %i.jsd = fadd fast <4 x float> %i.jsc, splat (float f0xBDFE5D4F)
  %i.jse = fmul fast <4 x float> %i.jsd, %i.jrw
  %i.jsf = fadd fast <4 x float> %i.jse, splat (float f0x3E11E9BF)
  %i.jsg = fmul fast <4 x float> %i.jsf, %i.jrw
  %i.jsh = fadd fast <4 x float> %i.jsg, splat (float f0xBE2AAE50)
  %i.jsi = fmul fast <4 x float> %i.jsh, %i.jrw
  %i.jsj = fadd fast <4 x float> %i.jsi, splat (float f0x3E4CCEAC)
  %i.jsk = fmul fast <4 x float> %i.jsj, %i.jrw
  %i.jsl = fadd fast <4 x float> %i.jsk, splat (float f0xBE7FFFFC)
  %i.jsm = fmul fast <4 x float> %i.jsl, %i.jrw
  %i.jsn = fadd fast <4 x float> %i.jsm, splat (float f0x3EAAAAAA)
  %i.jso = fmul fast <4 x float> %i.jsn, %i.jrw
  %reass.mul.i39.i = fmul fast <4 x float> %i.jrv, splat (float f0x3F317218)
  %reass.add88.i.i = fadd fast <4 x float> %i.jso, splat (float -5.000000e-01)
  %reass.mul89.i.i = fmul fast <4 x float> %i.jrx, %reass.add88.i.i
  %i.jsp = fadd fast <4 x float> %reass.mul.i39.i, %i.jrw
  %i.jsq = fadd fast <4 x float> %reass.mul89.i.i, %i.jsp
  %i.jsr = select <4 x i1> %i.jri, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.jsq
  %i.jss = fadd fast <4 x float> %i.jsr, %i.jqa
  %i.jst = bitcast <4 x float> %i.jss to <8 x i16>
  %i.jsu = shufflevector <8 x i16> %i.jst, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jsv = bitcast <8 x i16> %i.jsu to <4 x float>
  %i.jsw = shufflevector <4 x float> %i.jsv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jsx = bitcast <4 x float> %i.jsw to <2 x i64>
  %i.jsy = extractelement <2 x i64> %i.jsx, i64 0
  store i64 %i.jsy, ptr %.01790.i.i, align 1, !tbaa !60
  %i.jsz = getelementptr inbounds nuw i8, ptr %.01591.i.i, i64 8 ; 2 uses
  %i.jta = getelementptr inbounds nuw i8, ptr %.01790.i.i, i64 8 ; 2 uses
  %i.jtb = add nuw nsw i32 %.092.i.i, 4           ; 2 uses
  %i.jtc = or disjoint i32 %i.jtb, 3
  %i.jtd = icmp slt i32 %i.jtc, %i.jkq
  br i1 %i.jtd, label %.lr.ph.i38.i952, label %.preheader.loopexit.i40.i, !llvm.loop !619

.lr.ph98.i.i:                                     ; preds = %.preheader.i34.i946, %.lr.ph98.i.i
  %.197.i.i = phi i32 [ %i.jtr, %.lr.ph98.i.i ], [ %.0.lcssa.i35.i949, %.preheader.i34.i946 ]
  %.11696.i.i = phi ptr [ %i.jte, %.lr.ph98.i.i ], [ %.015.lcssa.i.i948, %.preheader.i34.i946 ] ; 2 uses
  %.11895.i.i = phi ptr [ %i.jtq, %.lr.ph98.i.i ], [ %.017.lcssa.i.i947, %.preheader.i34.i946 ] ; 2 uses
  %i.jte = getelementptr inbounds nuw i8, ptr %.11696.i.i, i64 2
  %i.jtf = load i16, ptr %.11696.i.i, align 2, !tbaa !57
  %i.jtg = zext i16 %i.jtf to i32
  %i.jth = shl nuw i32 %i.jtg, 16
  %i.jti = bitcast i32 %i.jth to float            ; 2 uses
  %.sroa.speculated23.i.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.jti, float %i.jpi) ; 2 uses
  %.sroa.speculated.i36.i950 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.jpi, float %i.jti)
  %i.jtj = fsub fast float %.sroa.speculated.i36.i950, %.sroa.speculated23.i.i
  %i.jtk = tail call fast float @llvm.exp.f32(float %i.jtj)
  %i.jtl = tail call fast nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.jtk) #21
  %i.jtm = fadd fast float %.sroa.speculated23.i.i, %i.jtl
  %i.jtn = bitcast float %i.jtm to i32
  %i.jto = lshr i32 %i.jtn, 16
  %i.jtp = trunc nuw i32 %i.jto to i16
  %i.jtq = getelementptr inbounds nuw i8, ptr %.11895.i.i, i64 2
  store i16 %i.jtp, ptr %.11895.i.i, align 2, !tbaa !57
  %i.jtr = add nuw nsw i32 %.197.i.i, 1           ; 2 uses
  %exitcond.not.i37.i951 = icmp eq i32 %i.jtr, %i.jkq
  br i1 %exitcond.not.i37.i951, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph98.i.i, !llvm.loop !620

bb.kl:                                            ; preds = %bb.kg
  %i.jts = icmp eq i32 %3, 1
  br i1 %i.jts, label %bb.km, label %bb.kq

bb.km:                                            ; preds = %bb.kl
  %i.jtt = load i16, ptr %0, align 2, !tbaa !57
  %i.jtu = zext i16 %i.jtt to i32
  %i.jtv = shl nuw i32 %i.jtu, 16
  %i.jtw = bitcast i32 %i.jtv to float            ; 3 uses
  %i.jtx = icmp eq i32 %.sroa.speculated.i937, 4
  br i1 %i.jtx, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.jty = load i64, ptr %0, align 2, !tbaa !60
  %i.jtz = insertelement <2 x i64> poison, i64 %i.jty, i64 0
  %i.jua = bitcast <2 x i64> %i.jtz to <8 x i16>
  %i.jub = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jua, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.juc = bitcast <8 x i16> %i.jub to <4 x float>
  br label %bb.kp

bb.ko:                                            ; preds = %bb.km
  %i.jud = insertelement <4 x float> poison, float %i.jtw, i64 0
  %i.jue = shufflevector <4 x float> %i.jud, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn
  %i.juf = phi fast <4 x float> [ %i.juc, %bb.kn ], [ %i.jue, %bb.ko ] ; 2 uses
  %i.jug = icmp sgt i32 %i.jkq, 3
  br i1 %i.jug, label %.lr.ph.i52.i, label %.preheader.i41.i

.preheader.loopexit.i59.i:                        ; preds = %.lr.ph.i52.i
  %i.juh = and i32 %i.jkq, 2147483644
  br label %.preheader.i41.i

.preheader.i41.i:                                 ; preds = %.preheader.loopexit.i59.i, %bb.kp
  %.017.lcssa.i42.i = phi ptr [ %2, %bb.kp ], [ %i.jxo, %.preheader.loopexit.i59.i ]
  %.015.lcssa.i43.i = phi ptr [ %1, %bb.kp ], [ %i.jxn, %.preheader.loopexit.i59.i ]
  %.0.lcssa.i44.i = phi i32 [ 0, %bb.kp ], [ %i.juh, %.preheader.loopexit.i59.i ] ; 2 uses
  %i.jui = icmp slt i32 %.0.lcssa.i44.i, %i.jkq
  br i1 %i.jui, label %.lr.ph98.i45.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i52.i:                                     ; preds = %bb.kp, %.lr.ph.i52.i
  %.092.i53.i = phi i32 [ %i.jxp, %.lr.ph.i52.i ], [ 0, %bb.kp ]
  %.01591.i54.i = phi ptr [ %i.jxn, %.lr.ph.i52.i ], [ %1, %bb.kp ] ; 2 uses
  %.01790.i55.i = phi ptr [ %i.jxo, %.lr.ph.i52.i ], [ %2, %bb.kp ] ; 2 uses
  %i.juj = load i64, ptr %.01591.i54.i, align 1, !tbaa !60
  %i.juk = insertelement <2 x i64> poison, i64 %i.juj, i64 0
  %i.jul = bitcast <2 x i64> %i.juk to <8 x i16>
  %i.jum = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jul, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jun = bitcast <8 x i16> %i.jum to <4 x float> ; 2 uses
  %i.juo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.juf, <4 x float> nofpclass(nan inf) %i.jun) ; 2 uses
  %i.jup = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.juf, <4 x float> nofpclass(nan inf) %i.jun)
  %i.juq = fsub fast <4 x float> %i.jup, %i.juo
  %i.jur = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.juq, <4 x float> splat (float f0x42B0C0A5))
  %i.jus = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jur, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jut = fmul fast <4 x float> %i.jus, splat (float f0x3FB8AA3B)
  %i.juu = fadd fast <4 x float> %i.jut, splat (float 5.000000e-01) ; 2 uses
  %i.juv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.juu)
  %i.juw = sitofp fast <4 x i32> %i.juv to <4 x float> ; 2 uses
  %i.jux = fcmp fast olt <4 x float> %i.juu, %i.juw
  %i.juy = select <4 x i1> %i.jux, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.juz = fsub fast <4 x float> %i.juw, %i.juy   ; 2 uses
  %i.jva = fmul fast <4 x float> %i.juz, splat (float f0x3F317218)
  %i.jvb = fsub fast <4 x float> %i.jus, %i.jva   ; 8 uses
  %i.jvc = fmul fast <4 x float> %i.jvb, %i.jvb
  %i.jvd = fmul fast <4 x float> %i.jvb, splat (float f0x39506967)
  %i.jve = fadd fast <4 x float> %i.jvd, splat (float f0x3AB743CE)
  %i.jvf = fmul fast <4 x float> %i.jve, %i.jvb
  %i.jvg = fadd fast <4 x float> %i.jvf, splat (float f0x3C088908)
  %i.jvh = fmul fast <4 x float> %i.jvg, %i.jvb
  %i.jvi = fadd fast <4 x float> %i.jvh, splat (float f0x3D2AA9C1)
  %i.jvj = fmul fast <4 x float> %i.jvi, %i.jvb
  %i.jvk = fadd fast <4 x float> %i.jvj, splat (float f0x3E2AAAAA)
  %i.jvl = fmul fast <4 x float> %i.jvk, %i.jvb
  %i.jvm = fadd fast <4 x float> %i.jvl, splat (float 5.000000e-01)
  %i.jvn = fmul fast <4 x float> %i.jvc, %i.jvm
  %i.jvo = fadd fast <4 x float> %i.jvb, %i.jvn
  %i.jvp = fadd fast <4 x float> %i.jvo, splat (float 1.000000e+00)
  %i.jvq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.juz)
  %i.jvr = shl <4 x i32> %i.jvq, splat (i32 23)
  %i.jvs = add <4 x i32> %i.jvr, splat (i32 1065353216)
  %i.jvt = bitcast <4 x i32> %i.jvs to <4 x float>
  %i.jvu = fmul fast <4 x float> %i.jvp, %i.jvt
  %i.jvv = fadd fast <4 x float> %i.jvu, splat (float 1.000000e+00) ; 2 uses
  %i.jvw = fcmp fast ole <4 x float> %i.jvv, zeroinitializer
  %i.jvx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jvv, <4 x float> splat (float f0x00800000))
  %i.jvy = bitcast <4 x float> %i.jvx to <4 x i32> ; 2 uses
  %i.jvz = lshr <4 x i32> %i.jvy, splat (i32 23)
  %i.jwa = and <4 x i32> %i.jvy, splat (i32 -2139095041)
  %i.jwb = or disjoint <4 x i32> %i.jwa, splat (i32 1056964608)
  %i.jwc = bitcast <4 x i32> %i.jwb to <4 x float> ; 3 uses
  %i.jwd = add nsw <4 x i32> %i.jvz, splat (i32 -127)
  %i.jwe = sitofp fast <4 x i32> %i.jwd to <4 x float> ; 2 uses
  %i.jwf = fadd fast <4 x float> %i.jwe, splat (float 1.000000e+00)
  %i.jwg = fcmp fast olt <4 x float> %i.jwc, splat (float f0x3F3504F3) ; 2 uses
  %i.jwh = select <4 x i1> %i.jwg, <4 x float> %i.jwc, <4 x float> zeroinitializer
  %i.jwi = fadd fast <4 x float> %i.jwc, splat (float -1.000000e+00)
  %i.jwj = select fast <4 x i1> %i.jwg, <4 x float> %i.jwe, <4 x float> %i.jwf
  %i.jwk = fadd fast <4 x float> %i.jwi, %i.jwh   ; 12 uses
  %i.jwl = fmul fast <4 x float> %i.jwk, %i.jwk
  %i.jwm = fmul fast <4 x float> %i.jwk, splat (float f0x3D9021BB)
  %i.jwn = fadd fast <4 x float> %i.jwm, splat (float f0xBDEBD1B8)
  %i.jwo = fmul fast <4 x float> %i.jwn, %i.jwk
  %i.jwp = fadd fast <4 x float> %i.jwo, splat (float f0x3DEF251A)
  %i.jwq = fmul fast <4 x float> %i.jwp, %i.jwk
  %i.jwr = fadd fast <4 x float> %i.jwq, splat (float f0xBDFE5D4F)
  %i.jws = fmul fast <4 x float> %i.jwr, %i.jwk
  %i.jwt = fadd fast <4 x float> %i.jws, splat (float f0x3E11E9BF)
  %i.jwu = fmul fast <4 x float> %i.jwt, %i.jwk
  %i.jwv = fadd fast <4 x float> %i.jwu, splat (float f0xBE2AAE50)
  %i.jww = fmul fast <4 x float> %i.jwv, %i.jwk
  %i.jwx = fadd fast <4 x float> %i.jww, splat (float f0x3E4CCEAC)
  %i.jwy = fmul fast <4 x float> %i.jwx, %i.jwk
  %i.jwz = fadd fast <4 x float> %i.jwy, splat (float f0xBE7FFFFC)
  %i.jxa = fmul fast <4 x float> %i.jwz, %i.jwk
  %i.jxb = fadd fast <4 x float> %i.jxa, splat (float f0x3EAAAAAA)
  %i.jxc = fmul fast <4 x float> %i.jxb, %i.jwk
  %reass.mul.i56.i = fmul fast <4 x float> %i.jwj, splat (float f0x3F317218)
  %reass.add88.i57.i = fadd fast <4 x float> %i.jxc, splat (float -5.000000e-01)
  %reass.mul89.i58.i = fmul fast <4 x float> %i.jwl, %reass.add88.i57.i
  %i.jxd = fadd fast <4 x float> %reass.mul.i56.i, %i.jwk
  %i.jxe = fadd fast <4 x float> %reass.mul89.i58.i, %i.jxd
  %i.jxf = select <4 x i1> %i.jvw, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.jxe
  %i.jxg = fadd fast <4 x float> %i.jxf, %i.juo
  %i.jxh = bitcast <4 x float> %i.jxg to <8 x i16>
  %i.jxi = shufflevector <8 x i16> %i.jxh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jxj = bitcast <8 x i16> %i.jxi to <4 x float>
  %i.jxk = shufflevector <4 x float> %i.jxj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jxl = bitcast <4 x float> %i.jxk to <2 x i64>
  %i.jxm = extractelement <2 x i64> %i.jxl, i64 0
  store i64 %i.jxm, ptr %.01790.i55.i, align 1, !tbaa !60
  %i.jxn = getelementptr inbounds nuw i8, ptr %.01591.i54.i, i64 8 ; 2 uses
  %i.jxo = getelementptr inbounds nuw i8, ptr %.01790.i55.i, i64 8 ; 2 uses
  %i.jxp = add nuw nsw i32 %.092.i53.i, 4         ; 2 uses
  %i.jxq = or disjoint i32 %i.jxp, 3
  %i.jxr = icmp slt i32 %i.jxq, %i.jkq
  br i1 %i.jxr, label %.lr.ph.i52.i, label %.preheader.loopexit.i59.i, !llvm.loop !621

.lr.ph98.i45.i:                                   ; preds = %.preheader.i41.i, %.lr.ph98.i45.i
  %.197.i46.i = phi i32 [ %i.jyf, %.lr.ph98.i45.i ], [ %.0.lcssa.i44.i, %.preheader.i41.i ]
  %.11696.i47.i = phi ptr [ %i.jxs, %.lr.ph98.i45.i ], [ %.015.lcssa.i43.i, %.preheader.i41.i ] ; 2 uses
  %.11895.i48.i = phi ptr [ %i.jye, %.lr.ph98.i45.i ], [ %.017.lcssa.i42.i, %.preheader.i41.i ] ; 2 uses
  %i.jxs = getelementptr inbounds nuw i8, ptr %.11696.i47.i, i64 2
  %i.jxt = load i16, ptr %.11696.i47.i, align 2, !tbaa !57
  %i.jxu = zext i16 %i.jxt to i32
  %i.jxv = shl nuw i32 %i.jxu, 16
  %i.jxw = bitcast i32 %i.jxv to float            ; 2 uses
  %.sroa.speculated23.i49.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.jtw, float %i.jxw) ; 2 uses
  %.sroa.speculated.i50.i = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.jxw, float %i.jtw)
  %i.jxx = fsub fast float %.sroa.speculated.i50.i, %.sroa.speculated23.i49.i
  %i.jxy = tail call fast float @llvm.exp.f32(float %i.jxx)
  %i.jxz = tail call fast nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.jxy) #21
  %i.jya = fadd fast float %.sroa.speculated23.i49.i, %i.jxz
  %i.jyb = bitcast float %i.jya to i32
  %i.jyc = lshr i32 %i.jyb, 16
  %i.jyd = trunc nuw i32 %i.jyc to i16
  %i.jye = getelementptr inbounds nuw i8, ptr %.11895.i48.i, i64 2
  store i16 %i.jyd, ptr %.11895.i48.i, align 2, !tbaa !57
  %i.jyf = add nuw nsw i32 %.197.i46.i, 1         ; 2 uses
  %exitcond.not.i51.i = icmp eq i32 %i.jyf, %i.jkq
  br i1 %exitcond.not.i51.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph98.i45.i, !llvm.loop !622

bb.kq:                                            ; preds = %bb.kl, %bb.kd
  %i.jyg = icmp eq i32 %6, 1
  br i1 %i.jyg, label %bb.kr, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kr:                                            ; preds = %bb.kq
  %i.jyh = icmp eq i32 %3, %4
  br i1 %i.jyh, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.jyi = icmp eq i32 %.sroa.speculated.i937, 4
  %i.jyj = icmp sgt i32 %.sroa.speculated85.i, 0
  %or.cond.i.i943 = and i1 %i.jyj, %i.jyi
  br i1 %or.cond.i.i943, label %.lr.ph.i60.i944, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i60.i944:                                  ; preds = %bb.ks, %.lr.ph.i60.i944
  %.079.i.i = phi i32 [ %i.kbx, %.lr.ph.i60.i944 ], [ 0, %bb.ks ]
  %.0978.i.i = phi ptr [ %i.kbu, %.lr.ph.i60.i944 ], [ %0, %bb.ks ] ; 2 uses
  %.01077.i.i = phi ptr [ %i.kbv, %.lr.ph.i60.i944 ], [ %1, %bb.ks ] ; 2 uses
  %.01176.i.i = phi ptr [ %i.kbw, %.lr.ph.i60.i944 ], [ %2, %bb.ks ] ; 2 uses
  %i.jyk = load i64, ptr %.0978.i.i, align 1, !tbaa !60
  %i.jyl = insertelement <2 x i64> poison, i64 %i.jyk, i64 0
  %i.jym = bitcast <2 x i64> %i.jyl to <8 x i16>
  %i.jyn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jym, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jyo = bitcast <8 x i16> %i.jyn to <4 x float> ; 2 uses
  %i.jyp = load i16, ptr %.01077.i.i, align 2, !tbaa !57
  %i.jyq = zext i16 %i.jyp to i32
  %i.jyr = shl nuw i32 %i.jyq, 16
  %i.jys = insertelement <4 x i32> poison, i32 %i.jyr, i64 0
  %i.jyt = bitcast <4 x i32> %i.jys to <4 x float>
  %i.jyu = shufflevector <4 x float> %i.jyt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jyv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jyo, <4 x float> nofpclass(nan inf) %i.jyu) ; 2 uses
  %i.jyw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jyo, <4 x float> nofpclass(nan inf) %i.jyu)
  %i.jyx = fsub fast <4 x float> %i.jyw, %i.jyv
  %i.jyy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jyx, <4 x float> splat (float f0x42B0C0A5))
  %i.jyz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jyy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jza = fmul fast <4 x float> %i.jyz, splat (float f0x3FB8AA3B)
  %i.jzb = fadd fast <4 x float> %i.jza, splat (float 5.000000e-01) ; 2 uses
  %i.jzc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jzb)
  %i.jzd = sitofp fast <4 x i32> %i.jzc to <4 x float> ; 2 uses
  %i.jze = fcmp fast olt <4 x float> %i.jzb, %i.jzd
  %i.jzf = select <4 x i1> %i.jze, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jzg = fsub fast <4 x float> %i.jzd, %i.jzf   ; 2 uses
  %i.jzh = fmul fast <4 x float> %i.jzg, splat (float f0x3F317218)
  %i.jzi = fsub fast <4 x float> %i.jyz, %i.jzh   ; 8 uses
  %i.jzj = fmul fast <4 x float> %i.jzi, %i.jzi
  %i.jzk = fmul fast <4 x float> %i.jzi, splat (float f0x39506967)
  %i.jzl = fadd fast <4 x float> %i.jzk, splat (float f0x3AB743CE)
  %i.jzm = fmul fast <4 x float> %i.jzl, %i.jzi
  %i.jzn = fadd fast <4 x float> %i.jzm, splat (float f0x3C088908)
  %i.jzo = fmul fast <4 x float> %i.jzn, %i.jzi
  %i.jzp = fadd fast <4 x float> %i.jzo, splat (float f0x3D2AA9C1)
  %i.jzq = fmul fast <4 x float> %i.jzp, %i.jzi
  %i.jzr = fadd fast <4 x float> %i.jzq, splat (float f0x3E2AAAAA)
  %i.jzs = fmul fast <4 x float> %i.jzr, %i.jzi
  %i.jzt = fadd fast <4 x float> %i.jzs, splat (float 5.000000e-01)
  %i.jzu = fmul fast <4 x float> %i.jzj, %i.jzt
  %i.jzv = fadd fast <4 x float> %i.jzi, %i.jzu
  %i.jzw = fadd fast <4 x float> %i.jzv, splat (float 1.000000e+00)
  %i.jzx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jzg)
  %i.jzy = shl <4 x i32> %i.jzx, splat (i32 23)
  %i.jzz = add <4 x i32> %i.jzy, splat (i32 1065353216)
  %i.kaa = bitcast <4 x i32> %i.jzz to <4 x float>
  %i.kab = fmul fast <4 x float> %i.jzw, %i.kaa
  %i.kac = fadd fast <4 x float> %i.kab, splat (float 1.000000e+00) ; 2 uses
  %i.kad = fcmp fast ole <4 x float> %i.kac, zeroinitializer
  %i.kae = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kac, <4 x float> splat (float f0x00800000))
  %i.kaf = bitcast <4 x float> %i.kae to <4 x i32> ; 2 uses
  %i.kag = lshr <4 x i32> %i.kaf, splat (i32 23)
  %i.kah = and <4 x i32> %i.kaf, splat (i32 -2139095041)
  %i.kai = or disjoint <4 x i32> %i.kah, splat (i32 1056964608)
  %i.kaj = bitcast <4 x i32> %i.kai to <4 x float> ; 3 uses
  %i.kak = add nsw <4 x i32> %i.kag, splat (i32 -127)
  %i.kal = sitofp fast <4 x i32> %i.kak to <4 x float> ; 2 uses
  %i.kam = fadd fast <4 x float> %i.kal, splat (float 1.000000e+00)
  %i.kan = fcmp fast olt <4 x float> %i.kaj, splat (float f0x3F3504F3) ; 2 uses
  %i.kao = select <4 x i1> %i.kan, <4 x float> %i.kaj, <4 x float> zeroinitializer
  %i.kap = fadd fast <4 x float> %i.kaj, splat (float -1.000000e+00)
  %i.kaq = select fast <4 x i1> %i.kan, <4 x float> %i.kal, <4 x float> %i.kam
  %i.kar = fadd fast <4 x float> %i.kap, %i.kao   ; 12 uses
  %i.kas = fmul fast <4 x float> %i.kar, %i.kar
  %i.kat = fmul fast <4 x float> %i.kar, splat (float f0x3D9021BB)
  %i.kau = fadd fast <4 x float> %i.kat, splat (float f0xBDEBD1B8)
  %i.kav = fmul fast <4 x float> %i.kau, %i.kar
  %i.kaw = fadd fast <4 x float> %i.kav, splat (float f0x3DEF251A)
  %i.kax = fmul fast <4 x float> %i.kaw, %i.kar
  %i.kay = fadd fast <4 x float> %i.kax, splat (float f0xBDFE5D4F)
  %i.kaz = fmul fast <4 x float> %i.kay, %i.kar
  %i.kba = fadd fast <4 x float> %i.kaz, splat (float f0x3E11E9BF)
  %i.kbb = fmul fast <4 x float> %i.kba, %i.kar
  %i.kbc = fadd fast <4 x float> %i.kbb, splat (float f0xBE2AAE50)
  %i.kbd = fmul fast <4 x float> %i.kbc, %i.kar
  %i.kbe = fadd fast <4 x float> %i.kbd, splat (float f0x3E4CCEAC)
  %i.kbf = fmul fast <4 x float> %i.kbe, %i.kar
  %i.kbg = fadd fast <4 x float> %i.kbf, splat (float f0xBE7FFFFC)
  %i.kbh = fmul fast <4 x float> %i.kbg, %i.kar
  %i.kbi = fadd fast <4 x float> %i.kbh, splat (float f0x3EAAAAAA)
  %i.kbj = fmul fast <4 x float> %i.kbi, %i.kar
  %reass.mul.i61.i = fmul fast <4 x float> %i.kaq, splat (float f0x3F317218)
  %reass.add74.i.i = fadd fast <4 x float> %i.kbj, splat (float -5.000000e-01)
  %reass.mul75.i.i = fmul fast <4 x float> %i.kas, %reass.add74.i.i
  %i.kbk = fadd fast <4 x float> %reass.mul.i61.i, %i.kar
  %i.kbl = fadd fast <4 x float> %reass.mul75.i.i, %i.kbk
  %i.kbm = select <4 x i1> %i.kad, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.kbl
  %i.kbn = fadd fast <4 x float> %i.kbm, %i.jyv
  %i.kbo = bitcast <4 x float> %i.kbn to <8 x i16>
  %i.kbp = shufflevector <8 x i16> %i.kbo, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.kbq = bitcast <8 x i16> %i.kbp to <4 x float>
  %i.kbr = shufflevector <4 x float> %i.kbq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.kbs = bitcast <4 x float> %i.kbr to <2 x i64>
  %i.kbt = extractelement <2 x i64> %i.kbs, i64 0
  store i64 %i.kbt, ptr %.01176.i.i, align 1, !tbaa !60
  %i.kbu = getelementptr inbounds nuw i8, ptr %.0978.i.i, i64 8
  %i.kbv = getelementptr inbounds nuw i8, ptr %.01077.i.i, i64 2
  %i.kbw = getelementptr inbounds nuw i8, ptr %.01176.i.i, i64 8
  %i.kbx = add nuw nsw i32 %.079.i.i, 1           ; 2 uses
  %exitcond.not.i62.i945 = icmp eq i32 %i.kbx, %.sroa.speculated85.i
  br i1 %exitcond.not.i62.i945, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i60.i944, !llvm.loop !623

bb.kt:                                            ; preds = %bb.kr
  %i.kby = icmp eq i32 %4, 1
  br i1 %i.kby, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %.val.i940 = load i16, ptr %1, align 2, !tbaa !57
  %i.kbz = zext i16 %.val.i940 to i32
  %i.kca = shl nuw i32 %i.kbz, 16
  %i.kcb = bitcast i32 %i.kca to float            ; 3 uses
  %i.kcc = insertelement <4 x float> poison, float %i.kcb, i64 0
  %i.kcd = shufflevector <4 x float> %i.kcc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kce = icmp sgt i32 %i.jkq, 3
  br i1 %i.kce, label %.lr.ph.i69.i941, label %.preheader.i63.i

.preheader.loopexit.i71.i:                        ; preds = %.lr.ph.i69.i941
  %i.kcf = and i32 %i.jkq, 2147483644
  br label %.preheader.i63.i

.preheader.i63.i:                                 ; preds = %.preheader.loopexit.i71.i, %bb.ku
  %.016.lcssa.i64.i = phi ptr [ %2, %bb.ku ], [ %i.kfm, %.preheader.loopexit.i71.i ]
  %.014.lcssa.i65.i = phi ptr [ %0, %bb.ku ], [ %i.kfl, %.preheader.loopexit.i71.i ]
  %.0.lcssa.i66.i = phi i32 [ 0, %bb.ku ], [ %i.kcf, %.preheader.loopexit.i71.i ] ; 2 uses
  %i.kcg = icmp slt i32 %.0.lcssa.i66.i, %i.jkq
  br i1 %i.kcg, label %.lr.ph78.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i69.i941:                                  ; preds = %bb.ku, %.lr.ph.i69.i941
  %.072.i.i = phi i32 [ %i.kfn, %.lr.ph.i69.i941 ], [ 0, %bb.ku ]
  %.01471.i.i = phi ptr [ %i.kfl, %.lr.ph.i69.i941 ], [ %0, %bb.ku ] ; 2 uses
  %.01670.i.i = phi ptr [ %i.kfm, %.lr.ph.i69.i941 ], [ %2, %bb.ku ] ; 2 uses
  %i.kch = load i64, ptr %.01471.i.i, align 1, !tbaa !60
  %i.kci = insertelement <2 x i64> poison, i64 %i.kch, i64 0
  %i.kcj = bitcast <2 x i64> %i.kci to <8 x i16>
  %i.kck = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kcj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kcl = bitcast <8 x i16> %i.kck to <4 x float> ; 2 uses
  %i.kcm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kcl, <4 x float> nofpclass(nan inf) %i.kcd) ; 2 uses
  %i.kcn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kcl, <4 x float> nofpclass(nan inf) %i.kcd)
  %i.kco = fsub fast <4 x float> %i.kcn, %i.kcm
  %i.kcp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kco, <4 x float> splat (float f0x42B0C0A5))
  %i.kcq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kcp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kcr = fmul fast <4 x float> %i.kcq, splat (float f0x3FB8AA3B)
  %i.kcs = fadd fast <4 x float> %i.kcr, splat (float 5.000000e-01) ; 2 uses
  %i.kct = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kcs)
  %i.kcu = sitofp fast <4 x i32> %i.kct to <4 x float> ; 2 uses
  %i.kcv = fcmp fast olt <4 x float> %i.kcs, %i.kcu
  %i.kcw = select <4 x i1> %i.kcv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kcx = fsub fast <4 x float> %i.kcu, %i.kcw   ; 2 uses
  %i.kcy = fmul fast <4 x float> %i.kcx, splat (float f0x3F317218)
  %i.kcz = fsub fast <4 x float> %i.kcq, %i.kcy   ; 8 uses
  %i.kda = fmul fast <4 x float> %i.kcz, %i.kcz
  %i.kdb = fmul fast <4 x float> %i.kcz, splat (float f0x39506967)
  %i.kdc = fadd fast <4 x float> %i.kdb, splat (float f0x3AB743CE)
  %i.kdd = fmul fast <4 x float> %i.kdc, %i.kcz
  %i.kde = fadd fast <4 x float> %i.kdd, splat (float f0x3C088908)
  %i.kdf = fmul fast <4 x float> %i.kde, %i.kcz
  %i.kdg = fadd fast <4 x float> %i.kdf, splat (float f0x3D2AA9C1)
  %i.kdh = fmul fast <4 x float> %i.kdg, %i.kcz
  %i.kdi = fadd fast <4 x float> %i.kdh, splat (float f0x3E2AAAAA)
  %i.kdj = fmul fast <4 x float> %i.kdi, %i.kcz
  %i.kdk = fadd fast <4 x float> %i.kdj, splat (float 5.000000e-01)
  %i.kdl = fmul fast <4 x float> %i.kda, %i.kdk
  %i.kdm = fadd fast <4 x float> %i.kcz, %i.kdl
  %i.kdn = fadd fast <4 x float> %i.kdm, splat (float 1.000000e+00)
  %i.kdo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kcx)
  %i.kdp = shl <4 x i32> %i.kdo, splat (i32 23)
  %i.kdq = add <4 x i32> %i.kdp, splat (i32 1065353216)
  %i.kdr = bitcast <4 x i32> %i.kdq to <4 x float>
  %i.kds = fmul fast <4 x float> %i.kdn, %i.kdr
  %i.kdt = fadd fast <4 x float> %i.kds, splat (float 1.000000e+00) ; 2 uses
  %i.kdu = fcmp fast ole <4 x float> %i.kdt, zeroinitializer
  %i.kdv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kdt, <4 x float> splat (float f0x00800000))
  %i.kdw = bitcast <4 x float> %i.kdv to <4 x i32> ; 2 uses
  %i.kdx = lshr <4 x i32> %i.kdw, splat (i32 23)
  %i.kdy = and <4 x i32> %i.kdw, splat (i32 -2139095041)
  %i.kdz = or disjoint <4 x i32> %i.kdy, splat (i32 1056964608)
  %i.kea = bitcast <4 x i32> %i.kdz to <4 x float> ; 3 uses
  %i.keb = add nsw <4 x i32> %i.kdx, splat (i32 -127)
  %i.kec = sitofp fast <4 x i32> %i.keb to <4 x float> ; 2 uses
  %i.ked = fadd fast <4 x float> %i.kec, splat (float 1.000000e+00)
  %i.kee = fcmp fast olt <4 x float> %i.kea, splat (float f0x3F3504F3) ; 2 uses
  %i.kef = select <4 x i1> %i.kee, <4 x float> %i.kea, <4 x float> zeroinitializer
  %i.keg = fadd fast <4 x float> %i.kea, splat (float -1.000000e+00)
  %i.keh = select fast <4 x i1> %i.kee, <4 x float> %i.kec, <4 x float> %i.ked
  %i.kei = fadd fast <4 x float> %i.keg, %i.kef   ; 12 uses
  %i.kej = fmul fast <4 x float> %i.kei, %i.kei
  %i.kek = fmul fast <4 x float> %i.kei, splat (float f0x3D9021BB)
  %i.kel = fadd fast <4 x float> %i.kek, splat (float f0xBDEBD1B8)
  %i.kem = fmul fast <4 x float> %i.kel, %i.kei
  %i.ken = fadd fast <4 x float> %i.kem, splat (float f0x3DEF251A)
  %i.keo = fmul fast <4 x float> %i.ken, %i.kei
  %i.kep = fadd fast <4 x float> %i.keo, splat (float f0xBDFE5D4F)
  %i.keq = fmul fast <4 x float> %i.kep, %i.kei
  %i.ker = fadd fast <4 x float> %i.keq, splat (float f0x3E11E9BF)
  %i.kes = fmul fast <4 x float> %i.ker, %i.kei
  %i.ket = fadd fast <4 x float> %i.kes, splat (float f0xBE2AAE50)
  %i.keu = fmul fast <4 x float> %i.ket, %i.kei
  %i.kev = fadd fast <4 x float> %i.keu, splat (float f0x3E4CCEAC)
  %i.kew = fmul fast <4 x float> %i.kev, %i.kei
  %i.kex = fadd fast <4 x float> %i.kew, splat (float f0xBE7FFFFC)
  %i.key = fmul fast <4 x float> %i.kex, %i.kei
  %i.kez = fadd fast <4 x float> %i.key, splat (float f0x3EAAAAAA)
  %i.kfa = fmul fast <4 x float> %i.kez, %i.kei
  %reass.mul.i70.i942 = fmul fast <4 x float> %i.keh, splat (float f0x3F317218)
  %reass.add68.i.i = fadd fast <4 x float> %i.kfa, splat (float -5.000000e-01)
  %reass.mul69.i.i = fmul fast <4 x float> %i.kej, %reass.add68.i.i
  %i.kfb = fadd fast <4 x float> %reass.mul.i70.i942, %i.kei
  %i.kfc = fadd fast <4 x float> %reass.mul69.i.i, %i.kfb
  %i.kfd = select <4 x i1> %i.kdu, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.kfc
  %i.kfe = fadd fast <4 x float> %i.kfd, %i.kcm
  %i.kff = bitcast <4 x float> %i.kfe to <8 x i16>
  %i.kfg = shufflevector <8 x i16> %i.kff, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.kfh = bitcast <8 x i16> %i.kfg to <4 x float>
  %i.kfi = shufflevector <4 x float> %i.kfh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.kfj = bitcast <4 x float> %i.kfi to <2 x i64>
  %i.kfk = extractelement <2 x i64> %i.kfj, i64 0
  store i64 %i.kfk, ptr %.01670.i.i, align 1, !tbaa !60
  %i.kfl = getelementptr inbounds nuw i8, ptr %.01471.i.i, i64 8 ; 2 uses
  %i.kfm = getelementptr inbounds nuw i8, ptr %.01670.i.i, i64 8 ; 2 uses
  %i.kfn = add nuw nsw i32 %.072.i.i, 4           ; 2 uses
  %i.kfo = or disjoint i32 %i.kfn, 3
  %i.kfp = icmp slt i32 %i.kfo, %i.jkq
  br i1 %i.kfp, label %.lr.ph.i69.i941, label %.preheader.loopexit.i71.i, !llvm.loop !624

.lr.ph78.i.i:                                     ; preds = %.preheader.i63.i, %.lr.ph78.i.i
  %.177.i.i = phi i32 [ %i.kgd, %.lr.ph78.i.i ], [ %.0.lcssa.i66.i, %.preheader.i63.i ]
  %.11576.i.i = phi ptr [ %i.kfq, %.lr.ph78.i.i ], [ %.014.lcssa.i65.i, %.preheader.i63.i ] ; 2 uses
  %.11775.i.i = phi ptr [ %i.kgc, %.lr.ph78.i.i ], [ %.016.lcssa.i64.i, %.preheader.i63.i ] ; 2 uses
  %i.kfq = getelementptr inbounds nuw i8, ptr %.11576.i.i, i64 2
  %i.kfr = load i16, ptr %.11576.i.i, align 2, !tbaa !57
  %i.kfs = zext i16 %i.kfr to i32
  %i.kft = shl nuw i32 %i.kfs, 16
  %i.kfu = bitcast i32 %i.kft to float            ; 2 uses
  %.sroa.speculated4.i.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.kfu, float %i.kcb) ; 2 uses
  %.sroa.speculated.i67.i = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.kcb, float %i.kfu)
  %i.kfv = fsub fast float %.sroa.speculated.i67.i, %.sroa.speculated4.i.i
  %i.kfw = tail call fast float @llvm.exp.f32(float %i.kfv)
  %i.kfx = tail call fast nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.kfw) #21
  %i.kfy = fadd fast float %.sroa.speculated4.i.i, %i.kfx
  %i.kfz = bitcast float %i.kfy to i32
  %i.kga = lshr i32 %i.kfz, 16
  %i.kgb = trunc nuw i32 %i.kga to i16
  %i.kgc = getelementptr inbounds nuw i8, ptr %.11775.i.i, i64 2
  store i16 %i.kgb, ptr %.11775.i.i, align 2, !tbaa !57
  %i.kgd = add nuw nsw i32 %.177.i.i, 1           ; 2 uses
  %exitcond.not.i68.i = icmp eq i32 %i.kgd, %i.jkq
  br i1 %exitcond.not.i68.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph78.i.i, !llvm.loop !625

bb.kv:                                            ; preds = %bb.kt
  %i.kge = icmp eq i32 %3, 1
  %i.kgf = icmp eq i32 %.sroa.speculated.i937, 4
  %or.cond.i938 = and i1 %i.kge, %i.kgf
  br i1 %or.cond.i938, label %bb.kw, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kw:                                            ; preds = %bb.kv
  %i.kgg = load i64, ptr %0, align 1, !tbaa !60
  %i.kgh = insertelement <2 x i64> poison, i64 %i.kgg, i64 0
  %i.kgi = bitcast <2 x i64> %i.kgh to <8 x i16>
  %i.kgj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kgi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kgk = bitcast <8 x i16> %i.kgj to <4 x float> ; 2 uses
  br label %.lr.ph.i72.i

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.i, %bb.kw
  %.076.i.i939 = phi i32 [ %i.kjs, %.lr.ph.i72.i ], [ 0, %bb.kw ]
  %.0875.i.i = phi ptr [ %i.kjq, %.lr.ph.i72.i ], [ %1, %bb.kw ] ; 2 uses
  %.0974.i.i = phi ptr [ %i.kjr, %.lr.ph.i72.i ], [ %2, %bb.kw ] ; 2 uses
  %i.kgl = load i16, ptr %.0875.i.i, align 2, !tbaa !57
  %i.kgm = zext i16 %i.kgl to i32
  %i.kgn = shl nuw i32 %i.kgm, 16
  %i.kgo = insertelement <4 x i32> poison, i32 %i.kgn, i64 0
  %i.kgp = bitcast <4 x i32> %i.kgo to <4 x float>
  %i.kgq = shufflevector <4 x float> %i.kgp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kgr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kgk, <4 x float> nofpclass(nan inf) %i.kgq) ; 2 uses
  %i.kgs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kgk, <4 x float> nofpclass(nan inf) %i.kgq)
  %i.kgt = fsub fast <4 x float> %i.kgs, %i.kgr
  %i.kgu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kgt, <4 x float> splat (float f0x42B0C0A5))
  %i.kgv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kgu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kgw = fmul fast <4 x float> %i.kgv, splat (float f0x3FB8AA3B)
  %i.kgx = fadd fast <4 x float> %i.kgw, splat (float 5.000000e-01) ; 2 uses
  %i.kgy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kgx)
  %i.kgz = sitofp fast <4 x i32> %i.kgy to <4 x float> ; 2 uses
  %i.kha = fcmp fast olt <4 x float> %i.kgx, %i.kgz
  %i.khb = select <4 x i1> %i.kha, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.khc = fsub fast <4 x float> %i.kgz, %i.khb   ; 2 uses
  %i.khd = fmul fast <4 x float> %i.khc, splat (float f0x3F317218)
  %i.khe = fsub fast <4 x float> %i.kgv, %i.khd   ; 8 uses
  %i.khf = fmul fast <4 x float> %i.khe, %i.khe
  %i.khg = fmul fast <4 x float> %i.khe, splat (float f0x39506967)
  %i.khh = fadd fast <4 x float> %i.khg, splat (float f0x3AB743CE)
  %i.khi = fmul fast <4 x float> %i.khh, %i.khe
  %i.khj = fadd fast <4 x float> %i.khi, splat (float f0x3C088908)
  %i.khk = fmul fast <4 x float> %i.khj, %i.khe
  %i.khl = fadd fast <4 x float> %i.khk, splat (float f0x3D2AA9C1)
  %i.khm = fmul fast <4 x float> %i.khl, %i.khe
  %i.khn = fadd fast <4 x float> %i.khm, splat (float f0x3E2AAAAA)
  %i.kho = fmul fast <4 x float> %i.khn, %i.khe
  %i.khp = fadd fast <4 x float> %i.kho, splat (float 5.000000e-01)
  %i.khq = fmul fast <4 x float> %i.khf, %i.khp
  %i.khr = fadd fast <4 x float> %i.khe, %i.khq
  %i.khs = fadd fast <4 x float> %i.khr, splat (float 1.000000e+00)
  %i.kht = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.khc)
  %i.khu = shl <4 x i32> %i.kht, splat (i32 23)
  %i.khv = add <4 x i32> %i.khu, splat (i32 1065353216)
  %i.khw = bitcast <4 x i32> %i.khv to <4 x float>
  %i.khx = fmul fast <4 x float> %i.khs, %i.khw
  %i.khy = fadd fast <4 x float> %i.khx, splat (float 1.000000e+00) ; 2 uses
  %i.khz = fcmp fast ole <4 x float> %i.khy, zeroinitializer
  %i.kia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.khy, <4 x float> splat (float f0x00800000))
  %i.kib = bitcast <4 x float> %i.kia to <4 x i32> ; 2 uses
  %i.kic = lshr <4 x i32> %i.kib, splat (i32 23)
  %i.kid = and <4 x i32> %i.kib, splat (i32 -2139095041)
  %i.kie = or disjoint <4 x i32> %i.kid, splat (i32 1056964608)
  %i.kif = bitcast <4 x i32> %i.kie to <4 x float> ; 3 uses
  %i.kig = add nsw <4 x i32> %i.kic, splat (i32 -127)
  %i.kih = sitofp fast <4 x i32> %i.kig to <4 x float> ; 2 uses
  %i.kii = fadd fast <4 x float> %i.kih, splat (float 1.000000e+00)
  %i.kij = fcmp fast olt <4 x float> %i.kif, splat (float f0x3F3504F3) ; 2 uses
  %i.kik = select <4 x i1> %i.kij, <4 x float> %i.kif, <4 x float> zeroinitializer
  %i.kil = fadd fast <4 x float> %i.kif, splat (float -1.000000e+00)
  %i.kim = select fast <4 x i1> %i.kij, <4 x float> %i.kih, <4 x float> %i.kii
  %i.kin = fadd fast <4 x float> %i.kil, %i.kik   ; 12 uses
  %i.kio = fmul fast <4 x float> %i.kin, %i.kin
  %i.kip = fmul fast <4 x float> %i.kin, splat (float f0x3D9021BB)
  %i.kiq = fadd fast <4 x float> %i.kip, splat (float f0xBDEBD1B8)
  %i.kir = fmul fast <4 x float> %i.kiq, %i.kin
  %i.kis = fadd fast <4 x float> %i.kir, splat (float f0x3DEF251A)
  %i.kit = fmul fast <4 x float> %i.kis, %i.kin
  %i.kiu = fadd fast <4 x float> %i.kit, splat (float f0xBDFE5D4F)
  %i.kiv = fmul fast <4 x float> %i.kiu, %i.kin
  %i.kiw = fadd fast <4 x float> %i.kiv, splat (float f0x3E11E9BF)
  %i.kix = fmul fast <4 x float> %i.kiw, %i.kin
  %i.kiy = fadd fast <4 x float> %i.kix, splat (float f0xBE2AAE50)
  %i.kiz = fmul fast <4 x float> %i.kiy, %i.kin
  %i.kja = fadd fast <4 x float> %i.kiz, splat (float f0x3E4CCEAC)
  %i.kjb = fmul fast <4 x float> %i.kja, %i.kin
  %i.kjc = fadd fast <4 x float> %i.kjb, splat (float f0xBE7FFFFC)
  %i.kjd = fmul fast <4 x float> %i.kjc, %i.kin
  %i.kje = fadd fast <4 x float> %i.kjd, splat (float f0x3EAAAAAA)
  %i.kjf = fmul fast <4 x float> %i.kje, %i.kin
  %reass.mul.i73.i = fmul fast <4 x float> %i.kim, splat (float f0x3F317218)
  %reass.add72.i.i = fadd fast <4 x float> %i.kjf, splat (float -5.000000e-01)
  %reass.mul73.i.i = fmul fast <4 x float> %i.kio, %reass.add72.i.i
  %i.kjg = fadd fast <4 x float> %reass.mul.i73.i, %i.kin
  %i.kjh = fadd fast <4 x float> %reass.mul73.i.i, %i.kjg
  %i.kji = select <4 x i1> %i.khz, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.kjh
  %i.kjj = fadd fast <4 x float> %i.kji, %i.kgr
  %i.kjk = bitcast <4 x float> %i.kjj to <8 x i16>
  %i.kjl = shufflevector <8 x i16> %i.kjk, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.kjm = bitcast <8 x i16> %i.kjl to <4 x float>
  %i.kjn = shufflevector <4 x float> %i.kjm, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.kjo = bitcast <4 x float> %i.kjn to <2 x i64>
  %i.kjp = extractelement <2 x i64> %i.kjo, i64 0
  store i64 %i.kjp, ptr %.0974.i.i, align 1, !tbaa !60
  %i.kjq = getelementptr inbounds nuw i8, ptr %.0875.i.i, i64 2
  %i.kjr = getelementptr inbounds nuw i8, ptr %.0974.i.i, i64 8
  %i.kjs = add nuw nsw i32 %.076.i.i939, 1        ; 2 uses
  %exitcond.not.i74.i = icmp eq i32 %i.kjs, %.sroa.speculated85.i
  br i1 %exitcond.not.i74.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i72.i, !llvm.loop !626

bb.kx:                                            ; preds = %bb.a
  %.sroa.speculated79.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i963 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.kjt = mul i32 %.sroa.speculated.i963, %.sroa.speculated79.i ; 32 uses
  %i.kju = icmp eq i32 %5, %6
  br i1 %i.kju, label %bb.ky, label %bb.lk

bb.ky:                                            ; preds = %bb.kx
  %i.kjv = icmp eq i32 %3, %4
  br i1 %i.kjv, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.kjw = icmp sgt i32 %i.kjt, 3
  br i1 %i.kjw, label %.lr.ph.i.i996, label %.preheader.i.i990

.preheader.loopexit.i.i997:                       ; preds = %.lr.ph.i.i996
  %i.kjx = and i32 %i.kjt, 2147483644
  br label %.preheader.i.i990

.preheader.i.i990:                                ; preds = %.preheader.loopexit.i.i997, %bb.kz
  %.018.lcssa.i.i991 = phi ptr [ %1, %bb.kz ], [ %i.kmv, %.preheader.loopexit.i.i997 ] ; 5 uses
  %.016.lcssa.i.i992 = phi ptr [ %2, %bb.kz ], [ %i.kmw, %.preheader.loopexit.i.i997 ] ; 5 uses
  %.014.lcssa.i.i993 = phi ptr [ %0, %bb.kz ], [ %i.kmu, %.preheader.loopexit.i.i997 ] ; 5 uses
  %.0.lcssa.i.i994 = phi i32 [ 0, %bb.kz ], [ %i.kjx, %.preheader.loopexit.i.i997 ] ; 5 uses
  %.016.lcssa.i.i9922687 = ptrtoaddr ptr %.016.lcssa.i.i992 to i64 ; 2 uses
  %.014.lcssa.i.i9932688 = ptrtoaddr ptr %.014.lcssa.i.i993 to i64
  %.018.lcssa.i.i9912690 = ptrtoaddr ptr %.018.lcssa.i.i991 to i64
  %i.kjy = icmp slt i32 %.0.lcssa.i.i994, %i.kjt
  br i1 %i.kjy, label %.lr.ph41.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph41.i.i.preheader:                           ; preds = %.preheader.i.i990
  %i.kjz = xor i32 %.0.lcssa.i.i994, -1
  %i.kka = add i32 %i.kjt, %i.kjz                 ; 2 uses
  %i.kkb = zext i32 %i.kka to i64
  %i.kkc = add nuw nsw i64 %i.kkb, 1              ; 2 uses
  %min.iters.check2694 = icmp ult i32 %i.kka, 7
  br i1 %min.iters.check2694, label %.lr.ph41.i.i.preheader4272, label %vector.memcheck2686

vector.memcheck2686:                              ; preds = %.lr.ph41.i.i.preheader
  %i.kkd = sub i64 %.014.lcssa.i.i9932688, %.016.lcssa.i.i9922687
  %diff.check2689 = icmp ugt i64 %i.kkd, -16
  %i.kke = sub i64 %.018.lcssa.i.i9912690, %.016.lcssa.i.i9922687
  %diff.check2691 = icmp ugt i64 %i.kke, -16
  %conflict.rdx2692 = or i1 %diff.check2689, %diff.check2691
  br i1 %conflict.rdx2692, label %.lr.ph41.i.i.preheader4272, label %vector.ph2695

vector.ph2695:                                    ; preds = %vector.memcheck2686
  %n.vec2696 = and i64 %i.kkc, 8589934584         ; 4 uses
  %i.kkf = trunc i64 %n.vec2696 to i32
  %i.kkg = add i32 %.0.lcssa.i.i994, %i.kkf
  %i.kkh = shl nuw nsw i64 %n.vec2696, 1          ; 3 uses
  %i.kki = getelementptr i8, ptr %.014.lcssa.i.i993, i64 %i.kkh
  %i.kkj = getelementptr i8, ptr %.016.lcssa.i.i992, i64 %i.kkh
  %i.kkk = getelementptr i8, ptr %.018.lcssa.i.i991, i64 %i.kkh
  br label %vector.body2697

vector.body2697:                                  ; preds = %vector.body2697, %vector.ph2695
  %index2698 = phi i64 [ 0, %vector.ph2695 ], [ %index.next2704, %vector.body2697 ] ; 2 uses
  %i.kkl = shl i64 %index2698, 1                  ; 3 uses
  %next.gep2699 = getelementptr i8, ptr %.014.lcssa.i.i993, i64 %i.kkl
  %next.gep2700 = getelementptr i8, ptr %.016.lcssa.i.i992, i64 %i.kkl
  %next.gep2701 = getelementptr i8, ptr %.018.lcssa.i.i991, i64 %i.kkl
  %wide.load2702 = load <8 x i16>, ptr %next.gep2699, align 2, !tbaa !57
  %i.kkm = zext <8 x i16> %wide.load2702 to <8 x i32>
  %i.kkn = shl nuw <8 x i32> %i.kkm, splat (i32 16)
  %i.kko = bitcast <8 x i32> %i.kkn to <8 x float>
  %wide.load2703 = load <8 x i16>, ptr %next.gep2701, align 2, !tbaa !57
  %i.kkp = zext <8 x i16> %wide.load2703 to <8 x i32>
  %i.kkq = shl nuw <8 x i32> %i.kkp, splat (i32 16)
  %i.kkr = bitcast <8 x i32> %i.kkq to <8 x float>
  %i.kks = fdiv fast <8 x float> %i.kko, %i.kkr
  %i.kkt = tail call fast <8 x float> @llvm.floor.v8f32(<8 x float> %i.kks)
  %i.kku = bitcast <8 x float> %i.kkt to <8 x i32>
  %i.kkv = lshr <8 x i32> %i.kku, splat (i32 16)
  %i.kkw = trunc nuw <8 x i32> %i.kkv to <8 x i16>
  store <8 x i16> %i.kkw, ptr %next.gep2700, align 2, !tbaa !57
  %index.next2704 = add nuw i64 %index2698, 8     ; 2 uses
  %i.kkx = icmp eq i64 %index.next2704, %n.vec2696
  br i1 %i.kkx, label %middle.block2705, label %vector.body2697, !llvm.loop !627

middle.block2705:                                 ; preds = %vector.body2697
  %cmp.n2706 = icmp eq i64 %i.kkc, %n.vec2696
  br i1 %cmp.n2706, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph41.i.i.preheader4272

.lr.ph41.i.i.preheader4272:                       ; preds = %vector.memcheck2686, %.lr.ph41.i.i.preheader, %middle.block2705
  %.140.i.i.ph = phi i32 [ %.0.lcssa.i.i994, %vector.memcheck2686 ], [ %.0.lcssa.i.i994, %.lr.ph41.i.i.preheader ], [ %i.kkg, %middle.block2705 ] ; 4 uses
  %.11539.i.i.ph = phi ptr [ %.014.lcssa.i.i993, %vector.memcheck2686 ], [ %.014.lcssa.i.i993, %.lr.ph41.i.i.preheader ], [ %i.kki, %middle.block2705 ] ; 3 uses
  %.11738.i.i.ph = phi ptr [ %.016.lcssa.i.i992, %vector.memcheck2686 ], [ %.016.lcssa.i.i992, %.lr.ph41.i.i.preheader ], [ %i.kkj, %middle.block2705 ] ; 3 uses
  %.11937.i.i.ph = phi ptr [ %.018.lcssa.i.i991, %vector.memcheck2686 ], [ %.018.lcssa.i.i991, %.lr.ph41.i.i.preheader ], [ %i.kkk, %middle.block2705 ] ; 3 uses
  %i.kky = sub i32 %i.kjt, %.140.i.i.ph
  %.neg4464 = add i32 %.140.i.i.ph, 1
  %xtraiter4352 = and i32 %i.kky, 1
  %lcmp.mod4353.not = icmp eq i32 %xtraiter4352, 0
  br i1 %lcmp.mod4353.not, label %.lr.ph41.i.i.prol.loopexit, label %.lr.ph41.i.i.prol

.lr.ph41.i.i.prol:                                ; preds = %.lr.ph41.i.i.preheader4272
  %i.kkz = getelementptr inbounds nuw i8, ptr %.11539.i.i.ph, i64 2
  %i.kla = load i16, ptr %.11539.i.i.ph, align 2, !tbaa !57
  %i.klb = zext i16 %i.kla to i32
  %i.klc = shl nuw i32 %i.klb, 16
  %i.kld = bitcast i32 %i.klc to float
  %i.kle = getelementptr inbounds nuw i8, ptr %.11937.i.i.ph, i64 2
  %i.klf = load i16, ptr %.11937.i.i.ph, align 2, !tbaa !57
  %i.klg = zext i16 %i.klf to i32
  %i.klh = shl nuw i32 %i.klg, 16
  %i.kli = bitcast i32 %i.klh to float
  %i.klj = fdiv fast float %i.kld, %i.kli
  %i.klk = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.klj)
  %i.kll = bitcast float %i.klk to i32
  %i.klm = lshr i32 %i.kll, 16
  %i.kln = trunc nuw i32 %i.klm to i16
  %i.klo = getelementptr inbounds nuw i8, ptr %.11738.i.i.ph, i64 2
  store i16 %i.kln, ptr %.11738.i.i.ph, align 2, !tbaa !57
  %i.klp = add nuw nsw i32 %.140.i.i.ph, 1
  br label %.lr.ph41.i.i.prol.loopexit

.lr.ph41.i.i.prol.loopexit:                       ; preds = %.lr.ph41.i.i.prol, %.lr.ph41.i.i.preheader4272
  %.140.i.i.unr = phi i32 [ %.140.i.i.ph, %.lr.ph41.i.i.preheader4272 ], [ %i.klp, %.lr.ph41.i.i.prol ]
  %.11539.i.i.unr = phi ptr [ %.11539.i.i.ph, %.lr.ph41.i.i.preheader4272 ], [ %i.kkz, %.lr.ph41.i.i.prol ]
  %.11738.i.i.unr = phi ptr [ %.11738.i.i.ph, %.lr.ph41.i.i.preheader4272 ], [ %i.klo, %.lr.ph41.i.i.prol ]
  %.11937.i.i.unr = phi ptr [ %.11937.i.i.ph, %.lr.ph41.i.i.preheader4272 ], [ %i.kle, %.lr.ph41.i.i.prol ]
  %i.klq = icmp eq i32 %i.kjt, %.neg4464
  br i1 %i.klq, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph41.i.i

.lr.ph.i.i996:                                    ; preds = %bb.kz, %.lr.ph.i.i996
  %.033.i.i = phi i32 [ %i.kmx, %.lr.ph.i.i996 ], [ 0, %bb.kz ]
  %.01432.i.i = phi ptr [ %i.kmu, %.lr.ph.i.i996 ], [ %0, %bb.kz ] ; 2 uses
  %.01631.i.i = phi ptr [ %i.kmw, %.lr.ph.i.i996 ], [ %2, %bb.kz ] ; 2 uses
  %.01830.i.i = phi ptr [ %i.kmv, %.lr.ph.i.i996 ], [ %1, %bb.kz ] ; 2 uses
  %i.klr = load i64, ptr %.01432.i.i, align 1, !tbaa !60
  %i.kls = insertelement <2 x i64> poison, i64 %i.klr, i64 0
  %i.klt = bitcast <2 x i64> %i.kls to <8 x i16>
  %i.klu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.klt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.klv = bitcast <8 x i16> %i.klu to <4 x float>
  %i.klw = load i64, ptr %.01830.i.i, align 1, !tbaa !60
  %i.klx = insertelement <2 x i64> poison, i64 %i.klw, i64 0
  %i.kly = bitcast <2 x i64> %i.klx to <8 x i16>
  %i.klz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kly, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kma = bitcast <8 x i16> %i.klz to <4 x float>
  %i.kmb = fdiv fast <4 x float> %i.klv, %i.kma   ; 4 uses
  %i.kmc = bitcast <4 x float> %i.kmb to <4 x i32>
  %i.kmd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kmb) ; 2 uses
  %i.kme = and <4 x i32> %i.kmc, splat (i32 -2147483648)
  %i.kmf = fcmp fast ule <4 x float> %i.kmd, splat (float f0x4B000000)
  %i.kmg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kmd)
  %i.kmh = sitofp fast <4 x i32> %i.kmg to <4 x float>
  %i.kmi = bitcast <4 x float> %i.kmh to <4 x i32>
  %i.kmj = or <4 x i32> %i.kme, %i.kmi
  %i.kmk = bitcast <4 x i32> %i.kmj to <4 x float> ; 2 uses
  %i.kml = fcmp fast olt <4 x float> %i.kmb, %i.kmk
  %i.kmm = select <4 x i1> %i.kml, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kmn = fsub fast <4 x float> %i.kmk, %i.kmm
  %.v.i.i = select <4 x i1> %i.kmf, <4 x float> %i.kmn, <4 x float> %i.kmb
  %i.kmo = bitcast <4 x float> %.v.i.i to <8 x i16>
  %i.kmp = shufflevector <8 x i16> %i.kmo, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.kmq = bitcast <8 x i16> %i.kmp to <4 x float>
  %i.kmr = shufflevector <4 x float> %i.kmq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.kms = bitcast <4 x float> %i.kmr to <2 x i64>
  %i.kmt = extractelement <2 x i64> %i.kms, i64 0
  store i64 %i.kmt, ptr %.01631.i.i, align 1, !tbaa !60
  %i.kmu = getelementptr inbounds nuw i8, ptr %.01432.i.i, i64 8 ; 2 uses
  %i.kmv = getelementptr inbounds nuw i8, ptr %.01830.i.i, i64 8 ; 2 uses
  %i.kmw = getelementptr inbounds nuw i8, ptr %.01631.i.i, i64 8 ; 2 uses
  %i.kmx = add nuw nsw i32 %.033.i.i, 4           ; 2 uses
  %i.kmy = or disjoint i32 %i.kmx, 3
  %i.kmz = icmp slt i32 %i.kmy, %i.kjt
  br i1 %i.kmz, label %.lr.ph.i.i996, label %.preheader.loopexit.i.i997, !llvm.loop !628

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.prol.loopexit, %.lr.ph41.i.i
  %.140.i.i = phi i32 [ %i.kog, %.lr.ph41.i.i ], [ %.140.i.i.unr, %.lr.ph41.i.i.prol.loopexit ]
  %.11539.i.i = phi ptr [ %i.knq, %.lr.ph41.i.i ], [ %.11539.i.i.unr, %.lr.ph41.i.i.prol.loopexit ] ; 3 uses
  %.11738.i.i = phi ptr [ %i.kof, %.lr.ph41.i.i ], [ %.11738.i.i.unr, %.lr.ph41.i.i.prol.loopexit ] ; 3 uses
  %.11937.i.i = phi ptr [ %i.knv, %.lr.ph41.i.i ], [ %.11937.i.i.unr, %.lr.ph41.i.i.prol.loopexit ] ; 3 uses
  %i.kna = getelementptr inbounds nuw i8, ptr %.11539.i.i, i64 2
  %i.knb = load i16, ptr %.11539.i.i, align 2, !tbaa !57
  %i.knc = zext i16 %i.knb to i32
  %i.knd = shl nuw i32 %i.knc, 16
  %i.kne = bitcast i32 %i.knd to float
  %i.knf = getelementptr inbounds nuw i8, ptr %.11937.i.i, i64 2
  %i.kng = load i16, ptr %.11937.i.i, align 2, !tbaa !57
  %i.knh = zext i16 %i.kng to i32
  %i.kni = shl nuw i32 %i.knh, 16
  %i.knj = bitcast i32 %i.kni to float
  %i.knk = fdiv fast float %i.kne, %i.knj
  %i.knl = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.knk)
end_hunk_5
