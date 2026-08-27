Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/charconv_parse?download=true
inline.NumInlined: 38
inline.NumDeleted: 17
begin_hunk_0_@_ZN4absl16strings_internal10ParseFloatILi16EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE:bb.a
  %exitcond.not = icmp eq ptr %i.l, %2
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !17

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.084.lcssa.ph = phi ptr [ %.084110, %.lr.ph ], [ %scevgep, %bb.c ] ; 2 uses
  %.pre120 = ptrtoaddr ptr %.084.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader109
  %.084.lcssa118.pre-phi = phi i64 [ %.pre120, %.critedge.loopexit ], [ %i.a, %.preheader109 ]
  %.084.lcssa = phi ptr [ %.084.lcssa.ph, %.critedge.loopexit ], [ %1, %.preheader109 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1
  %i.m = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb(ptr noundef %.084.lcssa, ptr noundef %2, i32 noundef 15, ptr noundef %i.c, ptr noundef %i.d) ; 4 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %.084.lcssa, i64 %i.n ; 5 uses
  %i.p = icmp sgt i32 %i.m, 12499999
  br i1 %i.p, label %bb.v, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.m, i32 15)
  %.082 = add nsw i32 %i.q, -15                   ; 4 uses
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.m, i32 15)
  %.081 = sub nsw i32 15, %i.r                    ; 2 uses
  %i.s = icmp ult ptr %i.o, %2
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.o, align 1
  %i.u = icmp eq i8 %i.t, 46
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 5 uses
  %i.w = load i64, ptr %i.c, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f
  %i.y = icmp ult ptr %i.v, %2
  br i1 %i.y, label %.lr.ph114.preheader, label %.critedge3

.lr.ph114.preheader:                              ; preds = %.preheader
  %i.z = sub i64 %i.b, %.084.lcssa118.pre-phi
  %scevgep119 = getelementptr i8, ptr %.084.lcssa, i64 %i.z
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.g
  %.185113 = phi ptr [ %i.ac, %bb.g ], [ %i.v, %.lr.ph114.preheader ] ; 3 uses
  %i.aa = load i8, ptr %.185113, align 1
  %i.ab = icmp eq i8 %i.aa, 48
  br i1 %i.ab, label %bb.g, label %.critedge3

bb.g:                                             ; preds = %.lr.ph114
  %i.ac = getelementptr inbounds nuw i8, ptr %.185113, i64 1 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %2
  br i1 %i.ad, label %.lr.ph114, label %.critedge3, !llvm.loop !18

.critedge3:                                       ; preds = %.lr.ph114, %bb.g, %.preheader
  %.185.lcssa = phi ptr [ %i.v, %.preheader ], [ %scevgep119, %bb.g ], [ %.185113, %.lr.ph114 ] ; 2 uses
  %i.ae = ptrtoint ptr %.185.lcssa to i64
  %i.af = ptrtoint ptr %i.v to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 12500000
  %i.aj = sub nsw i32 %.082, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.v

bb.h:                                             ; preds = %.critedge3, %bb.f
  %.286 = phi ptr [ %.185.lcssa, %.critedge3 ], [ %i.v, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %i.aj, %.critedge3 ], [ %.082, %bb.f ]
  %i.ak = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb(ptr noundef nonnull %.286, ptr noundef nonnull %2, i32 noundef %.081, ptr noundef %i.c, ptr noundef %i.d) ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %.286, i64 %i.al
  %i.an = icmp slt i32 %i.ak, 12500000
  %.081. = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.081)
  %.3 = sub nsw i32 %.2, %.081.
  br i1 %i.an, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d
  %.387 = phi ptr [ %i.am, %bb.h ], [ %i.o, %bb.e ], [ %i.o, %bb.d ] ; 8 uses
  %.5 = phi i32 [ %.3, %bb.h ], [ %.082, %bb.e ], [ %.082, %bb.d ]
  %i.ao = icmp eq ptr %1, %.387
  br i1 %i.ao, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = ptrtoint ptr %.387 to i64
  %i.aq = ptrtoint ptr %1 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = load i8, ptr %1, align 1
  %i.au = icmp eq i8 %i.at, 46
  br i1 %i.au, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.aw = trunc nuw i8 %i.av to i1
  %.pre = load i64, ptr %i.c, align 8             ; 2 uses
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = or i64 %.pre, 1                         ; 2 uses
  store i64 %i.ax, ptr %i.c, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = phi i64 [ %i.ax, %bb.m ], [ %.pre, %bb.l ]
  store i64 %i.ay, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 0, ptr %i.az, align 4
  %i.ba = and i32 %3, 3                           ; 2 uses
  %i.bb = icmp ne i32 %i.ba, 2
  %i.bc = icmp ult ptr %.387, %2
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bd = load i8, ptr %.387, align 1
  %i.be = and i8 %i.bd, -33
  %i.bf = icmp eq i8 %i.be, 80
  br i1 %i.bf, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.387, i64 1 ; 4 uses
  %i.bh = icmp ult ptr %i.bg, %2
  br i1 %i.bh, label %bb.q, label %.critedge102

