Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/literal_cost?download=true
begin_hunk_0_@BrotliEstimateBitCostsForLiterals:bb.a
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !9
  %i.fi = add i64 %i.fh, -1
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !9
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i122.i ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !9
  %i.fl = add i64 %i.fk, -1
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %UTF8Position.exit123.i, %.peel.next.i
  %i.fm = add i64 %.1109136.i, 495
  %i.fn = icmp ult i64 %i.fm, %1
  br i1 %i.fn, label %bb.aa, label %UTF8Position.exit129.i

bb.aa:                                            ; preds = %bb.z
  %i.fo = add i64 %.1109136.i, %0                 ; 3 uses
  %i.fp = add i64 %i.fo, 495
  %i.fq = add i64 %i.fo, 494
  %i.fr = and i64 %i.fq, %2
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !8   ; 2 uses
  %i.fu = add i64 %i.fo, 493
  %i.fv = and i64 %i.fu, %2
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !8
  %i.fy = icmp sgt i8 %i.ft, -1
  br i1 %i.fy, label %UTF8Position.exit126.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fz = icmp samesign ugt i8 %i.ft, -65
  br i1 %i.fz, label %UTF8Position.exit126.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = icmp ult i8 %i.fx, -32
  %spec.select.i124.i = select i1 %i.ga, i64 0, i64 %i.r
  br label %UTF8Position.exit126.i

UTF8Position.exit126.i:                           ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i125.i = phi i64 [ %spec.select.i124.i, %bb.ac ], [ 0, %bb.aa ], [ %i.r, %bb.ab ] ; 2 uses
  %i.gb = and i64 %i.fp, %2
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !8
  %i.ge = zext i8 %i.gd to i64
  %.idx115.i = shl nuw nsw i64 %.0.i125.i, 11
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 %.idx115.i
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ge ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !9
  %i.gi = add i64 %i.gh, 1
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !9
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i125.i ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !9
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !9
  br label %UTF8Position.exit129.i

UTF8Position.exit129.i:                           ; preds = %UTF8Position.exit126.i, %bb.z
  %i.gm = add i64 %i.w, %.1109136.i
  %i.gn = and i64 %i.gm, %2
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !8   ; 2 uses
  %i.gq = add i64 %i.x, %.1109136.i
  %i.gr = and i64 %i.gq, %2
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !8
  %i.gu = icmp ult i8 %i.gt, -32
  %i.gv = icmp sgt i8 %i.gp, -1
  %i.gw = icmp samesign ult i8 %i.gp, -64
  %.not97 = select i1 %i.gw, i1 %i.gu, i1 false
  %i.gx = select i1 %i.gv, i1 true, i1 %.not97
  %.0.i128.i = select i1 %i.gx, i64 0, i64 %i.r   ; 2 uses
  %i.gy = add i64 %.1109136.i, %0
  %i.gz = and i64 %i.gy, %2
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !8
  %i.hc = zext i8 %i.hb to i64
  %.idx116.i = shl nuw nsw i64 %.0.i128.i, 11
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 %.idx116.i
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hc
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !9  ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.hf, i64 1) ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i128.i
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !9  ; 3 uses
  %i.hi = icmp ult i64 %i.hh, 256
  br i1 %i.hi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %UTF8Position.exit129.i
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.hh
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !13
  br label %FastLog2.exit119.i

bb.ae:                                            ; preds = %UTF8Position.exit129.i
  %i.hl = uitofp i64 %i.hh to double
  %i.hm = tail call double @log2(double noundef %i.hl) #7
  br label %FastLog2.exit119.i

FastLog2.exit119.i:                               ; preds = %bb.ae, %bb.ad
  %.0.i118.i = phi double [ %i.hk, %bb.ad ], [ %i.hm, %bb.ae ]
  %i.hn = icmp ult i64 %i.hf, 256
  br i1 %i.hn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %FastLog2.exit119.i
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %spec.store.select.i
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !13
  br label %FastLog2.exit.i

bb.ag:                                            ; preds = %FastLog2.exit119.i
  %i.hq = uitofp i64 %spec.store.select.i to double
  %i.hr = tail call double @log2(double noundef %i.hq) #7
  br label %FastLog2.exit.i

FastLog2.exit.i:                                  ; preds = %bb.ag, %bb.af
  %.0.i.i = phi double [ %i.hp, %bb.af ], [ %i.hr, %bb.ag ]
  %i.hs = fsub double %.0.i118.i, %.0.i.i
  %i.ht = fadd double %i.hs, 2.905000e-02         ; 3 uses
  %i.hu = fcmp olt double %i.ht, 1.000000e+00
  %i.hv = fmul nnan double %i.ht, 5.000000e-01
  %i.hw = fadd double %i.hv, 5.000000e-01
  %.0.i66 = select i1 %i.hu, double %i.hw, double %i.ht ; 2 uses
  %i.hx = icmp ult i64 %.1109136.i, 2000
  %i.hy = uitofp nneg i64 %.1109136.i to double
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hy, double 1.750000e-04, double 3.500000e-01)
  %i.ia = fadd double %i.hz, %.0.i66
  %.1.i = select i1 %i.hx, double %i.ia, double %.0.i66
  %i.ib = fptrunc double %.1.i to float
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.1109136.i
  store float %i.ib, ptr %i.ic, align 4, !tbaa !15
  %i.id = add nuw i64 %.1109136.i, 1              ; 2 uses
  %exitcond140.not.i = icmp eq i64 %i.id, %1
  br i1 %exitcond140.not.i, label %EstimateBitCostsForLiteralsUTF8.exit, label %.peel.next.i, !llvm.loop !18

