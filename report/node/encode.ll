inline.NumInlined: 177
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 28
begin_hunk_0_@DecideOverLiteralContextModeling:bb.a

bb.ar:                                            ; preds = %EstimateEntropy.exit44.i
  %i.hw = tail call double @log2(double noundef %i.hp) #19, !tbaa !5
  br label %FastLog2.exit16.i48.i

FastLog2.exit16.i48.i:                            ; preds = %bb.ar, %bb.aq
  %.0.i15.i49.i = phi double [ %i.hv, %bb.aq ], [ %i.hw, %bb.ar ]
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hp, double %.0.i15.i49.i, double 0.000000e+00)
  %i.hy = load i32, ptr %i.dp, align 4, !tbaa !5  ; 3 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = add nuw nsw i64 %i.hz, %i.ho
  %i.ib = uitofp i32 %i.hy to double              ; 2 uses
  %i.ic = icmp ult i32 %i.hy, 256
  br i1 %i.ic, label %bb.at, label %bb.as

bb.as:                                            ; preds = %FastLog2.exit16.i48.i
  %i.id = tail call double @log2(double noundef %i.ib) #19, !tbaa !5
  br label %FastLog2.exit16.i48.1.i

bb.at:                                            ; preds = %FastLog2.exit16.i48.i
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.hz
  %i.if = load double, ptr %i.ie, align 8, !tbaa !716
  br label %FastLog2.exit16.i48.1.i

FastLog2.exit16.i48.1.i:                          ; preds = %bb.at, %bb.as
  %.0.i15.i49.1.i = phi double [ %i.if, %bb.at ], [ %i.id, %bb.as ]
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.ib, double %.0.i15.i49.1.i, double %i.hx)
  %i.ih = load i32, ptr %i.dq, align 4, !tbaa !5  ; 3 uses
  %i.ii = zext i32 %i.ih to i64                   ; 2 uses
  %i.ij = add nuw nsw i64 %i.ia, %i.ii            ; 3 uses
  %i.ik = uitofp i32 %i.ih to double              ; 2 uses
  %i.il = icmp ult i32 %i.ih, 256
  br i1 %i.il, label %bb.av, label %bb.au

bb.au:                                            ; preds = %FastLog2.exit16.i48.1.i
  %i.im = tail call double @log2(double noundef %i.ik) #19, !tbaa !5
  br label %FastLog2.exit16.i48.2.i

bb.av:                                            ; preds = %FastLog2.exit16.i48.1.i
  %i.in = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ii
  %i.io = load double, ptr %i.in, align 8, !tbaa !716
  br label %FastLog2.exit16.i48.2.i

FastLog2.exit16.i48.2.i:                          ; preds = %bb.av, %bb.au
  %.0.i15.i49.2.i = phi double [ %i.io, %bb.av ], [ %i.im, %bb.au ]
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.ik, double %.0.i15.i49.2.i, double %i.ig)
  %i.iq = uitofp nneg i64 %i.ij to double         ; 2 uses
  %i.ir = icmp samesign ult i64 %i.ij, 256
  br i1 %i.ir, label %bb.ao, label %bb.ap

EstimateEntropy.exit52.i:                         ; preds = %bb.ap, %bb.ao
  %.0.i.i51.i = phi double [ %i.hs, %bb.ao ], [ %i.ht, %bb.ap ]
  %i.is = fneg double %i.ip
  %i.it = tail call double @llvm.fmuladd.f64(double %i.iq, double %.0.i.i51.i, double %i.is)
  %i.iu = fadd double %i.it, 0.000000e+00
  %i.iv = load i32, ptr %i.dr, align 4, !tbaa !5  ; 3 uses
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = uitofp i32 %i.iv to double              ; 2 uses
  %i.iy = icmp ult i32 %i.iv, 256
  br i1 %i.iy, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %EstimateEntropy.exit52.i
  %i.iz = tail call double @log2(double noundef %i.ix) #19, !tbaa !5
  br label %FastLog2.exit16.i48.172.i

