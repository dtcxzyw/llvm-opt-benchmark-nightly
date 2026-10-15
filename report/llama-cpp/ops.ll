Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@_ZL28ggml_compute_forward_dup_fltIf11ggml_bf16_tEvPK19ggml_compute_paramsP11ggml_tensor:bb.a
  %.3254335.us.us.us.us.us = phi i64 [ %.2253.lcssa.us.us.us.us, %.preheader310.us.us.us.us ], [ %.5256.us.us.us.us.us, %._crit_edge.us.us.us.us.us ]
  %i.fa = mul i64 %.0229339.us.us.us.us.us, %i.u
  %gep351.us.us.us.us = getelementptr i8, ptr %gep.us, i64 %i.fa
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.preheader309.us.us.us.us.us
  %.0326.us.us.us.us.us = phi i64 [ 0, %.preheader309.us.us.us.us.us ], [ %i.gf, %bb.u ] ; 2 uses
  %.5325.us.us.us.us.us = phi i64 [ %.4338.us.us.us.us.us, %.preheader309.us.us.us.us.us ], [ %.6.us.us.us.us.us, %bb.u ] ; 5 uses
  %.5238324.us.us.us.us.us = phi i64 [ %.4237337.us.us.us.us.us, %.preheader309.us.us.us.us.us ], [ %.6239.us.us.us.us.us, %bb.u ] ; 4 uses
  %.5247323.us.us.us.us.us = phi i64 [ %.4246336.us.us.us.us.us, %.preheader309.us.us.us.us.us ], [ %.6248.us.us.us.us.us, %bb.u ] ; 3 uses
  %.4255322.us.us.us.us.us = phi i64 [ %.3254335.us.us.us.us.us, %.preheader309.us.us.us.us.us ], [ %.5256.us.us.us.us.us, %bb.u ] ; 2 uses
  %i.fb = mul i64 %.0326.us.us.us.us.us, %i.s
  %gep.us.us.us.us.us = getelementptr i8, ptr %gep351.us.us.us.us, i64 %i.fb
  %i.fc = mul i64 %.4255322.us.us.us.us.us, %i.ai
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fc
  %i.fe = mul i64 %.5247323.us.us.us.us.us, %i.ak
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  %i.fg = mul i64 %.5238324.us.us.us.us.us, %i.am
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  %i.fi = mul i64 %.5325.us.us.us.us.us, %i.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  %i.fk = load float, ptr %gep.us.us.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.fl = bitcast float %i.fk to i32              ; 2 uses
  %i.fm = tail call float @llvm.fabs.f32(float %i.fk)
  %i.fn = bitcast float %i.fm to i32
  %i.fo = icmp samesign ugt i32 %i.fn, 2139095040
  %i.fp = lshr i32 %i.fl, 16                      ; 2 uses
  br i1 %i.fo, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fq = and i32 %i.fp, 1
  %i.fr = add i32 %i.fl, 32767
  %i.fs = add i32 %i.fr, %i.fq
  %i.ft = lshr i32 %i.fs, 16
  %i.fu = trunc nuw i32 %i.ft to i16
  br label %_ZL11f32_to_bf16f.exit303.us.us.us.us.us

bb.q:                                             ; preds = %bb.o
  %i.fv = trunc nuw i32 %i.fp to i16
  %i.fw = or i16 %i.fv, 64
  br label %_ZL11f32_to_bf16f.exit303.us.us.us.us.us

