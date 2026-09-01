Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/circpos?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
begin_hunk_0_@doBlock:bb.a
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !70 ; 3 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !59 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.091108.i.i, i64 112
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !73
  %.not83.i.i.i = trunc i32 %i.jf to i1
  %i.jg = fneg double %i.iz
  %i.jh = fcmp ogt double %i.jd, %i.jg
  %or.cond.i.i.i = select i1 %.not83.i.i.i, i1 %i.jh, i1 false
  br i1 %or.cond.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ji = extractelement <2 x double> %i.hn, i64 0
  %i.jj = extractelement <2 x double> %i.hn, i64 1
  %i.jk = call double @hypot(double noundef %i.ji, double noundef %i.jj) #10
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !59
  %i.jn = fadd double %i.iz, %i.jd
  %i.jo = call double @atan2(double noundef %i.jm, double noundef %i.jn) #10 ; 2 uses
  %i.jp = call double @cos(double noundef %i.jo) #10 ; 2 uses
  %i.jq = fdiv double %i.ix, %i.jp
  %i.jr = fsub double %i.iz, %i.jq
  %i.js = fsub double f0x3FF921FB54442D18, %i.jo
  %i.jt = fdiv double %i.jr, %i.jk
  %i.ju = fmul double %i.jp, %i.jt
  %i.jv = call double @asin(double noundef %i.ju) #10
  %i.jw = fsub double %i.js, %i.jv
  %i.jx = fadd double %.390.i.i, %i.jw
  br label %getRotation.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !59
  %i.ka = call double @atan2(double noundef %i.jz, double noundef %i.jd) #10
  %i.kb = fsub double f0x400921FB54442D18, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ja, i64 152
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !39
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !20
  %i.kg = fsub double %i.kb, %i.kf
  %i.kh = fadd double %.390.i.i, %i.kg            ; 3 uses
  %i.ki = fcmp ogt double %i.kh, f0x401921FB54442D18
  %i.kj = fadd double %i.kh, f0xC01921FB54442D18
  %.167.i.i.i = select i1 %i.ki, double %i.kj, double %i.kh
  br label %getRotation.exit.i.i