bb.ax:                                            ; preds = %EstimateEntropy.exit52.i
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.iw
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !716
  br label %FastLog2.exit16.i48.172.i

FastLog2.exit16.i48.172.i:                        ; preds = %bb.ax, %bb.aw
  %.0.i15.i49.171.i = phi double [ %i.jb, %bb.ax ], [ %i.iz, %bb.aw ]
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.ix, double %.0.i15.i49.171.i, double 0.000000e+00)
  %i.jd = load i32, ptr %i.ds, align 4, !tbaa !5  ; 3 uses
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = add nuw nsw i64 %i.je, %i.iw
  %i.jg = uitofp i32 %i.jd to double              ; 2 uses
  %i.jh = icmp ult i32 %i.jd, 256
  br i1 %i.jh, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %FastLog2.exit16.i48.172.i
  %i.ji = tail call double @log2(double noundef %i.jg) #19, !tbaa !5
  br label %FastLog2.exit16.i48.1.1.i

bb.az:                                            ; preds = %FastLog2.exit16.i48.172.i
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.je
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !716
  br label %FastLog2.exit16.i48.1.1.i

FastLog2.exit16.i48.1.1.i:                        ; preds = %bb.az, %bb.ay
  %.0.i15.i49.1.1.i = phi double [ %i.jk, %bb.az ], [ %i.ji, %bb.ay ]
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jg, double %.0.i15.i49.1.1.i, double %i.jc)
  %i.jm = load i32, ptr %i.dt, align 4, !tbaa !5  ; 3 uses
  %i.jn = zext i32 %i.jm to i64                   ; 2 uses
  %i.jo = add nuw nsw i64 %i.jf, %i.jn            ; 3 uses
  %i.jp = uitofp i32 %i.jm to double              ; 2 uses
  %i.jq = icmp ult i32 %i.jm, 256
  br i1 %i.jq, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %FastLog2.exit16.i48.1.1.i
  %i.jr = tail call double @log2(double noundef %i.jp) #19, !tbaa !5
  br label %FastLog2.exit16.i48.2.1.i

bb.bb:                                            ; preds = %FastLog2.exit16.i48.1.1.i
  %i.js = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.jn
  %i.jt = load double, ptr %i.js, align 8, !tbaa !716
  br label %FastLog2.exit16.i48.2.1.i

FastLog2.exit16.i48.2.1.i:                        ; preds = %bb.bb, %bb.ba
  %.0.i15.i49.2.1.i = phi double [ %i.jt, %bb.bb ], [ %i.jr, %bb.ba ]
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.jp, double %.0.i15.i49.2.1.i, double %i.jl)
  %i.jv = uitofp nneg i64 %i.jo to double         ; 2 uses
  %i.jw = icmp samesign ult i64 %i.jo, 256
  br i1 %i.jw, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %FastLog2.exit16.i48.2.1.i
  %i.jx = tail call double @log2(double noundef %i.jv) #19, !tbaa !5
  br label %EstimateEntropy.exit52.1.i

bb.bd:                                            ; preds = %FastLog2.exit16.i48.2.1.i
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.jo
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !716
  br label %EstimateEntropy.exit52.1.i

EstimateEntropy.exit52.1.i:                       ; preds = %bb.bd, %bb.bc
  %.0.i.i51.1.i = phi double [ %i.jz, %bb.bd ], [ %i.jx, %bb.bc ]
  %i.ka = fneg double %i.ju
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.jv, double %.0.i.i51.1.i, double %i.ka)
  %i.kc = fadd double %i.iu, %i.kb
  %i.kd = load i32, ptr %i.du, align 4, !tbaa !5  ; 3 uses
  %i.ke = zext i32 %i.kd to i64                   ; 2 uses
  %i.kf = uitofp i32 %i.kd to double              ; 2 uses
  %i.kg = icmp ult i32 %i.kd, 256
  br i1 %i.kg, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %EstimateEntropy.exit52.1.i
  %i.kh = tail call double @log2(double noundef %i.kf) #19, !tbaa !5
  br label %FastLog2.exit16.i48.274.i