_ZL11f32_to_bf16f.exit303.us.us.us.us.us:         ; preds = %bb.q, %bb.p
  %.sroa.04.0.i.i302.us.us.us.us.us = phi i16 [ %i.fw, %bb.q ], [ %i.fu, %bb.p ]
  store i16 %.sroa.04.0.i.i302.us.us.us.us.us, ptr %i.fj, align 2, !tbaa !41
  %i.fx = add nsw i64 %.4255322.us.us.us.us.us, 1 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, %i.aa
  br i1 %i.fy, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZL11f32_to_bf16f.exit303.us.us.us.us.us
  %i.fz = add nsw i64 %.5247323.us.us.us.us.us, 1 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, %i.ac
  br i1 %i.ga, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.gb = add nsw i64 %.5238324.us.us.us.us.us, 1 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, %i.ae
  br i1 %i.gc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gd = add nsw i64 %.5325.us.us.us.us.us, 1    ; 2 uses
  %i.ge = icmp eq i64 %i.gd, %i.ag
  %spec.store.select1.us.us.us.us.us = select i1 %i.ge, i64 0, i64 %i.gd
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %_ZL11f32_to_bf16f.exit303.us.us.us.us.us
  %.5256.us.us.us.us.us = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ %i.fx, %_ZL11f32_to_bf16f.exit303.us.us.us.us.us ] ; 3 uses
  %.6248.us.us.us.us.us = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ %i.fz, %bb.r ], [ %.5247323.us.us.us.us.us, %_ZL11f32_to_bf16f.exit303.us.us.us.us.us ] ; 4 uses
  %.6239.us.us.us.us.us = phi i64 [ 0, %bb.t ], [ %i.gb, %bb.s ], [ %.5238324.us.us.us.us.us, %bb.r ], [ %.5238324.us.us.us.us.us, %_ZL11f32_to_bf16f.exit303.us.us.us.us.us ] ; 4 uses
  %.6.us.us.us.us.us = phi i64 [ %spec.store.select1.us.us.us.us.us, %bb.t ], [ %.5325.us.us.us.us.us, %bb.s ], [ %.5325.us.us.us.us.us, %bb.r ], [ %.5325.us.us.us.us.us, %_ZL11f32_to_bf16f.exit303.us.us.us.us.us ] ; 4 uses
  %i.gf = add nuw nsw i64 %.0326.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gf, %i.k
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us, label %bb.o, !llvm.loop !289

._crit_edge.us.us.us.us.us:                       ; preds = %bb.u
  %i.gg = add nsw i64 %.0229339.us.us.us.us.us, 1 ; 2 uses
  %exitcond502.not = icmp eq i64 %i.gg, %i.eh
  br i1 %exitcond502.not, label %._crit_edge340.split.us.us.us.us.us, label %.preheader309.us.us.us.us.us, !llvm.loop !290

._crit_edge340.split.us.us.us.us.us:              ; preds = %._crit_edge.us.us.us.us.us
  %i.gh = add nsw i64 %.5256.us.us.us.us.us, %i.ek ; 3 uses
  %.not299352.us.us.us.us = icmp slt i64 %i.gh, %i.aa
  br i1 %.not299352.us.us.us.us, label %._crit_edge.us377.us.us.us, label %.lr.ph357.us.us.us.us

.lr.ph357.us.us.us.us:                            ; preds = %._crit_edge340.split.us.us.us.us.us, %bb.x
  %.7356.us.us.us.us = phi i64 [ %.8.us.us.us.us, %bb.x ], [ %.6.us.us.us.us.us, %._crit_edge340.split.us.us.us.us.us ] ; 3 uses
  %.7240355.us.us.us.us = phi i64 [ %.8241.us.us.us.us, %bb.x ], [ %.6239.us.us.us.us.us, %._crit_edge340.split.us.us.us.us.us ] ; 2 uses
  %.7249354.us.us.us.us = phi i64 [ %.8250.us.us.us.us, %bb.x ], [ %.6248.us.us.us.us.us, %._crit_edge340.split.us.us.us.us.us ]
  %.6257353.us.us.us.us = phi i64 [ %i.gi, %bb.x ], [ %i.gh, %._crit_edge340.split.us.us.us.us.us ]
  %i.gi = sub nsw i64 %.6257353.us.us.us.us, %i.aa ; 3 uses
  %i.gj = add nsw i64 %.7249354.us.us.us.us, 1    ; 2 uses
  %i.gk = icmp eq i64 %i.gj, %i.ac
  br i1 %i.gk, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph357.us.us.us.us
  %i.gl = add nsw i64 %.7240355.us.us.us.us, 1    ; 2 uses
  %i.gm = icmp eq i64 %i.gl, %i.ae
  br i1 %i.gm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gn = add nsw i64 %.7356.us.us.us.us, 1       ; 2 uses
  %i.go = icmp eq i64 %i.gn, %i.ag
  %spec.store.select2.us.us.us.us = select i1 %i.go, i64 0, i64 %i.gn
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.lr.ph357.us.us.us.us
  %.8250.us.us.us.us = phi i64 [ 0, %bb.w ], [ 0, %bb.v ], [ %i.gj, %.lr.ph357.us.us.us.us ] ; 2 uses
  %.8241.us.us.us.us = phi i64 [ 0, %bb.w ], [ %i.gl, %bb.v ], [ %.7240355.us.us.us.us, %.lr.ph357.us.us.us.us ] ; 2 uses
  %.8.us.us.us.us = phi i64 [ %spec.store.select2.us.us.us.us, %bb.w ], [ %.7356.us.us.us.us, %bb.v ], [ %.7356.us.us.us.us, %.lr.ph357.us.us.us.us ] ; 2 uses
  %.not299.us.us.us.us = icmp slt i64 %i.gi, %i.aa
  br i1 %.not299.us.us.us.us, label %._crit_edge.us377.us.us.us, label %.lr.ph357.us.us.us.us, !llvm.loop !291

