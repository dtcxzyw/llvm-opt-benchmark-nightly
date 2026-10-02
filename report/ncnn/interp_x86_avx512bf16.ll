Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512bf16?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.5:bb.a
  %i.va = load ptr, ptr %i.uy, align 8, !tbaa !40
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  %i.vc = load ptr, ptr %i.vb, align 8
  invoke void %i.vc(ptr noundef nonnull align 8 dereferenceable(8) %i.uy, ptr noundef %i.uz)
          to label %_ZN4ncnn3MatD2Ev.exit.i33 unwind label %bb.ay, !inline_history !0

bb.aw:                                            ; preds = %bb.au
  %.not.i130.i35 = icmp eq ptr %i.uz, null
  br i1 %.not.i130.i35, label %_ZN4ncnn3MatD2Ev.exit.i33, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.uz) #3
  br label %_ZN4ncnn3MatD2Ev.exit.i33

bb.ay:                                            ; preds = %bb.av
  %i.vd = landingpad { ptr, i32 }
          catch ptr null
  %i.ve = extractvalue { ptr, i32 } %i.vd, 0
  call void @__clang_call_terminate(ptr %i.ve) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit.i33:                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  br label %.body

_ZN4ncnnL33resize_bilinear_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit116.i, %bb.ai, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  %.pre = load i32, ptr %5, align 4, !tbaa !15
  br label %bb.az

bb.az:                                            ; preds = %_ZN4ncnnL33resize_bilinear_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.aa
  %i.vf = phi i32 [ %.pre, %_ZN4ncnnL33resize_bilinear_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.ln, %bb.aa ] ; 2 uses
  %i.vg = icmp eq i32 %i.vf, 4
  br i1 %i.vg, label %bb.ba, label %bb.by

bb.ba:                                            ; preds = %bb.az
  %i.vh = load ptr, ptr %6, align 8, !tbaa !20    ; 4 uses
  %i.vi = load ptr, ptr %7, align 8, !tbaa !18    ; 8 uses
  %i.vj = load ptr, ptr %8, align 8, !tbaa !20
  %i.vk = load ptr, ptr %9, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #3
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.az, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc112 unwind label %bb.cy

.noexc112:                                        ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #3
  store i64 0, ptr %i.aj, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.az, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i78 unwind label %bb.bn

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i78:       ; preds = %.noexc112
  %i.vl = icmp sgt i32 %i.ba, 0
  br i1 %i.vl, label %.lr.ph643.i, label %._crit_edge.i79

.lr.ph643.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i78
  %i.vm = load ptr, ptr %13, align 8, !tbaa !21
  %i.vn = load ptr, ptr %12, align 8, !tbaa !21
  %i.vo = icmp sgt i32 %i.az, 3                   ; 3 uses
  %i.vp = shl i32 %i.az, 2                        ; 7 uses
  %i.vq = zext nneg i32 %i.vp to i64              ; 2 uses
  %invariant.op.i.i80 = add nsw i64 %i.vq, -7
  %wide.trip.count682.i = zext nneg i32 %i.ba to i64
  %invariant.op.i = add nsw i64 %i.bh, -3         ; 2 uses
  %invariant.op704.i = add nsw i64 %i.bh, -1      ; 2 uses
  %wide.trip.count.i81 = zext i32 %i.az to i64    ; 2 uses
  %i.vr = mul i64 %i.be, %i.bh
  %i.vs = mul i64 %i.av, %i.ay                    ; 3 uses
  br label %bb.bo

._crit_edge.i79:                                  ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89, %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i78
  %i.vt = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 2 uses
  %.not.i468.i = icmp eq ptr %i.vt, null
  br i1 %.not.i468.i, label %_ZN4ncnn3MatD2Ev.exit466.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i79
  %i.vu = atomicrmw add ptr %i.vt, i32 -1 acq_rel, align 4
  %i.vv = icmp eq i32 %i.vu, 1
  br i1 %i.vv, label %bb.bc, label %_ZN4ncnn3MatD2Ev.exit466.i

bb.bc:                                            ; preds = %bb.bb
  %i.vw = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 3 uses
  %.not3.i469.i = icmp eq ptr %i.vw, null
  %i.vx = load ptr, ptr %13, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i469.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vy = load ptr, ptr %i.vw, align 8, !tbaa !40
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8
  invoke void %i.wa(ptr noundef nonnull align 8 dereferenceable(8) %i.vw, ptr noundef %i.vx)
          to label %_ZN4ncnn3MatD2Ev.exit466.i unwind label %bb.bg, !inline_history !0

bb.be:                                            ; preds = %bb.bc
  %.not.i483.i = icmp eq ptr %i.vx, null
  br i1 %.not.i483.i, label %_ZN4ncnn3MatD2Ev.exit466.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %i.vx) #3
  br label %_ZN4ncnn3MatD2Ev.exit466.i