bb.q:                                             ; preds = %bb.p
  %i.bi = load i8, ptr %i.bg, align 1             ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 45
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.387, i64 2
  br label %.critedge102

bb.s:                                             ; preds = %bb.q
  %i.bl = icmp eq i8 %i.bi, 43
  %i.bm = getelementptr inbounds nuw i8, ptr %.387, i64 2
  %spec.select = select i1 %i.bl, ptr %i.bm, ptr %i.bg
  br label %.critedge102

.critedge102:                                     ; preds = %bb.s, %bb.p, %bb.r
  %.488 = phi ptr [ %i.bk, %bb.r ], [ %i.bg, %bb.p ], [ %spec.select, %bb.s ] ; 2 uses
  %.0.not = phi i1 [ false, %bb.r ], [ true, %bb.p ], [ true, %bb.s ]
  %i.bn = tail call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS3_iPT0_Pb(ptr noundef nonnull %.488, ptr noundef nonnull %2, ptr noundef nonnull %i.az) ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %.488, i64 %i.bo ; 2 uses
  %.not108 = icmp eq i32 %i.bn, 0                 ; 2 uses
  %brmerge = or i1 %.0.not, %.not108
  br i1 %brmerge, label %bb.t, label %.split

.split:                                           ; preds = %.critedge102
  %i.bq = load i32, ptr %i.az, align 4
  %i.br = sub nsw i32 0, %i.bq
  store i32 %i.br, ptr %i.az, align 4
  br label %bb.u

bb.t:                                             ; preds = %.critedge102
  br i1 %.not108, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.o, %bb.n, %bb.t
  %i.bs = icmp eq i32 %i.ba, 1
  br i1 %i.bs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split, %.thread, %bb.t
  %.6107 = phi ptr [ %.387, %.thread ], [ %i.bp, %bb.t ], [ %i.bp, %.split ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.bt, align 8
  %i.bu = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.bu, 0
  %i.bv = load i32, ptr %i.az, align 4
  %i.bw = shl nsw i32 %.5, 2
  %i.bx = add nsw i32 %i.bv, %i.bw
  %.sink = select i1 %.not, i32 0, i32 %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.6107, ptr %i.bz, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread, %bb.k, %bb.i, %.critedge, %.critedge3, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.a, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %5 = shl nsw i32 %2, 2
  %i.c = icmp samesign ult i32 %5, 65
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8
  %.fr = freeze i64 %i.d                          ; 3 uses
  %.not = icmp ne i64 %.fr, 0
  %.not4956 = icmp eq ptr %1, %0
  %or.cond57 = or i1 %.not, %.not4956
  br i1 %or.cond57, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  %i.e = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.e
  br label %.lr.ph.split

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef 254, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb) #7
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.c
  %.04558 = phi ptr [ %i.h, %bb.c ], [ %0, %.lr.ph.split.preheader ] ; 3 uses
  %i.f = load i8, ptr %.04558, align 1
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph.split
  %i.h = getelementptr inbounds nuw i8, ptr %.04558, i64 1 ; 2 uses
  %.not49 = icmp eq ptr %1, %i.h
  br i1 %.not49, label %.critedge, label %.lr.ph.split, !llvm.loop !19