._crit_edge.us377.us.us.us:                       ; preds = %bb.x, %._crit_edge340.split.us.us.us.us.us
  %.6257.lcssa.us.us.us.us = phi i64 [ %i.gh, %._crit_edge340.split.us.us.us.us.us ], [ %i.gi, %bb.x ] ; 2 uses
  %.7249.lcssa.us.us.us.us = phi i64 [ %.6248.us.us.us.us.us, %._crit_edge340.split.us.us.us.us.us ], [ %.8250.us.us.us.us, %bb.x ] ; 2 uses
  %.7240.lcssa.us.us.us.us = phi i64 [ %.6239.us.us.us.us.us, %._crit_edge340.split.us.us.us.us.us ], [ %.8241.us.us.us.us, %bb.x ] ; 2 uses
  %.7.lcssa.us.us.us.us = phi i64 [ %.6.us.us.us.us.us, %._crit_edge340.split.us.us.us.us.us ], [ %.8.us.us.us.us, %bb.x ] ; 2 uses
  %i.gp = add nuw nsw i64 %.0230366.us.us.us.us, 1 ; 2 uses
  %exitcond503.not = icmp eq i64 %i.gp, %i.o
  br i1 %exitcond503.not, label %._crit_edge368.split.us.us.split.us.us, label %bb.k, !llvm.loop !292

._crit_edge368.split.us.us.split.us.us:           ; preds = %._crit_edge.us377.us.us.us
  %i.gq = add nuw nsw i64 %.0231386.us.us, 1      ; 2 uses
  %exitcond504.not = icmp eq i64 %i.gq, %i.q
  br i1 %exitcond504.not, label %.loopexit, label %.preheader311.us.us, !llvm.loop !293

bb.y:                                             ; preds = %bb.j
  %i.gr = icmp eq i64 %i.s, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !37 ; 7 uses
  %i.gu = icmp sgt i64 %i.q, 0                    ; 2 uses
  br i1 %i.gr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %i.gu, label %.preheader304.lr.ph, label %.loopexit

.preheader304.lr.ph:                              ; preds = %bb.z
  %i.gv = icmp sgt i64 %i.o, 0
  %i.gw = sext i32 %i.aw to i64                   ; 2 uses
  %i.gx = mul nsw i64 %i.k, %i.gw
  %i.gy = sext i32 %i.ay to i64                   ; 2 uses
  %i.gz = sub nsw i64 %i.m, %i.gy
  %i.ha = mul nsw i64 %i.gz, %i.k
  %i.hb = icmp slt i32 %i.aw, %i.ay
  %or.cond599 = select i1 %i.gv, i1 %i.hb, i1 false
  br i1 %or.cond599, label %.preheader304.lr.ph.split.split.us, label %.loopexit

.preheader304.lr.ph.split.split.us:               ; preds = %.preheader304.lr.ph
  %i.hc = icmp sgt i64 %i.k, 0
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !37
  br i1 %i.hc, label %.preheader304.us.us.preheader, label %.loopexit

