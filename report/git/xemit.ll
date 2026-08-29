Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xemit?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@xdl_emit_diff:bb.a
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !43
  %i.ib = zext i8 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !43
  %i.ie = and i8 %i.id, 1
  %.not19.i.i.i329 = icmp eq i8 %i.ie, 0
  br i1 %.not19.i.i.i329, label %match_func_rec.exit.i321.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.if = add nsw i64 %.122.i.i.i328, -1
  %i.ig = icmp sgt i64 %.122.i.i.i328, 1
  br i1 %i.ig, label %bb.an, label %match_func_rec.exit.i321.thread, !llvm.loop !53

match_func_rec.exit.i321.thread:                  ; preds = %bb.an, %bb.ao
  %.1.lcssa.i.i.i331 = phi i64 [ 0, %bb.ao ], [ %.122.i.i.i328, %bb.an ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull readonly align 1 %i.hp, i64 %.1.lcssa.i.i.i331, i1 false)
  br label %.split.i

match_func_rec.exit.i321:                         ; preds = %bb.aj
  %i.ih = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.ii = call i64 %i.ho(ptr noundef %i.hp, i64 noundef %i.hr, ptr noundef nonnull %i.m, i64 noundef range(i64 1, 81) 80, ptr noundef %i.ih) #7, !inline_history !47 ; 2 uses
  %i.ij = icmp slt i64 %i.ii, 0
  br i1 %i.ij, label %.thread.i323, label %.split.i

.split.i:                                         ; preds = %match_func_rec.exit.i321, %match_func_rec.exit.i321.thread
  %.0.i.i322388 = phi i64 [ %.1.lcssa.i.i.i331, %match_func_rec.exit.i321.thread ], [ %i.ii, %match_func_rec.exit.i321 ]
  store i64 %.0.i.i322388, ptr %4, align 8, !tbaa !54
  br label %get_func_line.exit333

.thread.i323:                                     ; preds = %match_func_rec.exit.i321, %switch.early.test.i.i.i332, %bb.ak
  %i.ik = add nsw i64 %.02538.i318, %i.hi         ; 3 uses
  %i.il = icmp ne i64 %i.ik, %.0173518
  %i.im = icmp sgt i64 %i.ik, -1
  %or.cond.i324 = and i1 %i.il, %i.im
  br i1 %or.cond.i324, label %.lr.ph.i317, label %get_func_line.exit333, !llvm.loop !48

get_func_line.exit333:                            ; preds = %.thread.i323, %.lr.ph.i317, %.split.i, %bb.ai, %.thread384
  %.1174 = phi i64 [ %.0173518, %.thread384 ], [ %i.hg, %bb.ai ], [ %i.hg, %.split.i ], [ %i.hg, %.lr.ph.i317 ], [ %i.hg, %.thread.i323 ]
  %i.in = load i64, ptr %i.g, align 8, !tbaa !29
  %i.io = and i64 %i.in, 2
  %.not239 = icmp eq i64 %i.io, 0
  br i1 %.not239, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %get_func_line.exit333
  %i.ip = add nuw nsw i64 %.3194.ph, 1
  %i.iq = sub nsw i64 %.1184, %.3194.ph
  %i.ir = add nuw nsw i64 %.3188.ph, 1
  %i.is = sub nsw i64 %.1182, %.3188.ph
  %i.it = load i64, ptr %4, align 8, !tbaa !54
  %i.iu = call i32 @xdl_emit_hunk_hdr(i64 noundef %i.ip, i64 noundef %i.iq, i64 noundef %i.ir, i64 noundef %i.is, ptr noundef nonnull %i.m, i64 noundef %i.it, ptr noundef %2) #7
  %i.iv = icmp slt i32 %i.iu, 0
  br i1 %i.iv, label %.thread390, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %get_func_line.exit333
  %i.iw = getelementptr inbounds nuw i8, ptr %.1170.lcssa416476691, i64 16 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !28 ; 2 uses
  %i.iy = icmp slt i64 %.3188.ph, %i.ix
  br i1 %i.iy, label %.lr.ph483, label %._crit_edge484

