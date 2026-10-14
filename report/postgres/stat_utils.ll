Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stat_utils?download=true
inline.NumInlined: 32
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@statatt_set_slot
define dso_local void @statatt_set_slot(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i16 noundef signext %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i1 noundef zeroext %7, i64 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 65535
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  %spec.select = sext i1 %i.d to i32
  %i.e = trunc i64 %i.b to i16
  %i.f = icmp eq i16 %3, %i.e
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, 65535
  %.not94 = icmp eq i64 %i.i, 0                   ; 2 uses
  %spec.select.1 = select i1 %.not94, i32 1, i32 -1
  %i.j = trunc i64 %i.h to i16
  %i.k = icmp eq i16 %3, %i.j
  br i1 %i.k, label %bb.g, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.l = trunc i64 %i.h to i16
  %i.m = icmp eq i16 %3, %i.l
  br i1 %i.m, label %bb.g, label %._crit_edge74

bb.d:                                             ; preds = %bb.c
  br i1 %.not94, label %._crit_edge74, label %bb.e

._crit_edge74:                                    ; preds = %.thread, %bb.d
  %.1.18891 = phi i32 [ 1, %bb.d ], [ 0, %.thread ]
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre76 = load i64, ptr %.phi.trans.insert75, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, 65535
  %i.q = icmp eq i64 %i.p, 0
  %spec.select.2 = select i1 %i.q, i32 2, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge74, %bb.e
  %i.r = phi i64 [ %.pre76, %._crit_edge74 ], [ %i.o, %bb.e ]
  %.1.2 = phi i32 [ %.1.18891, %._crit_edge74 ], [ %spec.select.2, %bb.e ] ; 3 uses
  %i.s = trunc i64 %i.r to i16
  %i.t = icmp eq i16 %3, %i.s
  br i1 %i.t, label %bb.g, label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.f
  %i.u = icmp slt i32 %.1.2, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = and i64 %i.w, 65535
  %i.y = icmp eq i64 %i.x, 0
  %spec.select.3 = select i1 %i.y, i32 3, i32 -1
  %.1.3 = select i1 %i.u, i32 %spec.select.3, i32 %.1.2 ; 3 uses
  %i.z = trunc i64 %i.w to i16
  %i.aa = icmp eq i16 %3, %i.z
  br i1 %i.aa, label %bb.g, label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge77
  %i.ab = icmp slt i32 %.1.3, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 65535
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.ab, i1 %i.af, i1 false
  %.1.4 = select i1 %i.ag, i32 4, i32 %.1.3
  %i.ah = trunc i64 %i.ad to i16
  %i.ai = icmp ne i16 %3, %i.ah                   ; 2 uses
  %spec.select93 = select i1 %i.ai, i32 5, i32 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge80, %.thread, %._crit_edge77, %bb.f, %bb.c, %bb.a
  %.1.lcssa = phi i32 [ %spec.select, %bb.a ], [ 0, %.thread ], [ %spec.select.1, %bb.c ], [ %.1.4, %._crit_edge80 ], [ %.1.2, %bb.f ], [ %.1.3, %._crit_edge77 ] ; 2 uses
  %i.aj = phi i1 [ false, %bb.a ], [ false, %.thread ], [ false, %bb.c ], [ %i.ai, %._crit_edge80 ], [ false, %bb.f ], [ false, %._crit_edge77 ]
  %.058.lcssa = phi i32 [ 0, %bb.a ], [ 1, %.thread ], [ 1, %bb.c ], [ %spec.select93, %._crit_edge80 ], [ 2, %bb.f ], [ 3, %._crit_edge77 ]
  %i.ak = icmp sgt i32 %.1.lcssa, -1
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  %spec.select68 = select i1 %or.cond, i32 %.1.lcssa, i32 %.058.lcssa ; 7 uses
  %i.al = icmp sgt i32 %spec.select68, 4
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.an = add nuw nsw i32 %spec.select68, 1
  %i.ao = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, i32 noundef %i.an) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 664, ptr noundef nonnull @__func__.statatt_set_slot) #8
  unreachable

bb.i:                                             ; preds = %bb.g
  %narrow = add nuw nsw i32 %spec.select68, 6
  %i.ap = zext nneg i32 %narrow to i64            ; 2 uses
  %narrow63 = add nuw nsw i32 %spec.select68, 11
  %i.aq = zext nneg i32 %narrow63 to i64          ; 2 uses
  %narrow66 = add nuw nsw i32 %spec.select68, 16
  %i.ar = zext nneg i32 %narrow66 to i64          ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = trunc i64 %i.at to i16
  %.not = icmp eq i16 %3, %i.au
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = sext i16 %3 to i64
  store i64 %i.av, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap
  store i8 1, ptr %i.aw, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aq ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = trunc i64 %i.ay to i32
  %.not64 = icmp eq i32 %4, %i.az
  br i1 %.not64, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = zext i32 %4 to i64
  store i64 %i.ba, ptr %i.ax, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.aq
  store i8 1, ptr %i.bb, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = trunc i64 %i.bd to i32
  %.not67 = icmp eq i32 %5, %i.be
  br i1 %.not67, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = zext i32 %5 to i64
  store i64 %i.bf, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  store i8 1, ptr %i.bg, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = add nuw nsw i32 %spec.select68, 21
  %i.bi = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  store i64 %6, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %i.bi
  store i8 1, ptr %i.bl, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %9, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = add nuw nsw i32 %spec.select68, 26
  %i.bn = zext nneg i32 %i.bm to i64              ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn
  store i64 %8, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn
  store i8 1, ptr %i.bq, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @statatt_init_empty_tuple(i32 noundef %0, i16 noundef signext %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) initializes((0, 168)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 31)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 31)) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 168
  %i.d = add i64 %i.a, 21
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, i8 1, i64 10, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %5, i8 1, i64 31, i1 false)
  %i.f = zext i32 %0 to i64
  store i64 %i.f, ptr %3, align 8
  %i.g = sext i16 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = zext i1 %2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <4 x i64> zeroinitializer, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  store <4 x i64> zeroinitializer, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 0, ptr %i.o, align 8
  store <4 x i8> zeroinitializer, ptr %i.m, align 1
  store <4 x i64> zeroinitializer, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  store <4 x i64> zeroinitializer, ptr %i.p, align 8
  store <16 x i8> zeroinitializer, ptr %4, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.r, align 1
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.s, i8 1, i64 10, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %5, i8 1, i64 31, i1 false)
  %i.t = zext i32 %0 to i64
  store i64 %i.t, ptr %3, align 8
  store i8 0, ptr %4, align 1
  %i.u = sext i16 %1 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.w, align 1
  %i.x = zext i1 %2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 0, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 0, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 11
  store i8 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 0, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 0, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i8 0, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i8 0, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 15
  store i8 0, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.bj, align 1
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @RelationGetIndexExpressions(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