.preheader304.us.us.preheader:                    ; preds = %.preheader304.lr.ph.split.split.us
  %min.iters.check618 = icmp ult i64 %i.k, 8
  %min.iters.check619 = icmp ult i64 %i.k, 32
  %i.hf = and i64 %i.k, 24
  %n.vec621 = and i64 %i.k, 9223372036854775776   ; 5 uses
  %cmp.n633 = icmp eq i64 %i.k, %n.vec621
  %min.epilog.iters.check = icmp eq i64 %i.hf, 0
  %n.vec635 = and i64 %i.k, 9223372036854775800   ; 4 uses
  %cmp.n640 = icmp eq i64 %i.k, %n.vec635
  br label %.preheader304.us.us

.preheader304.us.us:                              ; preds = %.preheader304.us.us.preheader, %._crit_edge450.split.us.split.us.us.us
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %._crit_edge450.split.us.split.us.us.us ], [ 0, %.preheader304.us.us.preheader ] ; 2 uses
  %.0270462.us.us = phi i64 [ %i.jg, %._crit_edge450.split.us.split.us.us.us ], [ 0, %.preheader304.us.us.preheader ]
  %i.hg = mul i64 %indvars.iv548, %i.y
  %invariant.gep.us464.us = getelementptr i8, ptr %i.he, i64 %i.hg
  br label %.lr.ph442.us.us.us.us

.lr.ph442.us.us.us.us:                            ; preds = %._crit_edge443.split.us.us.us.us.us, %.preheader304.us.us
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %._crit_edge443.split.us.us.us.us.us ], [ 0, %.preheader304.us.us ] ; 2 uses
  %.1271447.us.us.us.us = phi i64 [ %i.jg, %._crit_edge443.split.us.us.us.us.us ], [ %.0270462.us.us, %.preheader304.us.us ]
  %i.hh = add i64 %.1271447.us.us.us.us, %i.gx
  %i.hi = mul i64 %indvars.iv544, %i.w
  %gep.us459.us.us = getelementptr i8, ptr %invariant.gep.us464.us, i64 %i.hi
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge437.us.us.us.us.us, %.lr.ph442.us.us.us.us
  %indvars.iv539 = phi i64 [ %indvars.iv.next540, %._crit_edge437.us.us.us.us.us ], [ %i.gw, %.lr.ph442.us.us.us.us ] ; 2 uses
  %.2272439.us.us.us.us.us = phi i64 [ %.lcssa, %._crit_edge437.us.us.us.us.us ], [ %i.hh, %.lr.ph442.us.us.us.us ] ; 5 uses
  %i.hj = mul i64 %i.u, %indvars.iv539
  %gep446.us.us.us.us.us = getelementptr i8, ptr %gep.us459.us.us, i64 %i.hj ; 3 uses
  br i1 %min.iters.check618, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check619, label %vec.epilog.ph, label %vector.ph620

vector.ph620:                                     ; preds = %vector.main.loop.iter.check
  %i.hk = add i64 %.2272439.us.us.us.us.us, %n.vec621 ; 2 uses
  %i.hl = getelementptr [2 x i8], ptr %i.gt, i64 %.2272439.us.us.us.us.us
  br label %vector.body622