EstimateBitCostsForLiteralsUTF8.exit:             ; preds = %FastLog2.exit.i, %FastLog2.exit.i.peel, %.preheader.thread.i, %FastLog2.exit.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit

bb.ah:                                            ; preds = %bb.a
  %i.ie = tail call i64 @llvm.umin.i64(i64 %1, i64 2000) ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  br i1 %.not71, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ah
  %xtraiter = and i64 %i.ie, 1
  %i.if = icmp eq i64 %1, 1
  br i1 %i.if, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ie, 2046
  br label %.lr.ph

.lr.ph70.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph70, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph70.unr-lcssa, %.lr.ph.preheader
  %.05867.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.jh, %.lr.ph70.unr-lcssa ]
  %lcmp.mod100 = trunc i64 %i.ie to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.ig = add i64 %.05867.epil.init, %0
  %i.ih = and i64 %i.ig, %2
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !8
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ik ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !9
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.il, align 8, !tbaa !9
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.unr-lcssa, %.lr.ph.epil.preheader
  %i.io = add i64 %0, -2000
  %i.ip = add i64 %0, 2000
  br label %bb.ai

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.05867 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.jh, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.iq = add i64 %.05867, %0
  %i.ir = and i64 %i.iq, %2
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !8
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.iu ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !9
  %i.ix = add i64 %i.iw, 1
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !9
  %i.iy = or disjoint i64 %.05867, 1
  %i.iz = add i64 %i.iy, %0
  %i.ja = and i64 %i.iz, %2
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !8
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jd ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !9
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !9
  %i.jh = add nuw nsw i64 %.05867, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph70.unr-lcssa, label %.lr.ph, !llvm.loop !20

bb.ai:                                            ; preds = %.lr.ph70, %FastLog2.exit
  %.05769 = phi i64 [ %i.ie, %.lr.ph70 ], [ %.2, %FastLog2.exit ] ; 2 uses
  %.15968 = phi i64 [ 0, %.lr.ph70 ], [ %i.lb, %FastLog2.exit ] ; 7 uses
  %i.ji = icmp ugt i64 %.15968, 1999
  br i1 %i.ji, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jj = add i64 %i.io, %.15968
  %i.jk = and i64 %i.jj, %2
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !8
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jn ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !9
  %i.jq = add i64 %i.jp, -1
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !9
  %i.jr = add i64 %.05769, -1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1 = phi i64 [ %i.jr, %bb.aj ], [ %.05769, %bb.ai ] ; 2 uses
  %i.js = add i64 %.15968, 2000
  %i.jt = icmp ult i64 %i.js, %1
  br i1 %i.jt, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ju = add i64 %i.ip, %.15968
  %i.jv = and i64 %i.ju, %2
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !8
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jy ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !9
  %i.kb = add i64 %i.ka, 1
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !9
  %i.kc = add i64 %.1, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2 = phi i64 [ %i.kc, %bb.al ], [ %.1, %bb.ak ] ; 4 uses
  %i.kd = add i64 %.15968, %0
  %i.ke = and i64 %i.kd, %2
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !8
  %i.kh = zext i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kh
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !9  ; 2 uses
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.kj, i64 1) ; 2 uses
  %i.kk = icmp ult i64 %.2, 256
  br i1 %i.kk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.2
  %i.km = load double, ptr %i.kl, align 8, !tbaa !13
  br label %FastLog2.exit65

bb.ao:                                            ; preds = %bb.am
  %i.kn = uitofp i64 %.2 to double
  %i.ko = tail call double @log2(double noundef %i.kn) #7
  br label %FastLog2.exit65

FastLog2.exit65:                                  ; preds = %bb.an, %bb.ao
  %.0.i64 = phi double [ %i.km, %bb.an ], [ %i.ko, %bb.ao ]
  %i.kp = icmp ult i64 %i.kj, 256
  br i1 %i.kp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %FastLog2.exit65
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %spec.store.select
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !13
  br label %FastLog2.exit

bb.aq:                                            ; preds = %FastLog2.exit65
  %i.ks = uitofp i64 %spec.store.select to double
  %i.kt = tail call double @log2(double noundef %i.ks) #7
  br label %FastLog2.exit

FastLog2.exit:                                    ; preds = %bb.ap, %bb.aq
  %.0.i = phi double [ %i.kr, %bb.ap ], [ %i.kt, %bb.aq ]
  %i.ku = fsub double %.0.i64, %.0.i
  %i.kv = fadd double %i.ku, 2.900000e-02         ; 3 uses
  %i.kw = fcmp olt double %i.kv, 1.000000e+00
  %i.kx = fmul nnan double %i.kv, 5.000000e-01
  %i.ky = fadd double %i.kx, 5.000000e-01
  %.0 = select i1 %i.kw, double %i.ky, double %i.kv
  %i.kz = fptrunc double %.0 to float
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.15968
  store float %i.kz, ptr %i.la, align 4, !tbaa !15
  %i.lb = add nuw i64 %.15968, 1                  ; 2 uses
  %exitcond74.not = icmp eq i64 %i.lb, %1
  br i1 %exitcond74.not, label %.loopexit, label %bb.ai, !llvm.loop !21

.loopexit:                                        ; preds = %FastLog2.exit, %bb.ah, %EstimateBitCostsForLiteralsUTF8.exit
  ret void
}

declare hidden i32 @BrotliIsMostlyUTF8(ptr noundef, i64 noundef, i64 noundef, i64 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !6, i64 0}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !19}
!19 = !{!"llvm.loop.peeled.count", i32 2}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
end_hunk_0