bb.bg:                                            ; preds = %bb.bd
  %i.wb = landingpad { ptr, i32 }
          catch ptr null
  %i.wc = extractvalue { ptr, i32 } %i.wb, 0
  call void @__clang_call_terminate(ptr %i.wc) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit466.i:                       ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb, %._crit_edge.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #3
  %i.wd = load ptr, ptr %i.ae, align 8, !tbaa !37 ; 2 uses
  %.not.i472.i = icmp eq ptr %i.wd, null
  br i1 %.not.i472.i, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit466.i
  %i.we = atomicrmw add ptr %i.wd, i32 -1 acq_rel, align 4
  %i.wf = icmp eq i32 %i.we, 1
  br i1 %i.wf, label %bb.bi, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.wg = load ptr, ptr %i.af, align 8, !tbaa !38 ; 3 uses
  %.not3.i473.i = icmp eq ptr %i.wg, null
  %i.wh = load ptr, ptr %12, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i473.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.wi = load ptr, ptr %i.wg, align 8, !tbaa !40
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wk = load ptr, ptr %i.wj, align 8
  invoke void %i.wk(ptr noundef nonnull align 8 dereferenceable(8) %i.wg, ptr noundef %i.wh)
          to label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.bm, !inline_history !0

bb.bk:                                            ; preds = %bb.bi
  %.not.i481.i = icmp eq ptr %i.wh, null
  br i1 %.not.i481.i, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.wh) #3
  br label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.bm:                                            ; preds = %bb.bj
  %i.wl = landingpad { ptr, i32 }
          catch ptr null
  %i.wm = extractvalue { ptr, i32 } %i.wl, 0
  call void @__clang_call_terminate(ptr %i.wm) #20
  unreachable

bb.bn:                                            ; preds = %.noexc112
  %i.wn = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #3
  %i.wo = load ptr, ptr %i.ae, align 8, !tbaa !37 ; 2 uses
  %.not.i476.i = icmp eq ptr %i.wo, null
  br i1 %.not.i476.i, label %_ZN4ncnn3MatD2Ev.exit.i77, label %bb.bs