vector.body622:                                   ; preds = %vector.ph620, %vector.body622
  %index623 = phi i64 [ 0, %vector.ph620 ], [ %index.next631, %vector.body622 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %gep446.us.us.us.us.us, i64 %index623 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  %wide.load = load <8 x float>, ptr %i.hm, align 4, !tbaa !43 ; 2 uses
  %wide.load624 = load <8 x float>, ptr %i.hn, align 4, !tbaa !43 ; 2 uses
  %wide.load625 = load <8 x float>, ptr %i.ho, align 4, !tbaa !43 ; 2 uses
  %wide.load626 = load <8 x float>, ptr %i.hp, align 4, !tbaa !43 ; 2 uses
  %2 = bitcast <8 x float> %wide.load to <8 x i32> ; 2 uses
  %3 = bitcast <8 x float> %wide.load624 to <8 x i32> ; 2 uses
  %4 = bitcast <8 x float> %wide.load625 to <8 x i32> ; 2 uses
  %5 = bitcast <8 x float> %wide.load626 to <8 x i32> ; 2 uses
  %6 = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load)
  %7 = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load624)
  %8 = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load625)
  %9 = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load626)
  %i.hq = bitcast <8 x float> %6 to <8 x i32>
  %i.hr = bitcast <8 x float> %7 to <8 x i32>
  %i.hs = bitcast <8 x float> %8 to <8 x i32>
  %i.ht = bitcast <8 x float> %9 to <8 x i32>
  %10 = icmp samesign ugt <8 x i32> %i.hq, splat (i32 2139095040)
  %11 = icmp samesign ugt <8 x i32> %i.hr, splat (i32 2139095040)
  %12 = icmp samesign ugt <8 x i32> %i.hs, splat (i32 2139095040)
  %13 = icmp samesign ugt <8 x i32> %i.ht, splat (i32 2139095040)
  %i.hu = lshr <8 x i32> %2, splat (i32 16)       ; 2 uses
  %i.hv = lshr <8 x i32> %3, splat (i32 16)       ; 2 uses
  %i.hw = lshr <8 x i32> %4, splat (i32 16)       ; 2 uses
  %i.hx = lshr <8 x i32> %5, splat (i32 16)       ; 2 uses
  %14 = and <8 x i32> %i.hu, splat (i32 1)
  %15 = and <8 x i32> %i.hv, splat (i32 1)
  %16 = and <8 x i32> %i.hw, splat (i32 1)
  %17 = and <8 x i32> %i.hx, splat (i32 1)
  %18 = add <8 x i32> %2, splat (i32 32767)
  %19 = add <8 x i32> %3, splat (i32 32767)
  %20 = add <8 x i32> %4, splat (i32 32767)
  %21 = add <8 x i32> %5, splat (i32 32767)
  %22 = add <8 x i32> %18, %14
  %23 = add <8 x i32> %19, %15
  %24 = add <8 x i32> %20, %16
  %25 = add <8 x i32> %21, %17
  %26 = lshr <8 x i32> %22, splat (i32 16)
  %27 = lshr <8 x i32> %23, splat (i32 16)
  %28 = lshr <8 x i32> %24, splat (i32 16)
  %29 = lshr <8 x i32> %25, splat (i32 16)
  %30 = trunc nuw <8 x i32> %26 to <8 x i16>
  %31 = trunc nuw <8 x i32> %27 to <8 x i16>
  %32 = trunc nuw <8 x i32> %28 to <8 x i16>
  %33 = trunc nuw <8 x i32> %29 to <8 x i16>
  %34 = trunc nuw <8 x i32> %i.hu to <8 x i16>
  %35 = or <8 x i16> %34, splat (i16 64)
  %36 = trunc nuw <8 x i32> %i.hv to <8 x i16>
  %37 = or <8 x i16> %36, splat (i16 64)
  %38 = trunc nuw <8 x i32> %i.hw to <8 x i16>
  %39 = or <8 x i16> %38, splat (i16 64)
  %40 = trunc nuw <8 x i32> %i.hx to <8 x i16>
  %41 = or <8 x i16> %40, splat (i16 64)
  %predphi627 = select <8 x i1> %10, <8 x i16> %35, <8 x i16> %30
  %predphi628 = select <8 x i1> %11, <8 x i16> %37, <8 x i16> %31
  %predphi629 = select <8 x i1> %12, <8 x i16> %39, <8 x i16> %32
  %predphi630 = select <8 x i1> %13, <8 x i16> %41, <8 x i16> %33
  %42 = getelementptr [2 x i8], ptr %i.hl, i64 %index623 ; 4 uses
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %44 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 48
  store <8 x i16> %predphi627, ptr %42, align 2, !tbaa !41
  store <8 x i16> %predphi628, ptr %43, align 2, !tbaa !41
  store <8 x i16> %predphi629, ptr %44, align 2, !tbaa !41
  store <8 x i16> %predphi630, ptr %45, align 2, !tbaa !41
  %index.next631 = add nuw i64 %index623, 32      ; 2 uses
  %i.hy = icmp eq i64 %index.next631, %n.vec621
  br i1 %i.hy, label %middle.block632, label %vector.body622, !llvm.loop !294