bb.ar:                                            ; preds = %.lr.ph483
  %i.iz = add nuw nsw i64 %.4189481, 1            ; 2 uses
  %i.ja = load i64, ptr %i.iw, align 8, !tbaa !28 ; 2 uses
  %i.jb = icmp slt i64 %i.iz, %i.ja
  br i1 %i.jb, label %.lr.ph483, label %._crit_edge484, !llvm.loop !56

.lr.ph483:                                        ; preds = %bb.aq, %bb.ar
  %.4189481 = phi i64 [ %i.iz, %bb.ar ], [ %.3188.ph, %bb.aq ] ; 2 uses
  %.val251 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %.val251, i64 %.4189481 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !39
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !42
  %i.jg = call i32 @xdl_emit_diffrec(ptr noundef %i.jd, i64 noundef %i.jf, ptr noundef nonnull @.str.3, i64 noundef 1, ptr noundef %2) #7
  %i.jh = icmp slt i32 %i.jg, 0
  br i1 %i.jh, label %.thread390, label %bb.ar

._crit_edge484:                                   ; preds = %bb.ar, %bb.aq
  %.lcssa442 = phi i64 [ %i.ix, %bb.aq ], [ %i.ja, %bb.ar ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.1170.lcssa416476691, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !22 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ax, %._crit_edge484
  %i.jk = phi i64 [ %i.jj, %._crit_edge484 ], [ %.pre563, %bb.ax ] ; 3 uses
  %i.jl = phi ptr [ %.1170.lcssa416476691, %._crit_edge484 ], [ %.pre562, %bb.ax ] ; 7 uses
  %.4195 = phi i64 [ %i.jj, %._crit_edge484 ], [ %i.lm, %bb.ax ] ; 2 uses
  %.5190 = phi i64 [ %.lcssa442, %._crit_edge484 ], [ %.lcssa454, %bb.ax ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 3 uses
  %i.jn = icmp slt i64 %.4195, %i.jk
  br i1 %i.jn, label %.lr.ph491, label %.critedge7

.lr.ph491:                                        ; preds = %bb.as
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !28
  %i.jq = icmp slt i64 %.5190, %i.jp
  br i1 %i.jq, label %.lr.ph721, label %.critedge7

bb.at:                                            ; preds = %bb.au
  %i.jr = add nsw i64 %.6489719, 1                ; 2 uses
  %i.js = load i64, ptr %i.jo, align 8, !tbaa !28
  %i.jt = icmp slt i64 %i.jr, %i.js
  br i1 %i.jt, label %.lr.ph721, label %.critedge7, !llvm.loop !57

.lr.ph721:                                        ; preds = %.lr.ph491, %bb.at
  %.5196488720 = phi i64 [ %i.ka, %bb.at ], [ %.4195, %.lr.ph491 ]
  %.6489719 = phi i64 [ %i.jr, %bb.at ], [ %.5190, %.lr.ph491 ] ; 2 uses
  %.val250 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.ju = getelementptr inbounds [24 x i8], ptr %.val250, i64 %.6489719 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !39
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !42
  %i.jy = call i32 @xdl_emit_diffrec(ptr noundef %i.jv, i64 noundef %i.jx, ptr noundef nonnull @.str.3, i64 noundef 1, ptr noundef %2) #7
  %i.jz = icmp slt i32 %i.jy, 0
  br i1 %i.jz, label %.thread390, label %bb.au

bb.au:                                            ; preds = %.lr.ph721
  %i.ka = add nsw i64 %.5196488720, 1             ; 2 uses
  %i.kb = load i64, ptr %i.jm, align 8, !tbaa !22 ; 3 uses
  %i.kc = icmp slt i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.at, label %..critedge7.loopexit_crit_edge, !llvm.loop !57

..critedge7.loopexit_crit_edge:                   ; preds = %bb.au
  br label %.critedge7, !llvm.loop !57

.critedge7:                                       ; preds = %bb.at, %.lr.ph491, %..critedge7.loopexit_crit_edge, %bb.as
  %i.kd = phi i64 [ %i.jk, %bb.as ], [ %i.jk, %.lr.ph491 ], [ %i.kb, %..critedge7.loopexit_crit_edge ], [ %i.kb, %bb.at ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jl, i64 24 ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !23
  %i.kg = icmp sgt i64 %i.kf, 0
  br i1 %i.kg, label %.lr.ph500, label %._crit_edge501

bb.av:                                            ; preds = %.lr.ph500
  %i.kh = add nsw i64 %.6197499, 1                ; 2 uses
  %i.ki = load i64, ptr %i.jm, align 8, !tbaa !22
  %i.kj = load i64, ptr %i.ke, align 8, !tbaa !23
  %i.kk = add nsw i64 %i.kj, %i.ki
  %i.kl = icmp slt i64 %i.kh, %i.kk
  br i1 %i.kl, label %.lr.ph500, label %._crit_edge501, !llvm.loop !58

.lr.ph500:                                        ; preds = %.critedge7, %bb.av
  %.6197499 = phi i64 [ %i.kh, %bb.av ], [ %i.kd, %.critedge7 ] ; 2 uses
  %.val249 = load ptr, ptr %0, align 8, !tbaa !37
  %i.km = getelementptr inbounds [24 x i8], ptr %.val249, i64 %.6197499 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !39
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !42
  %i.kq = call i32 @xdl_emit_diffrec(ptr noundef %i.kn, i64 noundef %i.kp, ptr noundef nonnull @.str.4, i64 noundef 1, ptr noundef %2) #7
  %i.kr = icmp slt i32 %i.kq, 0
  br i1 %i.kr, label %.thread390, label %bb.av

._crit_edge501:                                   ; preds = %bb.av, %.critedge7
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !28 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jl, i64 32 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !26 ; 2 uses
  %i.kw = add nsw i64 %i.kv, %i.kt
  %i.kx = icmp sgt i64 %i.kv, 0
  br i1 %i.kx, label %.lr.ph504, label %._crit_edge505

bb.aw:                                            ; preds = %.lr.ph504
  %i.ky = add nsw i64 %.7502, 1                   ; 2 uses
  %i.kz = load i64, ptr %i.ks, align 8, !tbaa !28
  %i.la = load i64, ptr %i.ku, align 8, !tbaa !26
  %i.lb = add nsw i64 %i.la, %i.kz                ; 2 uses
  %i.lc = icmp slt i64 %i.ky, %i.lb
  br i1 %i.lc, label %.lr.ph504, label %._crit_edge505, !llvm.loop !59

.lr.ph504:                                        ; preds = %._crit_edge501, %bb.aw
  %.7502 = phi i64 [ %i.ky, %bb.aw ], [ %i.kt, %._crit_edge501 ] ; 2 uses
  %.val248 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.ld = getelementptr inbounds [24 x i8], ptr %.val248, i64 %.7502 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !39
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !42
  %i.lh = call i32 @xdl_emit_diffrec(ptr noundef %i.le, i64 noundef %i.lg, ptr noundef nonnull @.str.5, i64 noundef 1, ptr noundef %2) #7
  %i.li = icmp slt i32 %i.lh, 0
  br i1 %i.li, label %.thread390, label %bb.aw

._crit_edge505:                                   ; preds = %bb.aw, %._crit_edge501
  %.lcssa454 = phi i64 [ %i.kw, %._crit_edge501 ], [ %i.lb, %bb.aw ]
  %i.lj = icmp eq ptr %i.jl, %.0176
  br i1 %i.lj, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge505
  %i.lk = load i64, ptr %i.jm, align 8, !tbaa !22
  %i.ll = load i64, ptr %i.ke, align 8, !tbaa !23
  %i.lm = add nsw i64 %i.ll, %i.lk
  %.pre562 = load ptr, ptr %i.jl, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre562, i64 8
  %.pre563 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %bb.as

bb.ay:                                            ; preds = %._crit_edge505
  %i.ln = load i64, ptr %i.hd, align 8, !tbaa !28
  %i.lo = load i64, ptr %i.hc, align 8, !tbaa !26
  %i.lp = add nsw i64 %i.lo, %i.ln                ; 2 uses
  %i.lq = icmp slt i64 %i.lp, %.1182
  br i1 %i.lq, label %.lr.ph514, label %._crit_edge515

bb.az:                                            ; preds = %.lr.ph514
  %i.lr = add i64 %.8512, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.lr, %.1182
  br i1 %exitcond.not, label %._crit_edge515, label %.lr.ph514, !llvm.loop !60

.lr.ph514:                                        ; preds = %bb.ay, %bb.az
  %.8512 = phi i64 [ %i.lr, %bb.az ], [ %i.lp, %bb.ay ] ; 2 uses
  %.val247 = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.ls = getelementptr inbounds [24 x i8], ptr %.val247, i64 %.8512 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !39
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !42
  %i.lw = call i32 @xdl_emit_diffrec(ptr noundef %i.lt, i64 noundef %i.lv, ptr noundef nonnull @.str.3, i64 noundef 1, ptr noundef %2) #7
  %i.lx = icmp slt i32 %i.lw, 0
  br i1 %i.lx, label %.thread390, label %bb.az

._crit_edge515:                                   ; preds = %bb.az, %bb.ay
  %i.ly = load ptr, ptr %.0176, align 8, !tbaa !21 ; 3 uses
  store ptr %i.ly, ptr %i.f, align 8, !tbaa !17
  %.not = icmp eq ptr %i.ly, null
  br i1 %.not, label %.thread390, label %bb.b, !llvm.loop !61

.thread390:                                       ; preds = %bb.b, %._crit_edge515, %bb.ap, %.lr.ph483, %.lr.ph514, %.lr.ph721, %.lr.ph500, %.lr.ph504, %bb.a
  %.2200 = phi i32 [ -1, %.lr.ph504 ], [ -1, %.lr.ph721 ], [ 0, %bb.a ], [ -1, %.lr.ph514 ], [ -1, %.lr.ph500 ], [ -1, %.lr.ph483 ], [ 0, %._crit_edge515 ], [ 0, %bb.b ], [ -1, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  ret i32 %.2200
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @xdl_emit_hunk_hdr(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @xdl_emit_diffrec(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"s_xdemitconf", !14, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!14 = !{!"long", !10, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!13, !14, i64 8}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS10s_xdchange", !15, i64 0}
!19 = !{!20, !9, i64 40}
!20 = !{!"s_xdchange", !18, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !9, i64 40}
!21 = !{!20, !18, i64 0}
!22 = !{!20, !14, i64 8}
!23 = !{!20, !14, i64 24}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!20, !14, i64 32}
!27 = distinct !{!27, !25}
!28 = !{!20, !14, i64 16}
!29 = !{!13, !14, i64 16}
!30 = !{!31, !14, i64 8}
!31 = !{!"s_xdfenv", !32, i64 0, !32, i64 56}
!32 = !{!"s_xdfile", !33, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !34, i64 32, !35, i64 40, !14, i64 48}
!33 = !{!"p1 _ZTS9s_xrecord", !15, i64 0}
!34 = !{!"p1 _Bool", !15, i64 0}
!35 = !{!"p1 long", !15, i64 0}
!36 = !{!31, !14, i64 64}
!37 = !{!32, !33, i64 0}
!38 = !{!13, !15, i64 24}
!39 = !{!40, !41, i64 0}
!40 = !{!"s_xrecord", !41, i64 0, !14, i64 8, !14, i64 16}
!41 = !{!"p1 omnipotent char", !15, i64 0}
!42 = !{!40, !14, i64 8}
!43 = !{!10, !10, i64 0}
!44 = !{!13, !15, i64 32}
!45 = distinct !{null, null}
!46 = distinct !{!46, !25}
!47 = distinct !{null, null}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = !{!55, !14, i64 0}
!55 = !{!"func_line", !14, i64 0, !10, i64 8}
!56 = distinct !{!56, !25}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !25}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25}
end_hunk_0