bb.bo:                                            ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89, %.lr.ph643.i
  %indvars.iv679.i = phi i64 [ 0, %.lr.ph643.i ], [ %indvars.iv.next680.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 3 uses
  %.0642.i = phi ptr [ %i.vj, %.lr.ph643.i ], [ %i.ati, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 3 uses
  %.0332640.i = phi i32 [ -2, %.lr.ph643.i ], [ %i.wq, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 2 uses
  %.0333639.i = phi ptr [ %i.vm, %.lr.ph643.i ], [ %.1334.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 8 uses
  %.0335638.i = phi ptr [ %i.vn, %.lr.ph643.i ], [ %.1336.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i89 ] ; 11 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv679.i
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !15 ; 6 uses
  %i.wr = icmp eq i32 %i.wq, %.0332640.i
  br i1 %i.wr, label %.loopexit.i82, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ws = add nsw i32 %.0332640.i, 1
  %i.wt = icmp eq i32 %i.wq, %i.ws
  br i1 %i.wt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.wu = add nsw i32 %i.wq, 1
  %i.wv = sext i32 %i.wu to i64
  %i.ww = mul i64 %i.vs, %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ww ; 7 uses
  br i1 %i.vo, label %.lr.ph627.i, label %.preheader610.i

.preheader610.loopexit.i:                         ; preds = %.lr.ph627.i
  %i.wy = trunc nuw nsw i64 %indvars.iv.next665.i to i32
  br label %.preheader610.i

.preheader610.i:                                  ; preds = %.preheader610.loopexit.i, %bb.bq
  %.0328.lcssa.i = phi ptr [ %i.vh, %bb.bq ], [ %i.aak, %.preheader610.loopexit.i ] ; 2 uses
  %.0325.lcssa.i = phi i32 [ 0, %bb.bq ], [ %i.wy, %.preheader610.loopexit.i ] ; 3 uses
  %i.wz = or disjoint i32 %.0325.lcssa.i, 1
  %i.xa = icmp slt i32 %i.wz, %i.az
  br i1 %i.xa, label %.lr.ph632.preheader.i, label %.preheader.i

.lr.ph632.preheader.i:                            ; preds = %.preheader610.i
  %i.xb = zext nneg i32 %.0325.lcssa.i to i64     ; 2 uses
  %i.xc = add nuw nsw i64 %i.xb, 1
  br label %.lr.ph632.i

.lr.ph627.i:                                      ; preds = %bb.bq, %.lr.ph627.i
  %indvars.iv664.i = phi i64 [ %indvars.iv.next665.i, %.lr.ph627.i ], [ 0, %bb.bq ] ; 3 uses
  %.0328625.i = phi ptr [ %i.aak, %.lr.ph627.i ], [ %i.vh, %bb.bq ] ; 5 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv664.i
  %18 = getelementptr inbounds nuw i8, ptr %.0328625.i, <3 x i64> <i64 0, i64 8, i64 16>
  %i.xe = shufflevector <3 x ptr> %18, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.xf = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.xe, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17
  %i.xg = getelementptr inbounds nuw i8, ptr %.0328625.i, i64 24
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !17
  %i.xi = shufflevector <8 x float> %i.xf, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xj = insertelement <4 x float> poison, float %i.xh, i64 0
  %i.xk = shufflevector <4 x float> %i.xj, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xl = shufflevector <16 x float> %i.xi, <16 x float> %i.xk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.xm = getelementptr inbounds nuw i8, ptr %.0328625.i, <3 x i64> <i64 4, i64 12, i64 20>
  %i.xn = shufflevector <3 x ptr> %i.xm, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.xo = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.xn, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17
  %i.xp = getelementptr inbounds nuw i8, ptr %.0328625.i, i64 28
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !17
  %i.xr = shufflevector <8 x float> %i.xo, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xs = insertelement <4 x float> poison, float %i.xq, i64 0
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xu = shufflevector <16 x float> %i.xr, <16 x float> %i.xt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.xv = load <4 x i32>, ptr %i.xd, align 4, !tbaa !15
  %i.xw = shl nsw <4 x i32> %i.xv, splat (i32 2)  ; 4 uses
  %i.xx = extractelement <4 x i32> %i.xw, i64 0
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.xy ; 2 uses
  %i.ya = load i64, ptr %i.xz, align 1, !tbaa !32
  %i.yb = insertelement <2 x i64> poison, i64 %i.ya, i64 0
  %i.yc = bitcast <2 x i64> %i.yb to <8 x i16>
  %i.yd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ye = bitcast <8 x i16> %i.yd to <4 x float>
  %i.yf = extractelement <4 x i32> %i.xw, i64 1
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.yg ; 2 uses
  %i.yi = load i64, ptr %i.yh, align 1, !tbaa !32
  %i.yj = insertelement <2 x i64> poison, i64 %i.yi, i64 0
  %i.yk = bitcast <2 x i64> %i.yj to <8 x i16>
  %i.yl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ym = bitcast <8 x i16> %i.yl to <4 x float>
  %i.yn = extractelement <4 x i32> %i.xw, i64 2
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.yo ; 2 uses
  %i.yq = load i64, ptr %i.yp, align 1, !tbaa !32
  %i.yr = insertelement <2 x i64> poison, i64 %i.yq, i64 0
  %i.ys = bitcast <2 x i64> %i.yr to <8 x i16>
  %i.yt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ys, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yu = bitcast <8 x i16> %i.yt to <4 x float>
  %i.yv = extractelement <4 x i32> %i.xw, i64 3
  %i.yw = sext i32 %i.yv to i64
  %i.yx = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.yw ; 2 uses
  %i.yy = load i64, ptr %i.yx, align 1, !tbaa !32
  %i.yz = insertelement <2 x i64> poison, i64 %i.yy, i64 0
  %i.za = bitcast <2 x i64> %i.yz to <8 x i16>
  %i.zb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.za, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zc = bitcast <8 x i16> %i.zb to <4 x float>
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.ze = load i64, ptr %i.zd, align 1, !tbaa !32
  %i.zf = insertelement <2 x i64> poison, i64 %i.ze, i64 0
  %i.zg = bitcast <2 x i64> %i.zf to <8 x i16>
  %i.zh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zi = bitcast <8 x i16> %i.zh to <4 x float>
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.zk = load i64, ptr %i.zj, align 1, !tbaa !32
  %i.zl = insertelement <2 x i64> poison, i64 %i.zk, i64 0
  %i.zm = bitcast <2 x i64> %i.zl to <8 x i16>
  %i.zn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zo = bitcast <8 x i16> %i.zn to <4 x float>
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.zq = load i64, ptr %i.zp, align 1, !tbaa !32
  %i.zr = insertelement <2 x i64> poison, i64 %i.zq, i64 0
  %i.zs = bitcast <2 x i64> %i.zr to <8 x i16>
  %i.zt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zu = bitcast <8 x i16> %i.zt to <4 x float>
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.zw = load i64, ptr %i.zv, align 1, !tbaa !32
  %i.zx = insertelement <2 x i64> poison, i64 %i.zw, i64 0
  %i.zy = bitcast <2 x i64> %i.zx to <8 x i16>
  %i.zz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aaa = bitcast <8 x i16> %i.zz to <4 x float>
  %i.aab = shufflevector <4 x float> %i.ye, <4 x float> %i.ym, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aac = shufflevector <4 x float> %i.yu, <4 x float> %i.zc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aad = shufflevector <16 x float> %i.aab, <16 x float> %i.aac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aae = shufflevector <4 x float> %i.zi, <4 x float> %i.zo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaf = shufflevector <4 x float> %i.zu, <4 x float> %i.aaa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aag = shufflevector <16 x float> %i.aae, <16 x float> %i.aaf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aah = fmul fast <16 x float> %i.aad, %i.xl
  %i.aai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aag, <16 x float> nofpclass(nan inf) %i.xu, <16 x float> nofpclass(nan inf) %i.aah)
  %.idx.i111 = shl nuw nsw i64 %indvars.iv664.i, 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0335638.i, i64 %.idx.i111
  store <16 x float> %i.aai, ptr %i.aaj, align 1, !tbaa !32
  %i.aak = getelementptr inbounds nuw i8, ptr %.0328625.i, i64 32 ; 2 uses
  %indvars.iv.next665.i = add nuw nsw i64 %indvars.iv664.i, 4 ; 3 uses
  %i.aal = icmp slt i64 %indvars.iv.next665.i, %invariant.op.i
  br i1 %i.aal, label %.lr.ph627.i, label %.preheader610.loopexit.i, !llvm.loop !110

.preheader.loopexit.i:                            ; preds = %.lr.ph632.i
  %i.aam = trunc nuw nsw i64 %indvars.iv.next670.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader610.i
  %.1329.lcssa.i = phi ptr [ %.0328.lcssa.i, %.preheader610.i ], [ %i.acl, %.preheader.loopexit.i ]
  %.1326.lcssa.i = phi i32 [ %.0325.lcssa.i, %.preheader610.i ], [ %i.aam, %.preheader.loopexit.i ] ; 2 uses
  %i.aan = icmp slt i32 %.1326.lcssa.i, %i.az
  br i1 %i.aan, label %.lr.ph637.preheader.i, label %.loopexit.i82

.lr.ph637.preheader.i:                            ; preds = %.preheader.i
  %i.aao = zext nneg i32 %.1326.lcssa.i to i64
  br label %.lr.ph637.i

.lr.ph632.i:                                      ; preds = %.lr.ph632.i, %.lr.ph632.preheader.i
  %indvars.iv669.i = phi i64 [ %i.xb, %.lr.ph632.preheader.i ], [ %indvars.iv.next670.i, %.lr.ph632.i ] ; 3 uses
  %indvars.iv667.i = phi i64 [ %i.xc, %.lr.ph632.preheader.i ], [ %indvars.iv.next668.i, %.lr.ph632.i ] ; 2 uses
  %.1329630.i = phi ptr [ %.0328.lcssa.i, %.lr.ph632.preheader.i ], [ %i.acl, %.lr.ph632.i ] ; 5 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv669.i
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !15
  %i.aar = shl nsw i32 %i.aaq, 2
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv667.i
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !15
  %i.aau = load float, ptr %.1329630.i, align 4, !tbaa !17
  %i.aav = getelementptr inbounds nuw i8, ptr %.1329630.i, i64 8
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !17
  %i.aax = insertelement <4 x float> poison, float %i.aau, i64 0
  %i.aay = insertelement <4 x float> poison, float %i.aaw, i64 0
  %i.aaz = shufflevector <4 x float> %i.aax, <4 x float> %i.aay, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aba = getelementptr inbounds nuw i8, ptr %.1329630.i, i64 4
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !17
  %i.abc = getelementptr inbounds nuw i8, ptr %.1329630.i, i64 12
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !17
  %i.abe = insertelement <4 x float> poison, float %i.abb, i64 0
  %i.abf = insertelement <4 x float> poison, float %i.abd, i64 0
  %i.abg = shufflevector <4 x float> %i.abe, <4 x float> %i.abf, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.abh = sext i32 %i.aar to i64
  %i.abi = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.abh ; 2 uses
  %i.abj = load i64, ptr %i.abi, align 1, !tbaa !32
  %i.abk = insertelement <2 x i64> poison, i64 %i.abj, i64 0
  %i.abl = bitcast <2 x i64> %i.abk to <8 x i16>
  %i.abm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abn = shl nsw i32 %i.aat, 2
  %i.abo = sext i32 %i.abn to i64
  %i.abp = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.abo ; 2 uses
  %i.abq = load i64, ptr %i.abp, align 1, !tbaa !32
  %i.abr = insertelement <2 x i64> poison, i64 %i.abq, i64 0
  %i.abs = bitcast <2 x i64> %i.abr to <8 x i16>
  %i.abt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abu = shufflevector <8 x i16> %i.abm, <8 x i16> %i.abt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abv = bitcast <16 x i16> %i.abu to <8 x float>
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.abx = load i64, ptr %i.abw, align 1, !tbaa !32
  %i.aby = insertelement <2 x i64> poison, i64 %i.abx, i64 0
  %i.abz = bitcast <2 x i64> %i.aby to <8 x i16>
  %i.aca = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.acc = load i64, ptr %i.acb, align 1, !tbaa !32
  %i.acd = insertelement <2 x i64> poison, i64 %i.acc, i64 0
  %i.ace = bitcast <2 x i64> %i.acd to <8 x i16>
  %i.acf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ace, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acg = shufflevector <8 x i16> %i.aca, <8 x i16> %i.acf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ach = bitcast <16 x i16> %i.acg to <8 x float>
  %i.aci = fmul fast <8 x float> %i.aaz, %i.abv
  %i.acj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ach, <8 x float> nofpclass(nan inf) %i.abg, <8 x float> nofpclass(nan inf) %i.aci)
  %.idx697.i = shl nuw nsw i64 %indvars.iv669.i, 4
  %i.ack = getelementptr inbounds nuw i8, ptr %.0335638.i, i64 %.idx697.i
  store <8 x float> %i.acj, ptr %i.ack, align 1, !tbaa !32
  %i.acl = getelementptr inbounds nuw i8, ptr %.1329630.i, i64 16 ; 2 uses
  %indvars.iv.next670.i = add nuw nsw i64 %indvars.iv669.i, 2 ; 3 uses
  %i.acm = icmp slt i64 %indvars.iv.next670.i, %invariant.op704.i
  %indvars.iv.next668.i = add nuw nsw i64 %indvars.iv667.i, 2
  br i1 %i.acm, label %.lr.ph632.i, label %.preheader.loopexit.i, !llvm.loop !111

.lr.ph637.i:                                      ; preds = %.lr.ph637.i, %.lr.ph637.preheader.i
  %indvars.iv674.i = phi i64 [ %i.aao, %.lr.ph637.preheader.i ], [ %indvars.iv.next675.i, %.lr.ph637.i ] ; 3 uses
  %.2330635.i = phi ptr [ %.1329.lcssa.i, %.lr.ph637.preheader.i ], [ %i.adn, %.lr.ph637.i ] ; 3 uses
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv674.i
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !15
  %i.acp = shl nsw i32 %i.aco, 2
  %i.acq = sext i32 %i.acp to i64
  %i.acr = getelementptr inbounds [2 x i8], ptr %i.wx, i64 %i.acq ; 2 uses
  %i.acs = load float, ptr %.2330635.i, align 4, !tbaa !17
  %i.act = insertelement <4 x float> poison, float %i.acs, i64 0
  %i.acu = shufflevector <4 x float> %i.act, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acv = getelementptr inbounds nuw i8, ptr %.2330635.i, i64 4
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !17
  %i.acx = insertelement <4 x float> poison, float %i.acw, i64 0
  %i.acy = shufflevector <4 x float> %i.acx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acz = load i64, ptr %i.acr, align 1, !tbaa !32
  %i.ada = insertelement <2 x i64> poison, i64 %i.acz, i64 0
  %i.adb = bitcast <2 x i64> %i.ada to <8 x i16>
  %i.adc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.adb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.add = bitcast <8 x i16> %i.adc to <4 x float>
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.adf = load i64, ptr %i.ade, align 1, !tbaa !32
  %i.adg = insertelement <2 x i64> poison, i64 %i.adf, i64 0
  %i.adh = bitcast <2 x i64> %i.adg to <8 x i16>
  %i.adi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.adh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.adj = bitcast <8 x i16> %i.adi to <4 x float>
  %i.adk = fmul fast <4 x float> %i.acu, %i.add
  %i.adl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.adj, <4 x float> nofpclass(nan inf) %i.acy, <4 x float> nofpclass(nan inf) %i.adk)
  %.idx698.i = shl nuw nsw i64 %indvars.iv674.i, 4
  %i.adm = getelementptr inbounds nuw i8, ptr %.0335638.i, i64 %.idx698.i
  store <4 x float> %i.adl, ptr %i.adm, align 16, !tbaa !32
  %i.adn = getelementptr inbounds nuw i8, ptr %.2330635.i, i64 8
  %indvars.iv.next675.i = add nuw nsw i64 %indvars.iv674.i, 1 ; 2 uses
  %exitcond678.not.i = icmp eq i64 %indvars.iv.next675.i, %wide.trip.count.i81
  br i1 %exitcond678.not.i, label %.loopexit.i82, label %.lr.ph637.i, !llvm.loop !112

bb.br:                                            ; preds = %bb.bp
  %i.ado = sext i32 %i.wq to i64
  %i.adp = mul i64 %i.vs, %i.ado
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.adp ; 7 uses
  %i.adr = add nsw i32 %i.wq, 1
  %i.ads = sext i32 %i.adr to i64
  %i.adt = mul i64 %i.vs, %i.ads
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.adt ; 7 uses
  br i1 %i.vo, label %.lr.ph.i108, label %.preheader613.i

.preheader613.loopexit.i:                         ; preds = %.lr.ph.i108
  %i.adv = trunc nuw nsw i64 %indvars.iv.next.i110 to i32
  br label %.preheader613.i

.preheader613.i:                                  ; preds = %.preheader613.loopexit.i, %bb.br
  %.0322.lcssa.i = phi ptr [ %i.vh, %bb.br ], [ %i.ajn, %.preheader613.loopexit.i ] ; 2 uses
  %.0321.lcssa.i = phi i32 [ 0, %bb.br ], [ %i.adv, %.preheader613.loopexit.i ] ; 3 uses
  %i.adw = or disjoint i32 %.0321.lcssa.i, 1
  %i.adx = icmp slt i32 %i.adw, %i.az
  br i1 %i.adx, label %.lr.ph619.preheader.i, label %.preheader611.i

.lr.ph619.preheader.i:                            ; preds = %.preheader613.i
  %i.ady = zext nneg i32 %.0321.lcssa.i to i64    ; 2 uses
  %i.adz = add nuw nsw i64 %i.ady, 1
  br label %.lr.ph619.i

.lr.ph.i108:                                      ; preds = %bb.br, %.lr.ph.i108
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i110, %.lr.ph.i108 ], [ 0, %bb.br ] ; 3 uses
  %.0322614.i = phi ptr [ %i.ajn, %.lr.ph.i108 ], [ %i.vh, %bb.br ] ; 5 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i109
  %19 = getelementptr inbounds nuw i8, ptr %.0322614.i, <3 x i64> <i64 0, i64 8, i64 16>
  %i.aeb = shufflevector <3 x ptr> %19, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.aec = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.aeb, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17
  %i.aed = getelementptr inbounds nuw i8, ptr %.0322614.i, i64 24
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !17
  %i.aef = shufflevector <8 x float> %i.aec, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aeg = insertelement <4 x float> poison, float %i.aee, i64 0
  %i.aeh = shufflevector <4 x float> %i.aeg, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aei = shufflevector <16 x float> %i.aef, <16 x float> %i.aeh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.0322614.i, <3 x i64> <i64 4, i64 12, i64 20>
  %i.aek = shufflevector <3 x ptr> %i.aej, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.ael = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.aek, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17
  %i.aem = getelementptr inbounds nuw i8, ptr %.0322614.i, i64 28
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !17
  %i.aeo = shufflevector <8 x float> %i.ael, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aep = insertelement <4 x float> poison, float %i.aen, i64 0
  %i.aeq = shufflevector <4 x float> %i.aep, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aer = shufflevector <16 x float> %i.aeo, <16 x float> %i.aeq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.aes = load <4 x i32>, ptr %i.aea, align 4, !tbaa !15
  %i.aet = shl nsw <4 x i32> %i.aes, splat (i32 2) ; 4 uses
  %i.aeu = extractelement <4 x i32> %i.aet, i64 0
  %i.aev = sext i32 %i.aeu to i64                 ; 2 uses
  %i.aew = getelementptr inbounds [2 x i8], ptr %i.adq, i64 %i.aev ; 2 uses
  %i.aex = load i64, ptr %i.aew, align 1, !tbaa !32
  %i.aey = insertelement <2 x i64> poison, i64 %i.aex, i64 0
  %i.aez = bitcast <2 x i64> %i.aey to <8 x i16>
  %i.afa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aez, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afb = bitcast <8 x i16> %i.afa to <4 x float>
  %i.afc = extractelement <4 x i32> %i.aet, i64 1
  %i.afd = sext i32 %i.afc to i64                 ; 2 uses
  %i.afe = getelementptr inbounds [2 x i8], ptr %i.adq, i64 %i.afd ; 2 uses
  %i.aff = load i64, ptr %i.afe, align 1, !tbaa !32
  %i.afg = insertelement <2 x i64> poison, i64 %i.aff, i64 0
  %i.afh = bitcast <2 x i64> %i.afg to <8 x i16>
  %i.afi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afj = bitcast <8 x i16> %i.afi to <4 x float>
  %i.afk = extractelement <4 x i32> %i.aet, i64 2
  %i.afl = sext i32 %i.afk to i64                 ; 2 uses
  %i.afm = getelementptr inbounds [2 x i8], ptr %i.adq, i64 %i.afl ; 2 uses
  %i.afn = load i64, ptr %i.afm, align 1, !tbaa !32
  %i.afo = insertelement <2 x i64> poison, i64 %i.afn, i64 0
  %i.afp = bitcast <2 x i64> %i.afo to <8 x i16>
  %i.afq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afr = bitcast <8 x i16> %i.afq to <4 x float>
  %i.afs = extractelement <4 x i32> %i.aet, i64 3
  %i.aft = sext i32 %i.afs to i64                 ; 2 uses
  %i.afu = getelementptr inbounds [2 x i8], ptr %i.adq, i64 %i.aft ; 2 uses
  %i.afv = load i64, ptr %i.afu, align 1, !tbaa !32
  %i.afw = insertelement <2 x i64> poison, i64 %i.afv, i64 0
  %i.afx = bitcast <2 x i64> %i.afw to <8 x i16>
  %i.afy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afz = bitcast <8 x i16> %i.afy to <4 x float>
  %i.aga = getelementptr inbounds nuw i8, ptr %i.aew, i64 8
  %i.agb = load i64, ptr %i.aga, align 1, !tbaa !32
  %i.agc = insertelement <2 x i64> poison, i64 %i.agb, i64 0
  %i.agd = bitcast <2 x i64> %i.agc to <8 x i16>
  %i.age = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.agd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agf = bitcast <8 x i16> %i.age to <4 x float>
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afe, i64 8
  %i.agh = load i64, ptr %i.agg, align 1, !tbaa !32
  %i.agi = insertelement <2 x i64> poison, i64 %i.agh, i64 0
  %i.agj = bitcast <2 x i64> %i.agi to <8 x i16>
  %i.agk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.agj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agl = bitcast <8 x i16> %i.agk to <4 x float>
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %i.agn = load i64, ptr %i.agm, align 1, !tbaa !32
  %i.ago = insertelement <2 x i64> poison, i64 %i.agn, i64 0
  %i.agp = bitcast <2 x i64> %i.ago to <8 x i16>
  %i.agq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.agp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agr = bitcast <8 x i16> %i.agq to <4 x float>
  %i.ags = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.agt = load i64, ptr %i.ags, align 1, !tbaa !32
  %i.agu = insertelement <2 x i64> poison, i64 %i.agt, i64 0
  %i.agv = bitcast <2 x i64> %i.agu to <8 x i16>
  %i.agw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.agv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agx = bitcast <8 x i16> %i.agw to <4 x float>
  %i.agy = shufflevector <4 x float> %i.afb, <4 x float> %i.afj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agz = shufflevector <4 x float> %i.afr, <4 x float> %i.afz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aha = shufflevector <16 x float> %i.agy, <16 x float> %i.agz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ahb = shufflevector <4 x float> %i.agf, <4 x float> %i.agl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahc = shufflevector <4 x float> %i.agr, <4 x float> %i.agx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahd = shufflevector <16 x float> %i.ahb, <16 x float> %i.ahc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ahe = fmul fast <16 x float> %i.aha, %i.aei
  %i.ahf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahd, <16 x float> nofpclass(nan inf) %i.aer, <16 x float> nofpclass(nan inf) %i.ahe)
  %i.ahg = shl nuw nsw i64 %indvars.iv.i109, 2    ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %.0335638.i, i64 %i.ahg
  store <16 x float> %i.ahf, ptr %i.ahh, align 1, !tbaa !32
  %i.ahi = getelementptr inbounds [2 x i8], ptr %i.adu, i64 %i.aev ; 2 uses
  %i.ahj = load i64, ptr %i.ahi, align 1, !tbaa !32
  %i.ahk = insertelement <2 x i64> poison, i64 %i.ahj, i64 0
  %i.ahl = bitcast <2 x i64> %i.ahk to <8 x i16>
  %i.ahm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ahl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahn = bitcast <8 x i16> %i.ahm to <4 x float>
  %i.aho = getelementptr inbounds [2 x i8], ptr %i.adu, i64 %i.afd ; 2 uses
  %i.ahp = load i64, ptr %i.aho, align 1, !tbaa !32
  %i.ahq = insertelement <2 x i64> poison, i64 %i.ahp, i64 0
  %i.ahr = bitcast <2 x i64> %i.ahq to <8 x i16>
  %i.ahs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ahr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aht = bitcast <8 x i16> %i.ahs to <4 x float>
  %i.ahu = getelementptr inbounds [2 x i8], ptr %i.adu, i64 %i.afl ; 2 uses
  %i.ahv = load i64, ptr %i.ahu, align 1, !tbaa !32
  %i.ahw = insertelement <2 x i64> poison, i64 %i.ahv, i64 0
  %i.ahx = bitcast <2 x i64> %i.ahw to <8 x i16>
  %i.ahy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ahx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahz = bitcast <8 x i16> %i.ahy to <4 x float>
  %i.aia = getelementptr inbounds [2 x i8], ptr %i.adu, i64 %i.aft ; 2 uses
  %i.aib = load i64, ptr %i.aia, align 1, !tbaa !32
  %i.aic = insertelement <2 x i64> poison, i64 %i.aib, i64 0
  %i.aid = bitcast <2 x i64> %i.aic to <8 x i16>
  %i.aie = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aid, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aif = bitcast <8 x i16> %i.aie to <4 x float>
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.aih = load i64, ptr %i.aig, align 1, !tbaa !32
  %i.aii = insertelement <2 x i64> poison, i64 %i.aih, i64 0
  %i.aij = bitcast <2 x i64> %i.aii to <8 x i16>
  %i.aik = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aij, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ail = bitcast <8 x i16> %i.aik to <4 x float>
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  %i.ain = load i64, ptr %i.aim, align 1, !tbaa !32
  %i.aio = insertelement <2 x i64> poison, i64 %i.ain, i64 0
  %i.aip = bitcast <2 x i64> %i.aio to <8 x i16>
  %i.aiq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aip, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.air = bitcast <8 x i16> %i.aiq to <4 x float>
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ait = load i64, ptr %i.ais, align 1, !tbaa !32
  %i.aiu = insertelement <2 x i64> poison, i64 %i.ait, i64 0
  %i.aiv = bitcast <2 x i64> %i.aiu to <8 x i16>
  %i.aiw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aiv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aix = bitcast <8 x i16> %i.aiw to <4 x float>
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %i.aiz = load i64, ptr %i.aiy, align 1, !tbaa !32
  %i.aja = insertelement <2 x i64> poison, i64 %i.aiz, i64 0
  %i.ajb = bitcast <2 x i64> %i.aja to <8 x i16>
  %i.ajc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ajb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ajd = bitcast <8 x i16> %i.ajc to <4 x float>
  %i.aje = shufflevector <4 x float> %i.ahn, <4 x float> %i.aht, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajf = shufflevector <4 x float> %i.ahz, <4 x float> %i.aif, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajg = shufflevector <16 x float> %i.aje, <16 x float> %i.ajf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ajh = shufflevector <4 x float> %i.ail, <4 x float> %i.air, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aji = shufflevector <4 x float> %i.aix, <4 x float> %i.ajd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajj = shufflevector <16 x float> %i.ajh, <16 x float> %i.aji, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ajk = fmul fast <16 x float> %i.ajg, %i.aei
  %i.ajl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ajj, <16 x float> nofpclass(nan inf) %i.aer, <16 x float> nofpclass(nan inf) %i.ajk)
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %.0333639.i, i64 %i.ahg
  store <16 x float> %i.ajl, ptr %i.ajm, align 1, !tbaa !32
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0322614.i, i64 32 ; 2 uses
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i109, 4 ; 3 uses
  %i.ajo = icmp slt i64 %indvars.iv.next.i110, %invariant.op.i
  br i1 %i.ajo, label %.lr.ph.i108, label %.preheader613.loopexit.i, !llvm.loop !113