middle.block632:                                  ; preds = %vector.body622
  br i1 %cmp.n633, label %._crit_edge437.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block632
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec621, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hz = add i64 %.2272439.us.us.us.us.us, %n.vec635 ; 2 uses
  %i.ia = getelementptr [2 x i8], ptr %i.gt, i64 %.2272439.us.us.us.us.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index636 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next639, %vec.epilog.vector.body ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %gep446.us.us.us.us.us, i64 %index636
  %wide.load637 = load <8 x float>, ptr %i.ib, align 4, !tbaa !43 ; 2 uses
  %i.ic = bitcast <8 x float> %wide.load637 to <8 x i32> ; 2 uses
  %i.id = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load637)
  %i.ie = bitcast <8 x float> %i.id to <8 x i32>
  %i.if = icmp samesign ugt <8 x i32> %i.ie, splat (i32 2139095040)
  %i.ig = lshr <8 x i32> %i.ic, splat (i32 16)    ; 2 uses
  %i.ih = and <8 x i32> %i.ig, splat (i32 1)
  %i.ii = add <8 x i32> %i.ic, splat (i32 32767)
  %i.ij = add <8 x i32> %i.ii, %i.ih
  %i.ik = lshr <8 x i32> %i.ij, splat (i32 16)
  %i.il = trunc nuw <8 x i32> %i.ik to <8 x i16>
  %i.im = trunc nuw <8 x i32> %i.ig to <8 x i16>
  %i.in = or <8 x i16> %i.im, splat (i16 64)
  %predphi638 = select <8 x i1> %i.if, <8 x i16> %i.in, <8 x i16> %i.il
  %i.io = getelementptr [2 x i8], ptr %i.ia, i64 %index636
  store <8 x i16> %predphi638, ptr %i.io, align 2, !tbaa !41
  %index.next639 = add nuw i64 %index636, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next639, %n.vec635
  br i1 %i.ip, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !295

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n640, label %._crit_edge437.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv535.ph = phi i64 [ 0, %iter.check ], [ %n.vec621, %vec.epilog.iter.check ], [ %n.vec635, %vec.epilog.middle.block ]
  %.3273433.us.us.us.us.us.ph = phi i64 [ %.2272439.us.us.us.us.us, %iter.check ], [ %i.hk, %vec.epilog.iter.check ], [ %i.hz, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %_ZL11f32_to_bf16f.exit.us.us.us.us.us
  %indvars.iv535 = phi i64 [ %indvars.iv.next536, %_ZL11f32_to_bf16f.exit.us.us.us.us.us ], [ %indvars.iv535.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3273433.us.us.us.us.us = phi i64 [ %i.jf, %_ZL11f32_to_bf16f.exit.us.us.us.us.us ], [ %.3273433.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %gep446.us.us.us.us.us, i64 %indvars.iv535
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !43 ; 2 uses
  %i.is = bitcast float %i.ir to i32              ; 2 uses
  %i.it = tail call float @llvm.fabs.f32(float %i.ir)
  %i.iu = bitcast float %i.it to i32
  %i.iv = icmp samesign ugt i32 %i.iu, 2139095040
  %i.iw = lshr i32 %i.is, 16                      ; 2 uses
  br i1 %i.iv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %vec.epilog.scalar.ph
  %i.ix = and i32 %i.iw, 1
  %i.iy = add i32 %i.is, 32767
  %i.iz = add i32 %i.iy, %i.ix
  %i.ja = lshr i32 %i.iz, 16
  %i.jb = trunc nuw i32 %i.ja to i16
  br label %_ZL11f32_to_bf16f.exit.us.us.us.us.us

bb.ab:                                            ; preds = %vec.epilog.scalar.ph
  %i.jc = trunc nuw i32 %i.iw to i16
  %i.jd = or i16 %i.jc, 64
  br label %_ZL11f32_to_bf16f.exit.us.us.us.us.us

_ZL11f32_to_bf16f.exit.us.us.us.us.us:            ; preds = %bb.ab, %bb.aa
  %.sroa.04.0.i.i.us.us.us.us.us = phi i16 [ %i.jd, %bb.ab ], [ %i.jb, %bb.aa ]
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %.3273433.us.us.us.us.us
  store i16 %.sroa.04.0.i.i.us.us.us.us.us, ptr %i.je, align 2, !tbaa !41
  %i.jf = add i64 %.3273433.us.us.us.us.us, 1     ; 2 uses
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next536, %i.k
  br i1 %exitcond538.not, label %._crit_edge437.us.us.us.us.us, label %vec.epilog.scalar.ph, !llvm.loop !296

._crit_edge437.us.us.us.us.us:                    ; preds = %_ZL11f32_to_bf16f.exit.us.us.us.us.us, %vec.epilog.middle.block, %middle.block632
  %.lcssa = phi i64 [ %i.hz, %vec.epilog.middle.block ], [ %i.hk, %middle.block632 ], [ %i.jf, %_ZL11f32_to_bf16f.exit.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next540 = add nsw i64 %indvars.iv539, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next540, %i.gy
  br i1 %exitcond543.not, label %._crit_edge443.split.us.us.us.us.us, label %iter.check, !llvm.loop !297

._crit_edge443.split.us.us.us.us.us:              ; preds = %._crit_edge437.us.us.us.us.us
  %i.jg = add i64 %.lcssa, %i.ha                  ; 2 uses
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1 ; 2 uses
  %exitcond547.not = icmp eq i64 %indvars.iv.next545, %i.o
  br i1 %exitcond547.not, label %._crit_edge450.split.us.split.us.us.us, label %.lr.ph442.us.us.us.us, !llvm.loop !298

._crit_edge450.split.us.split.us.us.us:           ; preds = %._crit_edge443.split.us.us.us.us.us
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next549, %i.q
  br i1 %exitcond551.not, label %.loopexit, label %.preheader304.us.us, !llvm.loop !299

bb.ac:                                            ; preds = %bb.y
  br i1 %i.gu, label %.preheader307.lr.ph, label %.loopexit

.preheader307.lr.ph:                              ; preds = %bb.ac
  %i.jh = icmp slt i64 %i.o, 1
  %i.ji = sext i32 %i.aw to i64                   ; 2 uses
  %i.jj = mul nsw i64 %i.k, %i.ji
  %i.jk = icmp slt i64 %i.k, 1
  %i.jl = sext i32 %i.ay to i64                   ; 2 uses
  %i.jm = sub nsw i64 %i.m, %i.jl
  %i.jn = mul nsw i64 %i.jm, %i.k
  %i.jo = icmp sge i32 %i.aw, %i.ay
  %or.cond600.not607 = select i1 %i.jh, i1 true, i1 %i.jo
  %brmerge602 = select i1 %or.cond600.not607, i1 true, i1 %i.jk
  br i1 %brmerge602, label %.loopexit, label %.preheader307.lr.ph.split.split.us.split.us

.preheader307.lr.ph.split.split.us.split.us:      ; preds = %.preheader307.lr.ph
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !37
  %min.iters.check = icmp ugt i64 %i.k, 7
  %ident.check.not = icmp eq i64 %i.s, 1
  %or.cond643 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.k, 9223372036854775800      ; 4 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader307.us.us

.preheader307.us.us:                              ; preds = %._crit_edge411.split.us.split.us.us.us, %.preheader307.lr.ph.split.split.us.split.us
  %indvars.iv519 = phi i64 [ %indvars.iv.next520, %._crit_edge411.split.us.split.us.us.us ], [ 0, %.preheader307.lr.ph.split.split.us.split.us ] ; 2 uses
  %.0262421.us.us = phi i64 [ %i.mi, %._crit_edge411.split.us.split.us.us.us ], [ 0, %.preheader307.lr.ph.split.split.us.split.us ]
  %i.jr = mul i64 %indvars.iv519, %i.y
  %invariant.gep.us429.us = getelementptr i8, ptr %i.jq, i64 %i.jr
  br label %.preheader306.lr.ph.us.us.us.us

.preheader306.lr.ph.us.us.us.us:                  ; preds = %._crit_edge402.split.us.us.us.us.us, %.preheader307.us.us
  %indvars.iv515 = phi i64 [ %indvars.iv.next516, %._crit_edge402.split.us.us.us.us.us ], [ 0, %.preheader307.us.us ] ; 2 uses
  %.1263408.us.us.us.us = phi i64 [ %i.mi, %._crit_edge402.split.us.us.us.us.us ], [ %.0262421.us.us, %.preheader307.us.us ]
  %i.js = add i64 %.1263408.us.us.us.us, %i.jj
  %i.jt = mul i64 %indvars.iv515, %i.w
  %gep.us430.us = getelementptr i8, ptr %invariant.gep.us429.us, i64 %i.jt
  br label %.preheader306.us.us.us.us.us

.preheader306.us.us.us.us.us:                     ; preds = %._crit_edge395.us.us.us.us.us, %.preheader306.lr.ph.us.us.us.us
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %._crit_edge395.us.us.us.us.us ], [ %i.ji, %.preheader306.lr.ph.us.us.us.us ] ; 2 uses
  %.2264400.us.us.us.us.us = phi i64 [ %.lcssa612, %._crit_edge395.us.us.us.us.us ], [ %i.js, %.preheader306.lr.ph.us.us.us.us ] ; 3 uses
  %i.ju = mul i64 %i.u, %indvars.iv511
  %gep407.us.us.us.us = getelementptr i8, ptr %gep.us430.us, i64 %i.ju ; 4 uses
  br i1 %or.cond643, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.preheader306.us.us.us.us.us
  %i.jv = add i64 %.2264400.us.us.us.us.us, %n.vec ; 2 uses
  %i.jw = getelementptr [2 x i8], ptr %i.gt, i64 %.2264400.us.us.us.us.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr i8, ptr %gep407.us.us.us.us, <8 x i64> %vec.ind
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43 ; 2 uses
  %i.jx = bitcast <8 x float> %wide.masked.gather to <8 x i32> ; 2 uses
  %i.jy = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.gather)
  %i.jz = bitcast <8 x float> %i.jy to <8 x i32>
  %i.ka = icmp samesign ugt <8 x i32> %i.jz, splat (i32 2139095040)
  %i.kb = lshr <8 x i32> %i.jx, splat (i32 16)    ; 2 uses
  %i.kc = and <8 x i32> %i.kb, splat (i32 1)
  %i.kd = add <8 x i32> %i.jx, splat (i32 32767)
  %i.ke = add <8 x i32> %i.kd, %i.kc
  %i.kf = lshr <8 x i32> %i.ke, splat (i32 16)
  %i.kg = trunc nuw <8 x i32> %i.kf to <8 x i16>
  %i.kh = trunc nuw <8 x i32> %i.kb to <8 x i16>
  %i.ki = or <8 x i16> %i.kh, splat (i16 64)
  %predphi = select <8 x i1> %i.ka, <8 x i16> %i.ki, <8 x i16> %i.kg
  %i.kj = getelementptr [2 x i8], ptr %i.jw, i64 %index
  store <8 x i16> %predphi, ptr %i.kj, align 2, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !300

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge395.us.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader306.us.us.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader306.us.us.us.us.us ], [ %n.vec, %middle.block ] ; 4 uses
  %.3265392.us.us.us.us.us.ph = phi i64 [ %.2264400.us.us.us.us.us, %.preheader306.us.us.us.us.us ], [ %i.jv, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.kl = mul i64 %indvars.iv.ph, %i.s
  %gep.us404.us.us.us.us.prol = getelementptr i8, ptr %gep407.us.us.us.us, i64 %i.kl
  %i.km = load float, ptr %gep.us404.us.us.us.us.prol, align 4, !tbaa !43 ; 2 uses
  %i.kn = bitcast float %i.km to i32              ; 2 uses
  %i.ko = tail call float @llvm.fabs.f32(float %i.km)
  %i.kp = bitcast float %i.ko to i32
  %i.kq = icmp samesign ugt i32 %i.kp, 2139095040
  %i.kr = lshr i32 %i.kn, 16                      ; 2 uses
  br i1 %i.kq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph.prol
  %i.ks = and i32 %i.kr, 1
end_hunk_0
