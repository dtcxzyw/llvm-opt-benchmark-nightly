inline.NumInlined: 2
begin_hunk_0_@gx_lookup_fm_pair:bb.a
  %i.x = load i32, ptr %i.u, align 4, !tbaa !65
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.y
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %.04750, i64 -32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.z, %bb.c ], [ %i.aa, %bb.d ] ; 7 uses
  %i.ab = load ptr, ptr %.1, align 8, !tbaa !66
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !68
  %i.af = fcmp oeq float %i.ae, %i.b
  br i1 %i.af, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !69
  %i.ai = fcmp oeq float %i.ah, %i.d
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !70
  %i.al = fcmp oeq float %i.ak, %i.f
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %i.an = load float, ptr %i.am, align 4, !tbaa !71
  %i.ao = fcmp oeq float %i.an, %i.h
  br i1 %i.ao, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !65 ; 2 uses
  %i.ar = icmp eq i32 %i.q, %i.aq
  br i1 %i.ar, label %bb.k, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.o, align 8, !tbaa !33
  %i.as = add i32 %i.q, 1
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 0, ptr %i.at, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i32 0, ptr %i.au, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 1104
  store i32 0, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 1136
  store i32 0, ptr %i.aw, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ax, i8 0, i64 1024, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge, %bb.k
  %i.ay = phi i32 [ 0, %bb.k ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %i.az = phi i32 [ 1, %bb.k ], [ %i.as, %._crit_edge._crit_edge ]
  store i32 %i.az, ptr %i.p, align 8, !tbaa !32
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ba ; 7 uses
  %i.bc = add i32 %i.ay, 1                        ; 2 uses
  %i.bd = icmp eq i32 %i.bc, %i.aq
  %spec.store.select = select i1 %i.bd, i32 0, i32 %i.bc
  store i32 %spec.store.select, ptr %i.o, align 8
  store ptr %i.j, ptr %i.bb, align 8, !tbaa !66
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store float %i.b, ptr %i.be, align 8, !tbaa !68
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store float %i.d, ptr %i.bf, align 4, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store float %i.f, ptr %i.bg, align 8, !tbaa !70
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  store float %i.h, ptr %i.bh, align 4, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i32 0, ptr %i.bi, align 8, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.l
  %.048 = phi ptr [ %i.bb, %bb.l ], [ %.1, %bb.i ]
  ret ptr %.048
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @gx_add_cached_char(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !75
  %i.d = and i32 %i.c, 127
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ]  ; 2 uses
  %i.g = load ptr, ptr %.0, align 8, !tbaa !76    ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !77

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %.0, align 8, !tbaa !76
  store ptr null, ptr %1, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.h, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !74
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @gx_lookup_cached_char(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = and i32 %2, 127
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %.010 = load ptr, ptr %i.h, align 8, !tbaa !76  ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi ptr [ %.0, %bb.c ], [ %.010, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  %i.k = icmp eq i32 %i.j, %2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.0 = load ptr, ptr %.012, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.012, %bb.b ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @gx_copy_cached_char(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.gs_matrix_s, align 8        ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load i8, ptr %i.d, align 8, !tbaa !87
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !92
  %.not53 = icmp eq i32 %i.i, 0
  br i1 %.not53, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.n = tail call i32 (ptr, ptr, ptr, ...) @gx_color_render(ptr noundef %i.m, ptr noundef %i.k, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !95
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.h, align 4, !tbaa !92
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load <2 x i64>, ptr %i.r, align 8, !tbaa !91
  %i.t = sub nsw <2 x i64> %i.g, %i.s             ; 2 uses
  %3 = add nsw <2 x i64> %i.t, splat (i64 2048)
  %4 = lshr <2 x i64> %3, splat (i64 12)          ; 2 uses
  %5 = bitcast <2 x i64> %4 to <4 x i32>
  %6 = extractelement <4 x i32> %5, i64 0         ; 3 uses
  %7 = bitcast <2 x i64> %4 to <4 x i32>
  %8 = extractelement <4 x i32> %7, i64 2         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i16, ptr %i.u, align 4, !tbaa !39
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.y = load i16, ptr %i.x, align 2, !tbaa !40
  %i.z = zext i16 %i.y to i32                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !98
  %i.ac = icmp sgt i32 %i.ab, %6
  br i1 %i.ac, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %6, %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !99
  %i.ag = icmp sgt i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !100
  %i.aj = icmp sgt i32 %i.ai, %8
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %8, %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load i32, ptr %i.al, align 8, !tbaa !101
  %i.an = icmp sgt i32 %i.ak, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !tbaa.struct !102
  %i.ap = sitofp <2 x i64> %i.t to <2 x double>
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ar = load <4 x float>, ptr %i.aq, align 8
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.au = load float, ptr %i.at, align 8, !tbaa !104
  %i.av = fmul nnan <2 x double> %i.ap, splat (double f0x3F30000000000000)
  %i.aw = fptrunc <2 x double> %i.av to <2 x float>
  %i.ax = insertelement <2 x float> %i.as, float %i.au, i64 1
  %i.ay = fsub <2 x float> %i.ax, %i.aw           ; 2 uses
  %i.az = extractelement <2 x float> %i.ay, i64 0
  store float %i.az, ptr %i.aq, align 8, !tbaa !105
  %i.ba = extractelement <2 x float> %i.ay, i64 1
  store float %i.ba, ptr %i.at, align 8, !tbaa !104
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !41
  %i.bd = zext i16 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36
  %i.bh = call i32 @gs_imagemask(ptr noundef nonnull %i.a, i32 noundef %i.be, i32 noundef %i.z, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %i.bg) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !107 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !110
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !41
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !93
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !111
  %i.bx = tail call i32 %i.bo(ptr noundef %i.bk, ptr noundef %i.bq, i32 noundef 0, i32 noundef %i.bt, i32 noundef %6, i32 noundef %8, i32 noundef %i.w, i32 noundef %i.z, i64 noundef -1, i64 noundef %i.bw) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.049 = phi i32 [ %i.bh, %bb.i ], [ %i.bx, %bb.j ]
  %i.by = call i32 @llvm.smin.i32(i32 %.049, i32 0)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.k
  %.1 = phi i32 [ 1, %bb.c ], [ %i.by, %bb.k ], [ -14, %bb.a ]
  ret i32 %.1
}

declare i32 @gx_color_render(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @gs_imagemask(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 24}
!9 = !{!"gx_device_memory_s", !5, i64 0, !10, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !13, i64 32, !13, i64 36, !5, i64 40, !14, i64 44, !5, i64 48, !5, i64 52, !15, i64 56, !5, i64 152, !12, i64 160, !17, i64 168, !11, i64 176, !5, i64 184, !5, i64 188, !12, i64 192}
!10 = !{!"p1 _ZTS17gx_device_procs_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!"gs_matrix_s", !13, i64 0, !16, i64 8, !13, i64 16, !16, i64 24, !13, i64 32, !16, i64 40, !13, i64 48, !16, i64 56, !13, i64 64, !16, i64 72, !13, i64 80, !16, i64 88}
!16 = !{!"long", !6, i64 0}
!17 = !{!"p2 omnipotent char", !18, i64 0}
!18 = !{!"any p2 pointer", !11, i64 0}
!19 = !{!9, !5, i64 28}
!20 = !{!9, !5, i64 152}
!21 = !{!22, !5, i64 68}
!22 = !{!"gs_font_dir_s", !11, i64 0, !11, i64 8, !16, i64 16, !23, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !12, i64 1096, !5, i64 1104, !24, i64 1112, !5, i64 1120, !25, i64 1128, !5, i64 1136}
!23 = !{!"p1 _ZTS9gs_font_s", !11, i64 0}
!24 = !{!"p1 _ZTS16cached_fm_pair_s", !11, i64 0}
!25 = !{!"p1 _ZTS13cached_char_s", !11, i64 0}
!26 = !{!22, !5, i64 56}
!27 = !{!22, !5, i64 60}
!28 = !{!22, !5, i64 44}
!29 = !{!22, !5, i64 40}
!30 = !{!22, !5, i64 1136}
!31 = !{!22, !5, i64 1104}
!32 = !{!22, !5, i64 48}
!33 = !{!22, !5, i64 1120}
!34 = !{!22, !25, i64 1128}
!35 = !{!22, !12, i64 1096}
!36 = !{!37, !12, i64 64}
!37 = !{!"cached_char_s", !25, i64 0, !5, i64 8, !24, i64 16, !14, i64 24, !14, i64 26, !14, i64 28, !38, i64 32, !38, i64 48, !12, i64 64}
!38 = !{!"gs_fixed_point_s", !16, i64 0, !16, i64 8}
!39 = !{!37, !14, i64 28}
!40 = !{!37, !14, i64 26}
!41 = !{!37, !14, i64 24}
!42 = !{!9, !12, i64 160}
!43 = !{!9, !10, i64 8}
!44 = !{!45, !11, i64 0}
!45 = !{!"gx_device_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!46 = !{!47, !13, i64 336}
!47 = !{!"gs_state_s", !48, i64 0, !49, i64 8, !50, i64 24, !15, i64 136, !5, i64 232, !12, i64 240, !12, i64 248, !51, i64 256, !51, i64 264, !5, i64 272, !52, i64 280, !53, i64 288, !11, i64 296, !54, i64 304, !55, i64 312, !11, i64 320, !23, i64 328, !15, i64 336, !5, i64 432, !6, i64 436, !6, i64 437, !13, i64 440, !56, i64 448, !5, i64 456}
!48 = !{!"p1 _ZTS10gs_state_s", !11, i64 0}
!49 = !{!"", !11, i64 0, !11, i64 8}
!50 = !{!"gs_matrix_fixed_s", !13, i64 0, !16, i64 8, !13, i64 16, !16, i64 24, !13, i64 32, !16, i64 40, !13, i64 48, !16, i64 56, !13, i64 64, !16, i64 72, !13, i64 80, !16, i64 88, !16, i64 96, !16, i64 104}
!51 = !{!"p1 _ZTS9gx_path_s", !11, i64 0}
!52 = !{!"p1 _ZTS13line_params_s", !11, i64 0}
!53 = !{!"p1 _ZTS10halftone_s", !11, i64 0}
!54 = !{!"p1 _ZTS10gs_color_s", !11, i64 0}
!55 = !{!"p1 _ZTS17gx_device_color_s", !11, i64 0}
!56 = !{!"p1 _ZTS8device_s", !11, i64 0}
!57 = !{!47, !13, i64 352}
!58 = !{!47, !13, i64 368}
!59 = !{!47, !13, i64 384}
!60 = !{!47, !23, i64 328}
!61 = !{!62, !63, i64 24}
!62 = !{!"gs_font_s", !23, i64 0, !23, i64 8, !23, i64 16, !63, i64 24, !12, i64 32, !15, i64 40, !5, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !5, i64 156, !16, i64 160, !11, i64 168, !12, i64 176}
!63 = !{!"p1 _ZTS13gs_font_dir_s", !11, i64 0}
!64 = !{!22, !24, i64 1112}
!65 = !{!22, !5, i64 52}
!66 = !{!67, !23, i64 0}
!67 = !{!"cached_fm_pair_s", !23, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !5, i64 24}
!68 = !{!67, !13, i64 8}
!69 = !{!67, !13, i64 12}
!70 = !{!67, !13, i64 16}
!71 = !{!67, !13, i64 20}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!67, !5, i64 24}
!75 = !{!37, !5, i64 8}
!76 = !{!25, !25, i64 0}
!77 = distinct !{!77, !73}
!78 = !{!37, !25, i64 0}
!79 = !{!37, !24, i64 16}
!80 = distinct !{!80, !73}
!81 = !{!82, !48, i64 0}
!82 = !{!"gs_show_enum_s", !48, i64 0, !12, i64 8, !5, i64 16, !13, i64 20, !13, i64 24, !5, i64 28, !13, i64 32, !13, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !9, i64 80, !83, i64 280, !5, i64 312, !5, i64 316, !38, i64 320, !25, i64 336, !85, i64 344, !5, i64 352, !5, i64 356, !11, i64 360}
!83 = !{!"device_s", !84, i64 0, !5, i64 8, !16, i64 16, !16, i64 24}
!84 = !{!"p1 _ZTS11gx_device_s", !11, i64 0}
!85 = !{!"gs_point_s", !13, i64 0, !13, i64 4}
!86 = !{!47, !51, i64 256}
!87 = !{!88, !6, i64 136}
!88 = !{!"gx_path_s", !49, i64 0, !89, i64 16, !90, i64 48, !89, i64 56, !11, i64 88, !11, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !38, i64 120, !6, i64 136, !6, i64 137, !6, i64 138}
!89 = !{!"gs_fixed_rect_s", !38, i64 0, !38, i64 16}
!90 = !{!"p1 _ZTS9segment_s", !11, i64 0}
!91 = !{!16, !16, i64 0}
!92 = !{!82, !5, i64 356}
!93 = !{!47, !55, i64 312}
!94 = !{!47, !54, i64 304}
!95 = !{!96, !5, i64 16}
!96 = !{!"gx_device_color_s", !16, i64 0, !16, i64 8, !5, i64 16, !97, i64 24}
!97 = !{!"p1 _ZTS11gx_bitmap_s", !11, i64 0}
!98 = !{!82, !5, i64 60}
!99 = !{!82, !5, i64 68}
!100 = !{!82, !5, i64 64}
!101 = !{!82, !5, i64 72}
!102 = !{i64 0, i64 4, !103, i64 8, i64 8, !91, i64 16, i64 4, !103, i64 24, i64 8, !91, i64 32, i64 4, !103, i64 40, i64 8, !91, i64 48, i64 4, !103, i64 56, i64 8, !91, i64 64, i64 4, !103, i64 72, i64 8, !91, i64 80, i64 4, !103, i64 88, i64 8, !91}
!103 = !{!13, !13, i64 0}
!104 = !{!15, !13, i64 80}
!105 = !{!15, !13, i64 64}
!106 = !{!47, !56, i64 448}
!107 = !{!83, !84, i64 0}
!108 = !{!109, !10, i64 8}
!109 = !{!"gx_device_s", !5, i64 0, !10, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !13, i64 32, !13, i64 36, !5, i64 40, !14, i64 44, !5, i64 48, !5, i64 52}
!110 = !{!45, !11, i64 72}
!111 = !{!96, !16, i64 0}
end_hunk_0