.critedge:                                        ; preds = %.lr.ph.split, %bb.c, %.preheader
  %.045.lcssa = phi ptr [ %0, %.preheader ], [ %scevgep, %bb.c ], [ %.04558, %.lr.ph.split ] ; 6 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %.045.lcssa to i64          ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = zext nneg i32 %2 to i64                  ; 2 uses
  %i.m = icmp sgt i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.045.lcssa, i64 %i.l
  %i.o = select i1 %i.m, ptr %i.n, ptr %1         ; 3 uses
  %i.p = icmp ult ptr %.045.lcssa, %i.o
  br i1 %i.p, label %.lr.ph68.preheader, label %.critedge2

.lr.ph68.preheader:                               ; preds = %.critedge
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = sub i64 %i.q, %i.j
  %scevgep83 = getelementptr i8, ptr %.045.lcssa, i64 %i.r
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %bb.h
  %.04467 = phi i64 [ %i.z, %bb.h ], [ %.fr, %.lr.ph68.preheader ] ; 3 uses
  %.166 = phi ptr [ %i.aa, %bb.h ], [ %.045.lcssa, %.lr.ph68.preheader ] ; 3 uses
  %i.s = load i8, ptr %.166, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12_GLOBAL__N_111kAsciiToIntE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %.lr.ph68
  %i.x = shl i64 %.04467, 4                       ; 3 uses
  %.not50 = icmp ult i64 %i.x, %.04467
  br i1 %.not50, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb) #7
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = zext nneg i8 %i.v to i64
  %i.z = add i64 %i.x, %i.y                       ; 3 uses
  %.not51 = icmp ult i64 %i.z, %i.x
  br i1 %.not51, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb) #7
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.166, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.aa, %i.o
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph68, !llvm.loop !20

.critedge2:                                       ; preds = %.lr.ph68, %bb.h, %.critedge
  %.1.lcssa = phi ptr [ %.045.lcssa, %.critedge ], [ %scevgep83, %bb.h ], [ %.166, %.lr.ph68 ] ; 5 uses
  %.044.lcssa = phi i64 [ %.fr, %.critedge ], [ %i.z, %bb.h ], [ %.04467, %.lr.ph68 ]
  %i.ab = icmp ult ptr %.1.lcssa, %1
  br i1 %i.ab, label %.lr.ph76.preheader, label %.critedge4.thread

.lr.ph76.preheader:                               ; preds = %.critedge2
  %.1.lcssa84 = ptrtoaddr ptr %.1.lcssa to i64
  %i.ac = sub i64 %i.b, %.1.lcssa84
  %scevgep85 = getelementptr i8, ptr %.1.lcssa, i64 %i.ac
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %bb.i
  %.075 = phi i1 [ %spec.select, %bb.i ], [ false, %.lr.ph76.preheader ] ; 2 uses
  %.274 = phi ptr [ %i.aj, %bb.i ], [ %.1.lcssa, %.lr.ph76.preheader ] ; 3 uses
  %i.ad = load i8, ptr %.274, align 1             ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12_GLOBAL__N_111kAsciiToIntE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.i, label %.critedge4

bb.i:                                             ; preds = %.lr.ph76
  %i.ai = icmp ne i8 %i.ad, 48
  %spec.select = or i1 %.075, %i.ai               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.274, i64 1 ; 2 uses
  %exitcond86.not = icmp eq ptr %i.aj, %1
  br i1 %exitcond86.not, label %.critedge4, label %.lr.ph76, !llvm.loop !21

.critedge4:                                       ; preds = %.lr.ph76, %bb.i
  %.2.lcssa = phi ptr [ %scevgep85, %bb.i ], [ %.274, %.lr.ph76 ] ; 2 uses
  %.0.lcssa = phi i1 [ %spec.select, %bb.i ], [ %.075, %.lr.ph76 ]
  br i1 %.0.lcssa, label %bb.j, label %.critedge4.thread

bb.j:                                             ; preds = %.critedge4
  store i8 1, ptr %4, align 1
  br label %.critedge4.thread

.critedge4.thread:                                ; preds = %.critedge2, %bb.j, %.critedge4
  %.2.lcssa96 = phi ptr [ %.2.lcssa, %.critedge4 ], [ %.2.lcssa, %bb.j ], [ %.1.lcssa, %.critedge2 ]
  store i64 %.044.lcssa, ptr %3, align 8
  %i.ak = ptrtoint ptr %.2.lcssa96 to i64
  %i.al = ptrtoint ptr %0 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32
  ret i32 %i.an
}

declare noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
end_hunk_0
