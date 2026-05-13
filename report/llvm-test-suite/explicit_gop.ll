inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@encode_enhancement_layer:bb.a
  %.not9 = icmp eq i32 %i.fk, 0
  br i1 %.not9, label %._crit_edge42, label %bb.z

._crit_edge42:                                    ; preds = %bb.y
  %.pre43 = load i32, ptr %i.em, align 8, !tbaa !59
  %.pre45 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ek, i64 1568
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !69
  %.not10 = icmp eq i32 %i.fm, 0
  %.pre44 = load i32, ptr %i.em, align 8, !tbaa !59 ; 2 uses
  %.pre46 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4 ; 2 uses
  br i1 %.not10, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = sub nsw i32 %.pre44, %.pre46
  %i.fo = srem i32 %i.fn, %i.fk
  %i.fp = add nsw i32 %i.fo, -1
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge42, %bb.z
  %i.fq = phi i32 [ %.pre45, %._crit_edge42 ], [ %.pre46, %bb.z ]
  %i.fr = phi i32 [ %.pre43, %._crit_edge42 ], [ %.pre44, %bb.z ]
  %i.fs = xor i32 %i.fq, -1
  %i.ft = add i32 %i.fr, %i.fs
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink88 = phi i32 [ %i.ft, %bb.ab ], [ %i.fp, %bb.aa ]
  %i.fu = mul nsw i32 %.sink88, %i.fa
  %i.fv = sitofp i32 %i.el to double
  %i.fw = fmul double %spec.store.select20, %i.fv
  %i.fx = fptosi double %i.fw to i32
  %i.fy = add nsw i32 %i.fu, %i.fx
  %i.fz = shl nsw i32 %i.fy, 1                    ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.em, i64 15316
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !70
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ek, i64 4704
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !71
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ek, i64 4708
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !72
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gh = or disjoint i32 %i.fz, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sink89 = phi i32 [ %i.gh, %bb.ae ], [ %i.fz, %bb.ad ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.em, i64 15320
  store i32 %.sink89, ptr %i.gi, align 8, !tbaa !73
  %i.gj = getelementptr inbounds nuw i8, ptr %i.em, i64 15324
  store i32 %i.fz, ptr %i.gj, align 4, !tbaa !74
  %i.gk = shl i32 %i.el, 1
  %i.gl = add i32 %i.gk, -2
  %.sink30 = select i1 %i.eq, i32 -2, i32 %i.gl
  %i.gm = getelementptr inbounds nuw i8, ptr %i.em, i64 15304
  store i32 %.sink30, ptr %i.gm, align 8, !tbaa !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.em, i64 15308
  store i32 0, ptr %i.gn, align 4, !tbaa !4
  %i.go = tail call i32 @encode_one_frame() #13   ; 0 uses
  %i.gp = load ptr, ptr @input, align 8, !tbaa !8 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2964
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !64
  %i.gs = icmp eq i32 %i.gr, 1
  br i1 %i.gs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gt = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 14364
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !67
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 2096
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !10
  %i.gy = icmp eq i32 %i.gv, %i.gx
  br i1 %i.gy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 15332 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !66
  %i.hb = add i32 %i.ha, 1
  %i.hc = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.hd = add i32 %i.hc, 4
  %notmask12 = shl nsw i32 -1, %i.hd
  %i.he = xor i32 %notmask12, -1
  %i.hf = and i32 %i.hb, %i.he
  store i32 %i.hf, ptr %i.gz, align 4, !tbaa !66
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gp, i64 5104
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !75
  %.not13 = icmp eq i32 %i.hh, 0
  br i1 %.not13, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @report_frame_statistic() #13
  %.pre47 = load ptr, ptr @input, align 8, !tbaa !8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.hi = phi ptr [ %i.gp, %bb.ai ], [ %.pre47, %bb.aj ] ; 2 uses
  %i.hj = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 14364 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !67 ; 2 uses
  %i.hm = add nsw i32 %i.hl, 1                    ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !67
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 2096
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !10 ; 2 uses
  %.not7.not = icmp slt i32 %i.hl, %i.ho
  br i1 %.not7.not, label %.lr.ph26, label %.loopexit, !llvm.loop !77

.loopexit:                                        ; preds = %bb.ak, %bb.w, %._crit_edge, %bb.b, %bb.a
  %i.hp = phi ptr [ %.pre48, %bb.a ], [ %.pre48, %bb.w ], [ %.lcssa21, %._crit_edge ], [ %.pre48, %bb.b ], [ %i.hj, %bb.ak ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 14364
  store i32 0, ptr %i.hq, align 4, !tbaa !67
  ret void
}

declare i32 @encode_one_frame() local_unnamed_addr #2

declare void @report_frame_statistic() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @poc_based_ref_management(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15376
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !79
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !83
  %i.f = sub i32 0, %i.e
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !84 ; 2 uses
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr @dpb, align 8, !tbaa !85
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.01622 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 3 uses
  %.01721 = phi i32 [ 2147483647, %.lr.ph ], [ %.118, %bb.g ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !90
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !91
  %i.r = icmp slt i32 %i.q, %.01721
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 6364
  %i.x = load i32, ptr %i.w, align 4, !tbaa !101
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.118 = phi i32 [ %.01721, %bb.d ], [ %i.v, %bb.f ], [ %.01721, %bb.e ], [ %.01721, %bb.c ]
  %.1 = phi i32 [ %.01622, %bb.d ], [ %i.x, %bb.f ], [ %.01622, %bb.e ], [ %.01622, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !102

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.y = xor i32 %.1, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.016.lcssa = phi i32 [ -1, %.preheader ], [ %i.y, %._crit_edge.loopexit ]
  %i.z = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %1 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr null, ptr %1, align 8, !tbaa !103
  store i32 0, ptr %i.z, align 8, !tbaa !105
  %i.ab = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !103
  store i32 1, ptr %i.ab, align 8, !tbaa !105
  %i.ae = add i32 %0, %.016.lcssa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !106
  %i.ag = load ptr, ptr @img, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 15376
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !78
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 2096}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !12, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !13, i64 5040, !13, i64 5048, !14, i64 5056, !13, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !12, i64 5144, !12, i64 5152, !12, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!11, !5, i64 2968}
!16 = !{!17, !5, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!18 = !{!17, !5, i64 4}
!19 = !{!17, !5, i64 16}
!20 = !{!17, !5, i64 8}
!21 = !{!11, !5, i64 2104}
!22 = !{!11, !5, i64 2972}
!23 = !{!11, !5, i64 2108}
!24 = !{!17, !5, i64 12}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !5, i64 15612}
!28 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !29, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !30, i64 128, !30, i64 136, !5, i64 144, !32, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !34, i64 14160, !32, i64 14168, !32, i64 14176, !32, i64 14184, !34, i64 14192, !34, i64 14200, !9, i64 14208, !9, i64 14216, !36, i64 14224, !13, i64 14232, !13, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !12, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !37, i64 14376, !37, i64 14384, !37, i64 14392, !37, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !40, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !41, i64 15480, !42, i64 15488, !32, i64 15496, !41, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !43, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!29 = !{!"float", !6, i64 0}
!30 = !{!"p2 omnipotent char", !31, i64 0}
!31 = !{!"any p2 pointer", !9, i64 0}
!32 = !{!"p3 int", !33, i64 0}
!33 = !{!"any p3 pointer", !31, i64 0}
!34 = !{!"p4 int", !35, i64 0}
!35 = !{!"any p4 pointer", !33, i64 0}
!36 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!37 = !{!"p6 short", !38, i64 0}
!38 = !{!"any p6 pointer", !39, i64 0}
!39 = !{!"any p5 pointer", !35, i64 0}
!40 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!41 = !{!"p2 double", !31, i64 0}
!42 = !{!"p3 double", !33, i64 0}
!43 = !{!"short", !6, i64 0}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
!51 = !{!6, !6, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 short", !9, i64 0}
!54 = !{!43, !43, i64 0}
!55 = !{!11, !5, i64 20}
!56 = distinct !{!56, !26}
!57 = !{!28, !5, i64 15452}
!58 = distinct !{!58, !26}
!59 = !{!28, !5, i64 0}
!60 = !{!11, !5, i64 2100}
!61 = !{!28, !5, i64 20}
!62 = !{!11, !5, i64 4736}
!63 = !{!28, !5, i64 15248}
!64 = !{!11, !5, i64 2964}
!65 = !{!28, !5, i64 15360}
!66 = !{!28, !5, i64 15332}
!67 = !{!28, !5, i64 14364}
!68 = !{!11, !5, i64 1560}
!69 = !{!11, !5, i64 1568}
!70 = !{!28, !5, i64 15316}
!71 = !{!11, !5, i64 4704}
!72 = !{!11, !5, i64 4708}
!73 = !{!28, !5, i64 15320}
!74 = !{!28, !5, i64 15324}
!75 = !{!11, !5, i64 5104}
!76 = distinct !{!76, !26}
!77 = distinct !{!77, !26}
!78 = !{!28, !40, i64 15376}
!79 = !{!80, !5, i64 32}
!80 = !{!"decoded_picture_buffer", !81, i64 0, !81, i64 8, !81, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !82, i64 56}
!81 = !{!"p2 _ZTS11frame_store", !31, i64 0}
!82 = !{!"p1 _ZTS11frame_store", !9, i64 0}
!83 = !{!80, !5, i64 36}
!84 = !{!80, !5, i64 28}
!85 = !{!80, !81, i64 0}
!86 = !{!82, !82, i64 0}
!87 = !{!88, !5, i64 4}
!88 = !{!"frame_store", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !89, i64 40, !89, i64 48, !89, i64 56}
!89 = !{!"p1 _ZTS16storable_picture", !9, i64 0}
!90 = !{!88, !5, i64 8}
!91 = !{!88, !5, i64 36}
!92 = !{!88, !89, i64 40}
!93 = !{!94, !5, i64 4}
!94 = !{!"storable_picture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 1608, !6, i64 3192, !6, i64 4776, !5, i64 6360, !5, i64 6364, !5, i64 6368, !5, i64 6372, !5, i64 6376, !5, i64 6380, !5, i64 6384, !5, i64 6388, !5, i64 6392, !5, i64 6396, !5, i64 6400, !5, i64 6404, !5, i64 6408, !5, i64 6412, !5, i64 6416, !5, i64 6420, !5, i64 6424, !5, i64 6428, !5, i64 6432, !95, i64 6440, !96, i64 6448, !96, i64 6456, !97, i64 6464, !98, i64 6472, !14, i64 6480, !99, i64 6488, !100, i64 6496, !100, i64 6504, !96, i64 6512, !30, i64 6520, !30, i64 6528, !89, i64 6536, !89, i64 6544, !89, i64 6552, !5, i64 6560, !5, i64 6564, !5, i64 6568, !5, i64 6572, !5, i64 6576, !5, i64 6580, !5, i64 6584}
!95 = !{!"p2 short", !31, i64 0}
!96 = !{!"p4 short", !35, i64 0}
!97 = !{!"p5 short", !39, i64 0}
!98 = !{!"p3 short", !33, i64 0}
!99 = !{!"p3 omnipotent char", !33, i64 0}
!100 = !{!"p3 long long", !33, i64 0}
!101 = !{!94, !5, i64 6364}
!102 = distinct !{!102, !26}
!103 = !{!104, !40, i64 24}
!104 = !{!"DecRefPicMarking_s", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !40, i64 24}
!105 = !{!104, !5, i64 0}
!106 = !{!104, !5, i64 4}
end_hunk_0