bb.bf:                                            ; preds = %EstimateEntropy.exit52.1.i
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ke
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !716
  br label %FastLog2.exit16.i48.274.i

FastLog2.exit16.i48.274.i:                        ; preds = %bb.bf, %bb.be
  %.0.i15.i49.273.i = phi double [ %i.kj, %bb.bf ], [ %i.kh, %bb.be ]
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.kf, double %.0.i15.i49.273.i, double 0.000000e+00)
  %i.kl = load i32, ptr %i.dx, align 4, !tbaa !5  ; 3 uses
  %i.km = zext i32 %i.kl to i64                   ; 2 uses
  %i.kn = add nuw nsw i64 %i.km, %i.ke
  %i.ko = uitofp i32 %i.kl to double              ; 2 uses
  %i.kp = icmp ult i32 %i.kl, 256
  br i1 %i.kp, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %FastLog2.exit16.i48.274.i
  %i.kq = tail call double @log2(double noundef %i.ko) #19, !tbaa !5
  br label %FastLog2.exit16.i48.1.2.i

bb.bh:                                            ; preds = %FastLog2.exit16.i48.274.i
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.km
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !716
  br label %FastLog2.exit16.i48.1.2.i

FastLog2.exit16.i48.1.2.i:                        ; preds = %bb.bh, %bb.bg
  %.0.i15.i49.1.2.i = phi double [ %i.ks, %bb.bh ], [ %i.kq, %bb.bg ]
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.ko, double %.0.i15.i49.1.2.i, double %i.kk)
  %i.ku = load i32, ptr %i.ea, align 4, !tbaa !5  ; 3 uses
  %i.kv = zext i32 %i.ku to i64                   ; 2 uses
  %i.kw = add nuw nsw i64 %i.kn, %i.kv            ; 3 uses
  %i.kx = uitofp i32 %i.ku to double              ; 2 uses
  %i.ky = icmp ult i32 %i.ku, 256
  br i1 %i.ky, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %FastLog2.exit16.i48.1.2.i
  %i.kz = tail call double @log2(double noundef %i.kx) #19, !tbaa !5
  br label %FastLog2.exit16.i48.2.2.i

bb.bj:                                            ; preds = %FastLog2.exit16.i48.1.2.i
  %i.la = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.kv
  %i.lb = load double, ptr %i.la, align 8, !tbaa !716
  br label %FastLog2.exit16.i48.2.2.i

FastLog2.exit16.i48.2.2.i:                        ; preds = %bb.bj, %bb.bi
  %.0.i15.i49.2.2.i = phi double [ %i.lb, %bb.bj ], [ %i.kz, %bb.bi ]
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.kx, double %.0.i15.i49.2.2.i, double %i.kt)
  %i.ld = uitofp nneg i64 %i.kw to double         ; 2 uses
  %i.le = icmp samesign ult i64 %i.kw, 256
  br i1 %i.le, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %FastLog2.exit16.i48.2.2.i
  %i.lf = tail call double @log2(double noundef %i.ld) #19, !tbaa !5
  br label %EstimateEntropy.exit52.2.i

bb.bl:                                            ; preds = %FastLog2.exit16.i48.2.2.i
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.kw
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !716
  br label %EstimateEntropy.exit52.2.i