getRotation.exit.i.i:                             ; preds = %bb.am, %bb.al, %._crit_edge.i.i.i, %bb.ah, %bb.ag, %bb.ae
  %.1.i.i.i = phi double [ %.066.i.i.i, %bb.ae ], [ %i.hy, %bb.ag ], [ %.167.i.i.i, %bb.am ], [ %i.jx, %bb.al ], [ 0.000000e+00, %._crit_edge.i.i.i ], [ 0.000000e+00, %bb.ah ]
  %i.kk = extractelement <2 x double> %i.hn, i64 0
  %i.kl = extractelement <2 x double> %i.hn, i64 1
  call fastcc void @applyDelta(ptr noundef nonnull %.091108.i.i, double noundef %i.kk, double noundef %i.kl, double noundef %.1.i.i.i)
  %.pn.i.i = fadd double %.pn100.i.i, %i.hc
  %.4.i.i = fadd double %.pn.i.i, %.390.i.i       ; 3 uses
  %i.km = add nsw i32 %.082105.i.i, 1             ; 2 uses
  %i.kn = icmp eq i32 %i.km, %i.gh
  br i1 %i.kn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %getRotation.exit.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %getRotation.exit.i.i, %bb.x, %bb.w
  %.5.i.i = phi double [ %.188103.i.i, %bb.w ], [ %.188103.i.i, %bb.x ], [ %.4.i.i, %bb.an ], [ %.4.i.i, %getRotation.exit.i.i ]
  %.185.i.i = phi double [ %.084104.i.i, %bb.w ], [ %.084104.i.i, %bb.x ], [ %.4.i.i, %bb.an ], [ %.084104.i.i, %getRotation.exit.i.i ] ; 2 uses
  %.183.i.i = phi i32 [ %.082105.i.i, %bb.w ], [ %.082105.i.i, %bb.x ], [ %i.gh, %bb.an ], [ %i.km, %getRotation.exit.i.i ]
  %.3.i.i = phi double [ %.079106.i.i, %bb.w ], [ %.079106.i.i, %bb.x ], [ %.281.i.i, %bb.an ], [ %.281.i.i, %getRotation.exit.i.i ] ; 2 uses
  %.2.i.i = phi double [ %.0107.i.i, %bb.w ], [ %.0107.i.i, %bb.x ], [ %.1.i85.i, %bb.an ], [ %.1.i85.i, %getRotation.exit.i.i ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.091108.i.i, i64 8
  %.091.i.i = load ptr, ptr %i.ko, align 8, !tbaa !16 ; 2 uses
  %.not.i83.i = icmp eq ptr %.091.i.i, null
  br i1 %.not.i83.i, label %._crit_edge.i.i, label %bb.u, !llvm.loop !74

._crit_edge.i.i:                                  ; preds = %bb.ao, %bb.t
  %.084.lcssa.i.i = phi double [ 0.000000e+00, %bb.t ], [ %.185.i.i, %bb.ao ]
  %.079.lcssa.i.i = phi double [ %.sroa.10.0100.i, %bb.t ], [ %.3.i.i, %bb.ao ] ; 2 uses
  %.0.lcssa.i84.i = phi double [ %.sroa.14.099.i, %bb.t ], [ %.2.i.i, %bb.ao ] ; 2 uses
  br i1 %i.fc, label %positionChildren.exit.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.i.i
  %i.kp = load ptr, ptr %i.fd, align 8, !tbaa !54 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.p
  br i1 %i.kq, label %bb.aq, label %positionChildren.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !35
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 152
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !39
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  store double %.084.lcssa.i.i, ptr %i.kv, align 8, !tbaa !20
  br label %positionChildren.exit.i

positionChildren.exit.i:                          ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i
  %i.kw = fadd nsz double %.086.i.i, %i.gd
  %i.kx = call nsz double @llvm.maxnum.f64(double %.sroa.4.0101.i, double %i.kw) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next.i, %.073.lcssa139.ph.i
  br i1 %exitcond116.not.i, label %._crit_edge105.loopexit.i, label %bb.p, !llvm.loop !75

._crit_edge105.loopexit.i:                        ; preds = %positionChildren.exit.i
  %i.ky = fadd double %.079.lcssa.i.i, %.0.lcssa.i84.i
  %i.kz = fmul double %i.ky, 5.000000e-01
  %i.la = fadd double %i.kz, f0xC00921FB54442D18
  br label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %._crit_edge105.loopexit.i, %.preheader.i, %gv_calloc.exit.i
  %.075.lcssa136145.i = phi double [ %.075.lcssa.i, %._crit_edge105.loopexit.i ], [ %.075.lcssa.i, %.preheader.i ], [ 0.000000e+00, %gv_calloc.exit.i ]
  %.sroa.14.0.lcssa.i = phi double [ %i.la, %._crit_edge105.loopexit.i ], [ f0xC01090FDAA22168C, %.preheader.i ], [ f0xC01090FDAA22168C, %gv_calloc.exit.i ]
  %.sroa.4.0.lcssa.i = phi double [ %i.kx, %._crit_edge105.loopexit.i ], [ %i.o, %.preheader.i ], [ %i.o, %gv_calloc.exit.i ]
  call void @free(ptr noundef %i.h) #10
  %i.lb = icmp eq i64 %.0.lcssa, 1
  br i1 %i.lb, label %bb.ar, label %position.exit

bb.ar:                                            ; preds = %._crit_edge105.i
  %i.lc = fmul double %2, 5.000000e-01
  %i.ld = fadd double %i.lc, %.075.lcssa136145.i  ; 2 uses
  %i.le = fneg double %i.ld
  call fastcc void @applyDelta(ptr noundef nonnull %1, double noundef %i.le, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %i.lf = load double, ptr %i.n, align 8, !tbaa !33
  %i.lg = fadd double %i.ld, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !73
  %i.lj = or i32 %i.li, 1
  store i32 %i.lj, ptr %i.lh, align 8, !tbaa !73
  br label %position.exit

position.exit:                                    ; preds = %._crit_edge105.i, %bb.ar
  %.sroa.4.0.lcssa.sink.i = phi double [ %i.lg, %bb.ar ], [ %.sroa.4.0.lcssa.i, %._crit_edge105.i ]
  store double %.sroa.4.0.lcssa.sink.i, ptr %i.n, align 8, !tbaa !33
  br label %bb.as

bb.as:                                            ; preds = %position.exit, %._crit_edge
  %.024 = phi double [ %.sroa.14.0.lcssa.i, %position.exit ], [ f0x400921FB54442D18, %._crit_edge ] ; 3 uses
  %i.lk = icmp eq i64 %.val, 1
  br i1 %i.lk, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.ll = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %.not28 = icmp eq ptr %i.ll, null
  br i1 %.not28, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !35
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 152
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !39
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !61
  %.not29 = icmp eq ptr %i.lr, null
  br i1 %.not29, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store double %.024, ptr %i.ls, align 8, !tbaa !69
  %i.lt = fcmp olt double %.024, 0.000000e+00
  br i1 %i.lt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lu = fadd double %.024, f0x401921FB54442D18
  store double %i.lu, ptr %i.ls, align 8, !tbaa !69
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.at, %bb.au, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @layout_block(ptr dead_on_unwind writable sret(%struct.nodelist_t) align 8, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @applyDelta(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = tail call ptr @agfstnode(ptr noundef %i.b) #10 ; 2 uses
  %.not32 = icmp eq ptr %i.c, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = insertelement <2 x double> poison, double %1, i64 0
  %i.e = insertelement <2 x double> %i.d, double %2, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03033 = phi ptr [ %i.u, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03033, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 3 uses
  %4 = load double, ptr %i.i, align 8, !tbaa !59
  %5 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %6 = load double, ptr %5, align 8, !tbaa !59
  %i.j = tail call double @cos(double noundef %3) #10 ; 2 uses
  %i.k = tail call double @sin(double noundef %3) #10 ; 2 uses
  %i.l = fneg double %i.k
  %7 = insertelement <2 x double> poison, double %6, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.j, i64 1
  %i.o = fmul <2 x double> %8, %i.n
  %9 = insertelement <2 x double> poison, double %4, i64 0
  %i.p = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = insertelement <2 x double> poison, double %i.j, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.k, i64 1
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> %i.o)
  %i.t = fadd <2 x double> %i.e, %i.s
  store <2 x double> %i.t, ptr %i.i, align 8, !tbaa !59
  %i.u = tail call ptr @agnxtnode(ptr noundef %i.b, ptr noundef nonnull %.03033) #10 ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.034 = load ptr, ptr %i.v, align 8, !tbaa !16  ; 2 uses
  %.not3135 = icmp eq ptr %.034, null
  br i1 %.not3135, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %._crit_edge, %.lr.ph38
  %.036 = phi ptr [ %.0, %.lr.ph38 ], [ %.034, %._crit_edge ] ; 2 uses
  tail call fastcc void @applyDelta(ptr noundef nonnull %.036, double noundef %1, double noundef %2, double noundef %3)
  %i.w = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %.0 = load ptr, ptr %i.w, align 8, !tbaa !16    ; 2 uses
  %.not31 = icmp eq ptr %.0, null
  br i1 %.not31, label %._crit_edge39, label %.lr.ph38, !llvm.loop !77

._crit_edge39:                                    ; preds = %.lr.ph38, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #5 {
bb.a:
  tail call void @exit(i32 noundef 1) #14
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #9

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !15, i64 48}
!9 = !{!"", !10, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !13, i64 32, !14, i64 40, !15, i64 48}
!10 = !{!"", !11, i64 0, !11, i64 8}
!11 = !{!"p1 _ZTS5block", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS7Agsym_s", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!11, !11, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{i64 0, i64 32, !20, i64 32, i64 8, !21, i64 40, i64 8, !22}
!20 = !{!6, !6, i64 0}
!21 = !{!12, !12, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8Agnode_s", !12, i64 0}
!24 = !{!25, !26, i64 16}
!25 = !{!"", !12, i64 0, !26, i64 8, !26, i64 16, !26, i64 24}
!26 = !{!"long", !6, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!29 = !{!30, !11, i64 88}
!30 = !{!"block", !23, i64 0, !11, i64 8, !31, i64 16, !15, i64 24, !15, i64 32, !32, i64 40, !10, i64 88, !15, i64 104, !5, i64 112}
!31 = !{!"p1 _ZTS8Agraph_s", !12, i64 0}
!32 = !{!"", !6, i64 0, !12, i64 32, !23, i64 40}
!33 = !{!30, !15, i64 24}
!34 = !{!30, !23, i64 0}
!35 = !{!36, !38, i64 16}
!36 = !{!"Agobj_s", !37, i64 0, !38, i64 16}
!37 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !26, i64 8}
!38 = !{!"p1 _ZTS7Agrec_s", !12, i64 0}
!39 = !{!40, !12, i64 152}
!40 = !{!"Agnodeinfo_t", !41, i64 0, !42, i64 16, !12, i64 24, !43, i64 32, !15, i64 48, !15, i64 56, !44, i64 64, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !45, i64 136, !45, i64 144, !12, i64 152, !6, i64 160, !6, i64 161, !46, i64 162, !6, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !47, i64 176, !15, i64 184, !6, i64 192, !46, i64 193, !23, i64 200, !23, i64 208, !6, i64 216, !26, i64 224, !6, i64 232, !6, i64 233, !6, i64 234, !23, i64 240, !23, i64 248, !48, i64 256, !48, i64 272, !48, i64 288, !48, i64 304, !48, i64 320, !31, i64 336, !5, i64 344, !23, i64 352, !5, i64 360, !5, i64 364, !15, i64 368, !48, i64 376, !48, i64 392, !48, i64 408, !48, i64 424, !51, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !6, i64 464}
!41 = !{!"Agrec_s", !14, i64 0, !38, i64 8}
!42 = !{!"p1 _ZTS10shape_desc", !12, i64 0}
!43 = !{!"pointf_s", !15, i64 0, !15, i64 8}
!44 = !{!"", !43, i64 0, !43, i64 16}
!45 = !{!"p1 _ZTS11textlabel_t", !12, i64 0}
!46 = !{!"_Bool", !6, i64 0}
!47 = !{!"p1 double", !12, i64 0}
!48 = !{!"elist", !49, i64 0, !26, i64 8}
!49 = !{!"p2 _ZTS8Agedge_s", !50, i64 0}
!50 = !{!"any p2 pointer", !12, i64 0}
!51 = !{!"p1 _ZTS8Agedge_s", !12, i64 0}
!52 = !{!53, !5, i64 8}
!53 = !{!"", !6, i64 0, !5, i64 8, !23, i64 16, !11, i64 24, !6, i64 32}
!54 = !{!55, !23, i64 0}
!55 = !{!"", !23, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !5, i64 48}
!56 = !{!55, !15, i64 8}
!57 = !{!55, !5, i64 48}
!58 = !{!55, !15, i64 16}
!59 = !{!15, !15, i64 0}
!60 = distinct !{!60, !18}
!61 = !{!53, !23, i64 16}
!62 = distinct !{!62, !18}
!63 = !{!55, !15, i64 32}
!64 = !{!55, !15, i64 24}
!65 = !{!55, !15, i64 40}
!66 = distinct !{!66, !18, !67}
!67 = !{!"llvm.loop.peeled.count", i32 1}
!68 = !{!30, !31, i64 16}
!69 = !{!30, !15, i64 104}
!70 = !{!40, !47, i64 176}
!71 = distinct !{!71, !18}
!72 = !{!30, !15, i64 32}
!73 = !{!30, !5, i64 112}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
end_hunk_0
