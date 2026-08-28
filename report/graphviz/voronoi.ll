Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/voronoi?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.el_state_t = type { %struct.arena_t, i32, ptr, ptr, ptr }
%struct.arena_t = type { ptr, i64 }

@bottomsite = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden void @voronoi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.el_state_t, align 8         ; 20 uses
  %i.a = tail call ptr @PQinitialize() #4         ; 13 uses
  %i.b = tail call ptr %0(ptr noundef %1) #4
  store ptr %i.b, ptr @bottomsite, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  call void @ELinitialize(ptr noundef nonnull %2) #4
  %i.c = call ptr %0(ptr noundef %1) #4
  br label %.outer

.outer:                                           ; preds = %bb.m, %bb.a
  %.sroa.060.0.ph = phi double [ %.sroa.060.1, %bb.m ], [ 0.000000e+00, %bb.a ]
  %.sroa.5.0.ph = phi double [ %.sroa.5.1, %bb.m ], [ 0.000000e+00, %bb.a ]
  %.0.ph = phi ptr [ %i.y, %bb.m ], [ %i.c, %bb.a ] ; 7 uses
  %.not = icmp eq ptr %.0.ph, null
  %i.d = getelementptr inbounds nuw i8, ptr %.0.ph, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.sroa.060.0 = phi double [ %.sroa.060.0.ph, %.outer ], [ %.sroa.060.1, %.backedge ]
  %.sroa.5.0 = phi double [ %.sroa.5.0.ph, %.outer ], [ %.sroa.5.1, %.backedge ]
  %i.e = call zeroext i1 @PQempty(ptr noundef %i.a) #4
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call { double, double } @PQ_min(ptr noundef %i.a) #4 ; 2 uses
  %i.g = extractvalue { double, double } %i.f, 0
  %i.h = extractvalue { double, double } %i.f, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.060.1 = phi double [ %.sroa.060.0, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.5.1 = phi double [ %.sroa.5.0, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  br i1 %.not, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = call zeroext i1 @PQempty(ptr noundef %i.a) #4
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load double, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.k = fcmp olt double %i.j, %.sroa.5.1
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = fcmp oeq double %i.j, %.sroa.5.1
  br i1 %i.l, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.m = load double, ptr %.0.ph, align 8, !tbaa !16
  %i.n = fcmp olt double %i.m, %.sroa.060.1
  br i1 %i.n, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.o = call ptr @ELleftbnd(ptr noundef nonnull %2, ptr noundef nonnull %.0.ph) #4 ; 6 uses
  %i.p = call ptr @ELright(ptr noundef %i.o) #4
  %i.q = call ptr @rightreg(ptr noundef %i.o) #4
  %i.r = call ptr @gvbisect(ptr noundef %i.q, ptr noundef nonnull %.0.ph, ptr noundef nonnull %2) #4 ; 2 uses
  %i.s = call ptr @HEcreate(ptr noundef nonnull %2, ptr noundef %i.r, i8 noundef signext 0) #4 ; 3 uses
  call void @ELinsert(ptr noundef %i.o, ptr noundef %i.s) #4
  %i.t = call ptr @hintersect(ptr noundef %i.o, ptr noundef %i.s, ptr noundef nonnull %2) #4 ; 3 uses
  %.not108 = icmp eq ptr %i.t, null
  br i1 %.not108, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @PQdelete(ptr noundef %i.a, ptr noundef %i.o) #4
  %i.u = call double @ngdist(ptr noundef nonnull %i.t, ptr noundef nonnull %.0.ph) #4
  call void @PQinsert(ptr noundef %i.a, ptr noundef %i.o, ptr noundef nonnull %i.t, double noundef %i.u) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = call ptr @HEcreate(ptr noundef nonnull %2, ptr noundef %i.r, i8 noundef signext 1) #4 ; 3 uses
  call void @ELinsert(ptr noundef %i.s, ptr noundef %i.v) #4
  %i.w = call ptr @hintersect(ptr noundef %i.v, ptr noundef %i.p, ptr noundef nonnull %2) #4 ; 3 uses
  %.not109 = icmp eq ptr %i.w, null
  br i1 %.not109, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = call double @ngdist(ptr noundef nonnull %i.w, ptr noundef nonnull %.0.ph) #4
  call void @PQinsert(ptr noundef %i.a, ptr noundef %i.v, ptr noundef nonnull %i.w, double noundef %i.x) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = call ptr %0(ptr noundef %1) #4
  br label %.outer

bb.n:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.z = call zeroext i1 @PQempty(ptr noundef %i.a) #4
  br i1 %i.z, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = call ptr @PQextractmin(ptr noundef %i.a) #4 ; 7 uses
  %i.ab = call ptr @ELleft(ptr noundef %i.aa) #4  ; 4 uses
  %i.ac = call ptr @ELright(ptr noundef %i.aa) #4 ; 6 uses
  %i.ad = call ptr @ELright(ptr noundef %i.ac) #4
  %i.ae = call ptr @leftreg(ptr noundef %i.aa) #4 ; 3 uses
  %i.af = call ptr @rightreg(ptr noundef %i.ac) #4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !22
  %i.am = sext i8 %i.al to i32
  call void @endpoint(ptr noundef %i.aj, i32 noundef %i.am, ptr noundef %i.ah, ptr noundef nonnull %2) #4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !22
  %i.ar = sext i8 %i.aq to i32
  call void @endpoint(ptr noundef %i.ao, i32 noundef %i.ar, ptr noundef %i.ah, ptr noundef nonnull %2) #4
  call void @ELdelete(ptr noundef %i.aa) #4
  call void @PQdelete(ptr noundef %i.a, ptr noundef %i.ac) #4
  call void @ELdelete(ptr noundef %i.ac) #4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !11
  %i.aw = fcmp ogt double %i.at, %i.av            ; 3 uses
  %.097 = select i1 %i.aw, ptr %i.ae, ptr %i.af
  %.096 = zext i1 %i.aw to i8                     ; 2 uses
  %.096.a = select i1 %i.aw, ptr %i.af, ptr %i.ae ; 3 uses
  %i.ax = call ptr @gvbisect(ptr noundef %.096.a, ptr noundef %.097, ptr noundef nonnull %2) #4 ; 2 uses
  %i.ay = call ptr @HEcreate(ptr noundef nonnull %2, ptr noundef %i.ax, i8 noundef signext %.096) #4 ; 4 uses
  call void @ELinsert(ptr noundef %i.ab, ptr noundef %i.ay) #4
  %i.az = xor i8 %.096, 1
  %i.ba = zext nneg i8 %i.az to i32
  call void @endpoint(ptr noundef %i.ax, i32 noundef %i.ba, ptr noundef %i.ah, ptr noundef nonnull %2) #4
  %i.bb = call ptr @hintersect(ptr noundef %i.ab, ptr noundef %i.ay, ptr noundef nonnull %2) #4 ; 3 uses
  %.not105.a = icmp eq ptr %i.bb, null
  br i1 %.not105.a, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @PQdelete(ptr noundef %i.a, ptr noundef %i.ab) #4
  %i.bc = call double @ngdist(ptr noundef nonnull %i.bb, ptr noundef %.096.a) #4
  call void @PQinsert(ptr noundef %i.a, ptr noundef %i.ab, ptr noundef nonnull %i.bb, double noundef %i.bc) #4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = call ptr @hintersect(ptr noundef %i.ay, ptr noundef %i.ad, ptr noundef nonnull %2) #4 ; 3 uses
  %.not106 = icmp eq ptr %i.bd, null
  br i1 %.not106, label %.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = call double @ngdist(ptr noundef nonnull %i.bd, ptr noundef %.096.a) #4
  call void @PQinsert(ptr noundef %i.a, ptr noundef %i.ay, ptr noundef nonnull %i.bd, double noundef %i.be) #4
  br label %.backedge

.backedge:                                        ; preds = %bb.r, %bb.q
  br label %bb.b

bb.s:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.bh = call ptr @ELright(ptr noundef %i.bg) #4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29
  %.not107110 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not107110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.098111 = phi ptr [ %i.bm, %.lr.ph ], [ %i.bh, %bb.s ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.098111, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !21
  call void @clip_line(ptr noundef %i.bl) #4
  %i.bm = call ptr @ELright(ptr noundef %.098111) #4 ; 2 uses
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !29
  %.not107 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not107, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.s
  call void @ELcleanup(ptr noundef nonnull %2) #4
  call void @PQcleanup(ptr noundef %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare hidden ptr @PQinitialize() local_unnamed_addr #3

declare hidden void @ELinitialize(ptr noundef) local_unnamed_addr #3

declare hidden zeroext i1 @PQempty(ptr noundef) local_unnamed_addr #3

declare hidden { double, double } @PQ_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare hidden ptr @ELleftbnd(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @ELright(ptr noundef) local_unnamed_addr #3

declare hidden ptr @rightreg(ptr noundef) local_unnamed_addr #3

declare hidden ptr @gvbisect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @HEcreate(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #3

declare hidden void @ELinsert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @hintersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @PQdelete(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @PQinsert(ptr noundef, ptr noundef, ptr noundef, double noundef) local_unnamed_addr #3

declare hidden double @ngdist(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @PQextractmin(ptr noundef) local_unnamed_addr #3

declare hidden ptr @ELleft(ptr noundef) local_unnamed_addr #3

declare hidden ptr @leftreg(ptr noundef) local_unnamed_addr #3

declare hidden void @endpoint(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @ELdelete(ptr noundef) local_unnamed_addr #3

declare hidden void @clip_line(ptr noundef) local_unnamed_addr #3

declare hidden void @ELcleanup(ptr noundef) local_unnamed_addr #3

declare hidden void @PQcleanup(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS4Site", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"Site", !13, i64 0, !15, i64 16}
!13 = !{!"Point", !14, i64 0, !14, i64 8}
!14 = !{!"double", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!12, !14, i64 0}
!17 = !{!18, !9, i64 32}
!18 = !{!"Halfedge", !19, i64 0, !19, i64 8, !20, i64 16, !6, i64 24, !9, i64 32, !14, i64 40, !19, i64 48}
!19 = !{!"p1 _ZTS8Halfedge", !10, i64 0}
!20 = !{!"p1 _ZTS4Edge", !10, i64 0}
!21 = !{!18, !20, i64 16}
!22 = !{!18, !6, i64 24}
!23 = !{!24, !19, i64 32}
!24 = !{!"", !25, i64 0, !5, i64 16, !27, i64 24, !19, i64 32, !19, i64 40}
!25 = !{!"", !26, i64 0, !15, i64 8}
!26 = !{!"p1 _ZTS11arena_chunk", !10, i64 0}
!27 = !{!"p2 _ZTS8Halfedge", !28, i64 0}
!28 = !{!"any p2 pointer", !10, i64 0}
!29 = !{!24, !19, i64 40}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
end_hunk_0