EstimateEntropy.exit52.2.i:                       ; preds = %bb.bl, %bb.bk
  %.0.i.i51.2.i = phi double [ %i.lh, %bb.bl ], [ %i.lf, %bb.bk ]
  %9 = fneg double %i.lc
  %10 = tail call double @llvm.fmuladd.f64(double %i.ld, double %.0.i.i51.2.i, double %9)
  %11 = fadd double %i.kc, %10
  %12 = fneg double %i.hi
  %13 = tail call double @llvm.fmuladd.f64(double %i.hl, double %.0.i.i43.i, double %12)
  %i.li = fadd double %i.hk, %13
  %i.lj = add i32 %i.dz, %i.dw
  %i.lk = add i32 %i.lj, %i.ec
  %i.ll = uitofp i32 %i.lk to double
  %i.lm = fdiv double 1.000000e+00, %i.ll         ; 3 uses
  %i.ln = fmul double %i.lm, %i.gg                ; 3 uses
  %i.lo = fmul double %i.lm, %i.li                ; 2 uses
  %i.lp = fmul double %i.lm, %11
  %i.lq = icmp samesign ult i32 %4, 7
  %i.lr = fmul double %i.ln, 1.000000e+01
  %.sroa.17.1.i = select i1 %i.lq, double %i.lr, double %i.lp ; 2 uses
  %i.ls = fsub double %i.ln, %i.lo
  %i.lt = fcmp olt double %i.ls, 2.000000e-01
  %i.lu = fsub double %i.ln, %.sroa.17.1.i
  %i.lv = fcmp olt double %i.lu, 2.000000e-01
  %or.cond.i = select i1 %i.lt, i1 %i.lv, i1 false
  br i1 %or.cond.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %EstimateEntropy.exit52.2.i
  store i64 1, ptr %6, align 8, !tbaa !67
  br label %ChooseContextMap.exit

bb.bn:                                            ; preds = %EstimateEntropy.exit52.2.i
  %i.lw = fsub double %i.lo, %.sroa.17.1.i
  %i.lx = fcmp olt double %i.lw, 2.000000e-02
  br i1 %i.lx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i64 2, ptr %6, align 8, !tbaa !67
  store ptr @ChooseContextMap.kStaticContextMapSimpleUTF8, ptr %7, align 8, !tbaa !568
  br label %ChooseContextMap.exit

bb.bp:                                            ; preds = %bb.bn
  store i64 3, ptr %6, align 8, !tbaa !67
  store ptr @ChooseContextMap.kStaticContextMapContinuation, ptr %7, align 8, !tbaa !568
  br label %ChooseContextMap.exit

ChooseContextMap.exit:                            ; preds = %bb.bp, %bb.bo, %bb.bm, %ShouldUseComplexStaticContextMap.exit, %bb.a
  ret void
}