.preheader611.loopexit.i:                         ; preds = %.lr.ph619.i
  %i.ajp = trunc nuw nsw i64 %indvars.iv.next657.i to i32
  br label %.preheader611.i

.preheader611.i:                                  ; preds = %.preheader611.loopexit.i, %.preheader613.i
  %.1323.lcssa.i = phi ptr [ %.0322.lcssa.i, %.preheader613.i ], [ %i.amq, %.preheader611.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.0321.lcssa.i, %.preheader613.i ], [ %i.ajp, %.preheader611.loopexit.i ] ; 2 uses
  %i.ajq = icmp slt i32 %.1.lcssa.i, %i.az
  br i1 %i.ajq, label %.lr.ph624.preheader.i, label %.loopexit.i82

.lr.ph624.preheader.i:                            ; preds = %.preheader611.i
  %i.ajr = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph624.i

.lr.ph619.i:                                      ; preds = %.lr.ph619.i, %.lr.ph619.preheader.i
  %indvars.iv656.i = phi i64 [ %i.ady, %.lr.ph619.preheader.i ], [ %indvars.iv.next657.i, %.lr.ph619.i ] ; 3 uses
  %indvars.iv654.i = phi i64 [ %i.adz, %.lr.ph619.preheader.i ], [ %indvars.iv.next655.i, %.lr.ph619.i ] ; 2 uses
  %.1323617.i = phi ptr [ %.0322.lcssa.i, %.lr.ph619.preheader.i ], [ %i.amq, %.lr.ph619.i ] ; 5 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv656.i
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !15
  %i.aju = shl nsw i32 %i.ajt, 2
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv654.i
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !15
  %i.ajx = load float, ptr %.1323617.i, align 4, !tbaa !17
  %i.ajy = getelementptr inbounds nuw i8, ptr %.1323617.i, i64 8
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !17
  %i.aka = insertelement <4 x float> poison, float %i.ajx, i64 0
  %i.akb = insertelement <4 x float> poison, float %i.ajz, i64 0
  %i.akc = shufflevector <4 x float> %i.aka, <4 x float> %i.akb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.1323617.i, i64 4
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !17
  %i.akf = getelementptr inbounds nuw i8, ptr %.1323617.i, i64 12
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !17
  %i.akh = insertelement <4 x float> poison, float %i.ake, i64 0
  %i.aki = insertelement <4 x float> poison, float %i.akg, i64 0
  %i.akj = shufflevector <4 x float> %i.akh, <4 x float> %i.aki, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.akk = sext i32 %i.aju to i64                 ; 2 uses
  %i.akl = getelementptr inbounds [2 x i8], ptr %i.adq, i64 %i.akk ; 2 uses
  %i.akm = load i64, ptr %i.akl, align 1, !tbaa !32
  %i.akn = insertelement <2 x i64> poison, i64 %i.akm, i64 0
  %i.ako = bitcast <2 x i64> %i.akn to <8 x i16>
  %i.akp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ako, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akq = shl nsw i32 %i.ajw, 2
  %i.akr = sext i32 %i.akq to i64                 ; 2 uses
  %i.aks = getelementptr inbounds [2 x i8], ptr %i.adq, i64 %i.akr ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 1, !tbaa !32
  %i.aku = insertelement <2 x i64> poison, i64 %i.akt, i64 0
  %i.akv = bitcast <2 x i64> %i.aku to <8 x i16>
  %i.akw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.akv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akx = shufflevector <8 x i16> %i.akp, <8 x i16> %i.akw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aky = bitcast <16 x i16> %i.akx to <8 x float>
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
end_hunk_0
