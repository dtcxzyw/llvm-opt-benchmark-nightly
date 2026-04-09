inline.NumInlined: 7
begin_hunk_0_@Oscar:bb.a

bb.g:                                             ; preds = %.loopexit, %bb.f
  %indvar = phi i64 [ %indvar.next, %.loopexit ], [ 0, %bb.f ] ; 2 uses
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %.loopexit ], [ %i.iy, %bb.f ] ; 4 uses
  %.085.i = phi i64 [ %indvars.iv99.i, %.loopexit ], [ 0, %bb.f ] ; 4 uses
  %.083.i = phi i64 [ %0, %.loopexit ], [ 1, %bb.f ]
  %i.jg = getelementptr [8 x i8], ptr @e, i64 %.085.i ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 8
  %i.ji = getelementptr i8, ptr %i.jg, i64 12
  %sext112.i = shl i64 %.083.i, 32                ; 2 uses
  %i.jj = ashr exact i64 %sext112.i, 32           ; 6 uses
  %invariant.gep113.i = getelementptr [8 x i8], ptr @w, i64 %.085.i ; 2 uses
  %invariant.gep115.i = getelementptr [8 x i8], ptr @w, i64 %indvars.iv99.i ; 2 uses
  %i.jk = load float, ptr %i.jh, align 8, !tbaa !10 ; 2 uses
  %i.jl = load float, ptr %i.ji, align 4, !tbaa !13 ; 2 uses
  %smax45 = tail call i64 @llvm.smax.i64(i64 %indvars.iv99.i, i64 %i.jj) ; 5 uses
  %0 = add nuw nsw i64 %smax45, 1
  %i.jm = add nuw i64 %smax45, 1
  %i.jn = sub i64 %i.jm, %i.jj                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.jn, 4
end_hunk_0
begin_hunk_1_@Oscar:bb.a
  %i.jq = ashr exact i64 %sext112.i, 29           ; 3 uses
  %i.jr = add i64 %i.jp, %i.jq                    ; 2 uses
  %scevgep = getelementptr i8, ptr @w, i64 %i.jr
  %i.js = add i64 %.085.i, %smax45
  %i.jt = shl i64 %i.js, 3                        ; 2 uses
  %scevgep32 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @w, i64 4), i64 %i.jt
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %i.jq
  %i.ju = shl nuw nsw i64 %smax45, 3              ; 2 uses
  %scevgep36 = getelementptr i8, ptr %scevgep35.a, i64 %i.ju
  %scevgep37 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @w, i64 4), i64 %i.jr
  %scevgep38 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @w, i64 8), i64 %i.jt
end_hunk_1
begin_hunk_2_@Oscar:bb.a

vector.ph46:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %i.jn, -4                      ; 3 uses
  %i.jv = add i64 %i.jj, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.jk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <4 x float> poison, float %i.jl, i64 0
end_hunk_2
begin_hunk_3_@Oscar:bb.a
  %i.kv = fmul <2 x float> %i.kl, %i.ku
  %i.kw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.ks, <2 x float> %i.kv)
  store <2 x float> %i.kw, ptr %gep116.i, align 8, !tbaa !16
  %indvars.iv.next.i8 = add nsw i64 %indvars.iv.i6, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.i6, %smax45
  br i1 %exitcond23.not, label %.loopexit, label %scalar.ph, !llvm.loop !45

.loopexit:                                        ; preds = %scalar.ph, %middle.block61
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, %i.iy ; 2 uses
  %.not.i9 = icmp samesign ugt i64 %indvars.iv.next100.i, 128
  %indvar.next = add i64 %indvar, 1
end_hunk_3