declare hidden void @BrotliBuildMetaBlockGreedy(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliBuildMetaBlock(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliOptimizeHistograms(i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliStoreMetaBlock(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden double @BrotliBitsEntropy(ptr noundef, i64 noundef) local_unnamed_addr #3

declare hidden void @BrotliInitBlockSplit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #16

declare hidden void @BrotliDestroyBlockSplit(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliInitSharedEncoderDictionary(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind optsize uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { cold nofree nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 6972}
!10 = !{!"BrotliEncoderStateStruct", !11, i64 0, !29, i64 1400, !12, i64 1424, !30, i64 1432, !12, i64 1472, !31, i64 1480, !12, i64 1488, !12, i64 1496, !12, i64 1504, !12, i64 1512, !12, i64 1520, !7, i64 1528, !7, i64 1592, !32, i64 1608, !7, i64 1610, !7, i64 1611, !7, i64 1612, !7, i64 1613, !12, i64 1616, !22, i64 1624, !33, i64 1632, !7, i64 2768, !35, i64 6864, !12, i64 6872, !36, i64 6880, !37, i64 6888, !35, i64 6896, !22, i64 6904, !12, i64 6912, !22, i64 6920, !12, i64 6928, !12, i64 6936, !7, i64 6944, !6, i64 6960, !6, i64 6964, !6, i64 6968, !6, i64 6972}
!11 = !{!"BrotliEncoderParams", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !12, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !13, i64 40, !14, i64 56, !15, i64 80}
!12 = !{!"long", !7, i64 0}
!13 = !{!"BrotliHasherParams", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!14 = !{!"BrotliDistanceParams", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !12, i64 16}
!15 = !{!"SharedEncoderDictionary", !6, i64 0, !16, i64 8, !17, i64 544, !6, i64 1312}
!16 = !{!"CompoundDictionary", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 144, !7, i64 272, !12, i64 400, !7, i64 408}
!17 = !{!"ContextualEncoderDictionary", !6, i64 0, !7, i64 4, !7, i64 5, !7, i64 72, !12, i64 584, !18, i64 592, !28, i64 760}
!18 = !{!"BrotliEncoderDictionary", !19, i64 0, !6, i64 8, !6, i64 12, !12, i64 16, !21, i64 24, !22, i64 32, !21, i64 40, !23, i64 48, !24, i64 56, !6, i64 96, !27, i64 104, !21, i64 112, !22, i64 120, !12, i64 128, !21, i64 136, !12, i64 144, !23, i64 152, !19, i64 160}
!19 = !{!"p1 _ZTS16BrotliDictionary", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!"p1 short", !20, i64 0}
!22 = !{!"p1 omnipotent char", !20, i64 0}
!23 = !{!"p1 _ZTS8DictWord", !20, i64 0}
!24 = !{!"BrotliTrie", !25, i64 0, !12, i64 8, !12, i64 16, !26, i64 24}
!25 = !{!"p1 _ZTS14BrotliTrieNode", !20, i64 0}
!26 = !{!"BrotliTrieNode", !7, i64 0, !7, i64 1, !7, i64 2, !6, i64 4, !6, i64 8}
!27 = !{!"p1 _ZTS27ContextualEncoderDictionary", !20, i64 0}
!28 = !{!"p1 _ZTS23BrotliEncoderDictionary", !20, i64 0}
!29 = !{!"MemoryManager", !20, i64 0, !20, i64 8, !20, i64 16}
!30 = !{!"RingBuffer", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !22, i64 24, !22, i64 32}
!31 = !{!"p1 _ZTS7Command", !20, i64 0}
!32 = !{!"short", !7, i64 0}
!33 = !{!"", !34, i64 0, !7, i64 80}
!34 = !{!"", !7, i64 0, !6, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !6, i64 72}
!35 = !{!"p1 int", !20, i64 0}
!36 = !{!"p1 _ZTS18BrotliOnePassArena", !20, i64 0}
!37 = !{!"p1 _ZTS18BrotliTwoPassArena", !20, i64 0}
!38 = !{!10, !6, i64 0}
!39 = !{!10, !6, i64 4}
!40 = !{!10, !6, i64 8}
!41 = !{!10, !6, i64 12}
!42 = !{!10, !6, i64 32}
!43 = !{!10, !12, i64 24}
!44 = !{!10, !6, i64 36}
!45 = !{!10, !6, i64 56}
!46 = !{!10, !6, i64 60}
!47 = !{!10, !12, i64 16}
!48 = !{!11, !6, i64 0}
!49 = !{!11, !6, i64 36}
!50 = !{!11, !6, i64 4}
!51 = !{!11, !6, i64 8}
!52 = !{!11, !12, i64 72}
!53 = !{!10, !12, i64 1424}
!54 = !{!10, !7, i64 1612}
!55 = !{!10, !7, i64 1613}
!56 = !{!10, !6, i64 6964}
!57 = !{!10, !6, i64 6968}
!58 = !{!10, !22, i64 1624}
!59 = !{!10, !31, i64 1480}
!60 = !{!30, !22, i64 24}
!61 = !{!20, !20, i64 0}
!62 = !{!10, !35, i64 6864}
!63 = !{!10, !36, i64 6880}
!64 = !{!10, !37, i64 6888}
!65 = !{!10, !35, i64 6896}
!66 = !{!10, !22, i64 6904}
!67 = !{!12, !12, i64 0}
!68 = !{!7, !7, i64 0}
!69 = !{!22, !22, i64 0}
!70 = !{!10, !12, i64 6928}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!10, !7, i64 1610}
!74 = !{!10, !32, i64 1608}
!75 = !{!10, !7, i64 1611}
!76 = !{!10, !6, i64 6960}
!77 = !{!11, !6, i64 12}
!78 = !{!11, !6, i64 56}
!79 = !{!11, !6, i64 60}
!80 = !{!32, !32, i64 0}
!81 = !{!82, !12, i64 2176}
!82 = !{!"BrotliOnePassArena", !7, i64 0, !7, i64 256, !7, i64 768, !7, i64 896, !7, i64 1152, !7, i64 1664, !12, i64 2176, !7, i64 2184, !7, i64 6288, !7, i64 7312, !7, i64 8016}
!83 = !{!10, !12, i64 1520}
!84 = !{!10, !22, i64 6920}
!85 = !{!10, !12, i64 6936}
!86 = !{!10, !12, i64 1512}
!87 = !{!88}
!88 = distinct !{!88, !89, !"BrotliWriteBits: argument 1"}
!89 = distinct !{!89, !"BrotliWriteBits"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"BrotliWriteBits: argument 0"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"BrotliWriteBits: argument 1"}
!94 = distinct !{!94, !"BrotliWriteBits"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"BrotliWriteBits: argument 0"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"BrotliWriteBits: argument 1"}
!99 = distinct !{!99, !"BrotliWriteBits"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"BrotliWriteBits: argument 0"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"BrotliWriteBits: argument 1"}
!104 = distinct !{!104, !"BrotliWriteBits"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"BrotliWriteBits: argument 0"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"BrotliWriteBits: argument 1"}
!109 = distinct !{!109, !"BrotliWriteBits"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"BrotliWriteBits: argument 0"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"BrotliWriteBits: argument 1"}
!114 = distinct !{!114, !"BrotliWriteBits"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"BrotliWriteBits: argument 0"}
!117 = !{!10, !12, i64 6912}
!118 = !{!10, !12, i64 1616}
!119 = distinct !{!119, !72}
!120 = !{!10, !12, i64 6872}
!121 = !{!30, !6, i64 20}
!122 = !{!30, !6, i64 8}
!123 = !{!30, !6, i64 16}
!124 = !{!30, !22, i64 32}
!125 = !{!30, !6, i64 12}
!126 = !{!30, !6, i64 0}
!127 = !{!30, !6, i64 4}
!128 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!129 = !{!10, !22, i64 1464}
!130 = !{!10, !6, i64 1436}
!131 = !{!10, !6, i64 1392}
!132 = !{!10, !12, i64 1488}
!133 = !{!10, !12, i64 1472}
!134 = !{!33, !6, i64 32}
!135 = !{!13, !6, i64 0}
!136 = !{!11, !12, i64 24}
!137 = !{!13, !6, i64 8}
!138 = !{!13, !6, i64 4}
!139 = !{!13, !6, i64 12}
!140 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!141 = !{!11, !6, i64 44}
!142 = !{!11, !6, i64 48}
!143 = !{!33, !6, i64 56}
!144 = !{!145}
!145 = distinct !{!145, !146, !"InitializeH2: argument 0"}
!146 = distinct !{!146, !"InitializeH2"}
!147 = !{!148, !20, i64 0}
!148 = !{!"H2", !20, i64 0, !35, i64 8}
!149 = !{!148, !35, i64 8}
!150 = !{!151}
!151 = distinct !{!151, !152, !"InitializeH3: argument 0"}
!152 = distinct !{!152, !"InitializeH3"}
!153 = !{!154, !20, i64 0}
!154 = !{!"H3", !20, i64 0, !35, i64 8}
!155 = !{!154, !35, i64 8}
!156 = !{!157}
!157 = distinct !{!157, !158, !"InitializeH4: argument 0"}
!158 = distinct !{!158, !"InitializeH4"}
!159 = !{!160, !20, i64 0}
!160 = !{!"H4", !20, i64 0, !35, i64 8}
!161 = !{!160, !35, i64 8}
!162 = !{!163}
!163 = distinct !{!163, !164, !"InitializeH40: argument 0"}
!164 = distinct !{!164, !"InitializeH40"}
!165 = !{!166, !20, i64 32}
!166 = !{!"H40", !7, i64 0, !12, i64 8, !7, i64 16, !20, i64 32}
!167 = !{!166, !12, i64 8}
!168 = !{!169}
!169 = distinct !{!169, !170, !"InitializeH41: argument 0"}
!170 = distinct !{!170, !"InitializeH41"}
!171 = !{!172, !20, i64 32}
!172 = !{!"H41", !7, i64 0, !12, i64 8, !7, i64 16, !20, i64 32}
!173 = !{!172, !12, i64 8}
end_hunk_0
