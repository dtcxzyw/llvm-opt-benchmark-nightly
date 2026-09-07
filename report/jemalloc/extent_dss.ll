Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/extent_dss?download=true
inline.NumInlined: 28
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.atomic_b_t = type { i8 }
%struct.edata_s = type { i64, ptr, %union.anon.8, ptr, i64, %union.anon.9, %union.anon.12 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { %union.anon.11 }
%union.anon.11 = type { %struct.edata_heap_link_t }
%struct.edata_heap_link_t = type { %struct.phn_link_s }
%struct.phn_link_s = type { ptr, ptr, ptr }
%union.anon.12 = type { %struct.slab_data_s }
%struct.slab_data_s = type { [8 x i64] }

@.str = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@je_opt_dss = hidden local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@je_dss_prec_names = hidden local_unnamed_addr constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3], align 16
@dss_prec_default.0 = internal unnamed_addr global i32 2, align 4
@dss_exhausted.0 = internal unnamed_addr global i8 0, align 1
@je_opt_retain = external local_unnamed_addr global i8, align 1
@dss_max.0 = internal unnamed_addr global ptr null, align 8
@dss_base = internal unnamed_addr global ptr null, align 8
@dss_extending = internal global %struct.atomic_b_t zeroinitializer, align 1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden i32 @je_extent_dss_prec_get() local_unnamed_addr #0 {
atomic_load_u.exit:
  %i.a = load atomic i32, ptr @dss_prec_default.0 acquire, align 4
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden noundef zeroext i1 @je_extent_dss_prec_set(i32 noundef %0) local_unnamed_addr #0 {
atomic_store_u.exit:
  store atomic i32 %0, ptr @dss_prec_default.0 release, align 4
  ret i1 false
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_extent_alloc_dss(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %7 = alloca %struct.edata_s, align 8            ; 8 uses
  %i.b = icmp slt i64 %3, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80448 ; 3 uses
  %i.d = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef nonnull %i.c) #6 ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = cmpxchg weak ptr @dss_extending, i8 0, i8 1 acq_rel monotonic, align 1
  %i.g = extractvalue { i8, i1 } %i.f, 1
  br i1 %i.g, label %atomic_load_b.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %atomic_compare_exchange_weak_b.exit.i
  %.sroa.0.04.i = phi i32 [ %.sroa.0.2.i, %atomic_compare_exchange_weak_b.exit.i ], [ 0, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = icmp ult i32 %.sroa.0.04.i, 5
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store volatile i32 0, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0.5.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %.0..highbits6.i.i = lshr i32 %.0..0..0..0..0..0..0..0.5.i.i, %.sroa.0.04.i
  %i.i = icmp eq i32 %.0..highbits6.i.i, 0
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !16
  %.0..0..0..0..0..0..0..0.1.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.j = add i32 %.0..0..0..0..0..0..0..0.1.i.i, 1
  store volatile i32 %i.j, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..0..0..i.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %.0..highbits.i.i = lshr i32 %.0..0..0..0..0..0..0..0..i.i, %.sroa.0.04.i
  %i.k = icmp eq i32 %.0..highbits.i.i, 0
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.d
  %i.l = add nuw nsw i32 %.sroa.0.04.i, 1
  br label %atomic_compare_exchange_weak_b.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.m = tail call i32 @sched_yield() #6          ; 0 uses
  br label %atomic_compare_exchange_weak_b.exit.i

atomic_compare_exchange_weak_b.exit.i:            ; preds = %bb.e, %._crit_edge.i.i
  %.sroa.0.2.i = phi i32 [ %i.l, %._crit_edge.i.i ], [ %.sroa.0.04.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = cmpxchg weak ptr @dss_extending, i8 0, i8 1 acq_rel monotonic, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %atomic_load_b.exit, label %.lr.ph.i

atomic_load_b.exit:                               ; preds = %atomic_compare_exchange_weak_b.exit.i, %bb.c
  %i.p = load atomic i8, ptr @dss_exhausted.0 acquire, align 1, !range !18, !noundef !19
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread93, label %.preheader

.preheader:                                       ; preds = %atomic_load_b.exit
  %.not.i = icmp ne ptr %2, null
  %i.r = add i64 %4, -1
  %i.s = sub i64 0, %4
  %i.t = getelementptr i8, ptr %1, i64 80640      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12312 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.p
  %i.y = tail call ptr @sbrk(i64 noundef 0) #6    ; 7 uses
  %i.z = icmp eq ptr %i.y, inttoptr (i64 -1 to ptr)
  br i1 %i.z, label %.thread93, label %atomic_store_p.exit.i

atomic_store_p.exit.i:                            ; preds = %bb.f
  store atomic ptr %i.y, ptr @dss_max.0 release, align 8
  %.not9.i = icmp ne ptr %i.y, %2
  %or.cond.i.not96 = and i1 %.not.i, %.not9.i
  %i.aa = icmp eq ptr %i.y, null
  %or.cond = or i1 %i.aa, %or.cond.i.not96
  br i1 %or.cond, label %.thread93, label %bb.g

bb.g:                                             ; preds = %atomic_store_p.exit.i
  %i.ab = load i8, ptr @je_opt_retain, align 1, !tbaa !21, !range !18, !noundef !19 ; 2 uses
  %i.ac = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ad = add i64 %i.ac, 4095
  %i.ae = and i64 %i.ad, -4096                    ; 5 uses
  %i.af = sub i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af ; 2 uses
  %i.ah = add i64 %i.r, %i.ae
  %i.ai = and i64 %i.ah, %i.s                     ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ae
  %8 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 8 uses
  %9 = ptrtoint ptr %8 to i64                     ; 2 uses
  %.not = icmp eq i64 %i.ae, %9                   ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %10 = sub i64 %9, %i.ae
  %.val84 = load i32, ptr %i.t, align 64, !tbaa !73
  %i.ak = tail call i64 @je_extent_sn_next(ptr noundef nonnull %i.u) #6
  %i.al = load i64, ptr %i.d, align 8, !tbaa !75
  %i.am = and i64 %i.al, -17592454479872
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !76
  %i.an = load i64, ptr %i.w, align 8, !tbaa !77
  %i.ao = and i64 %i.an, 4095
  %i.ap = or i64 %i.ao, %10
  store i64 %i.ap, ptr %i.w, align 8, !tbaa !77
  store i64 %i.ak, ptr %i.x, align 8, !tbaa !78
  %i.aq = and i32 %.val84, -268431361
  %.masked.masked.i = zext i32 %i.aq to i64
  %.not.i86 = icmp eq i8 %i.ab, 0
  %i.ar = select i1 %.not.i86, i64 243277824, i64 17592429322240
  %i.as = or disjoint i64 %i.ar, %.masked.masked.i
  %i.at = or i64 %i.as, %i.am
  store i64 %i.at, ptr %i.d, align 8, !tbaa !75
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %11 = sub i64 %3, %i.ac
  %i.au = add i64 %11, %i.ai
  %i.av = tail call ptr @sbrk(i64 noundef %i.au) #6 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.y
  br i1 %i.aw, label %atomic_store_p.exit, label %bb.p

atomic_store_p.exit:                              ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 %3
  store atomic ptr %i.ax, ptr @dss_max.0 release, align 8
  store atomic i8 0, ptr @dss_extending release, align 1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %atomic_store_p.exit
  %i.ay = tail call ptr @je_arena_get_ehooks(ptr noundef %1) #6
  tail call void @je_extent_dalloc_gap(ptr noundef %0, ptr noundef nonnull %i.u, ptr noundef %i.ay, ptr noundef nonnull %i.d) #6
  br label %bb.l

bb.k:                                             ; preds = %atomic_store_p.exit
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = load i8, ptr %6, align 1, !tbaa !21, !range !18, !noundef !19
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.thread110, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call zeroext i1 @je_pages_decommit(ptr noundef nonnull %8, i64 noundef %3) #6 ; 2 uses
  %i.bc = zext i1 %i.bb to i8
  store i8 %i.bc, ptr %6, align 1, !tbaa !21
  %i.bd = load i8, ptr %5, align 1, !tbaa !21, !range !18, !noundef !19
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = select i1 %i.be, i1 %i.bb, i1 false
  br i1 %i.bf, label %.thread111, label %.thread

.thread110:                                       ; preds = %bb.l
  %i.bg = load i8, ptr %5, align 1, !tbaa !21, !range !18, !noundef !19
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.thread111, label %.thread

.thread111:                                       ; preds = %bb.m, %.thread110
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bi, i8 0, i64 104, i1 false)
  %i.bj = tail call ptr @je_arena_get_ehooks(ptr noundef nonnull %1) #6
  %.val = load i32, ptr %i.t, align 64, !tbaa !73
  %i.bk = tail call i64 @je_extent_sn_next(ptr noundef nonnull %i.u) #6
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %8, ptr %i.bl, align 8, !tbaa !76
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %3, ptr %i.bm, align 8, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.bk, ptr %i.bn, align 8, !tbaa !78
  %i.bo = and i32 %.val, -268431361
  %.masked.masked.i87 = zext i32 %i.bo to i64
  %.not.i88 = icmp eq i8 %i.ab, 0
  %i.bp = select i1 %.not.i88, i64 243277824, i64 17592429322240
  %i.bq = or disjoint i64 %i.bp, %.masked.masked.i87
  store i64 %i.bq, ptr %7, align 8, !tbaa !75
  %i.br = call zeroext i1 @je_extent_purge_forced_wrapper(ptr noundef %0, ptr noundef %i.bj, ptr noundef nonnull %7, i64 noundef 0, i64 noundef %3) #6
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread111
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %8, i8 0, i64 %3, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread111
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %.thread

bb.p:                                             ; preds = %bb.i
  %i.bs = icmp eq ptr %i.av, inttoptr (i64 -1 to ptr)
  br i1 %i.bs, label %atomic_store_b.exit, label %bb.f

atomic_store_b.exit:                              ; preds = %bb.p
  store atomic i8 1, ptr @dss_exhausted.0 release, align 1
  br label %.thread93

.thread93:                                        ; preds = %bb.f, %atomic_store_p.exit.i, %atomic_store_b.exit, %atomic_load_b.exit
  store atomic i8 0, ptr @dss_extending release, align 1
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  br label %.thread

.thread:                                          ; preds = %bb.m, %.thread110, %bb.o, %bb.b, %bb.a, %.thread93
  %.4 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %.thread93 ], [ %8, %bb.m ], [ %8, %bb.o ], [ %8, %.thread110 ]
  ret ptr %.4
}

declare ptr @je_edata_cache_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @je_extent_sn_next(ptr noundef) local_unnamed_addr #3

declare ptr @je_arena_get_ehooks(ptr noundef) local_unnamed_addr #3

declare void @je_extent_dalloc_gap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_edata_cache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @je_pages_decommit(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare zeroext i1 @je_extent_purge_forced_wrapper(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden zeroext i1 @je_extent_in_dss(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
atomic_load_p.exit:
  %i.a = load atomic ptr, ptr @dss_max.0 acquire, align 8
  %i.b = load ptr, ptr @dss_base, align 8, !tbaa !13
  %i.c = icmp uge ptr %0, %i.b
  %i.d = icmp ult ptr %0, %i.a
  %i.e = and i1 %i.d, %i.c
  ret i1 %i.e
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden zeroext i1 @je_extent_dss_mergeable(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @dss_base, align 8, !tbaa !13 ; 2 uses
  %i.b = icmp ult ptr %0, %i.a
  %i.c = icmp ult ptr %1, %i.a
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %atomic_load_p.exit

atomic_load_p.exit:                               ; preds = %bb.a
  %i.d = load atomic ptr, ptr @dss_max.0 acquire, align 8 ; 2 uses
  %i.e = load ptr, ptr @dss_base, align 8, !tbaa !13 ; 2 uses
  %i.f = icmp uge ptr %0, %i.e
  %i.g = icmp ult ptr %0, %i.d
  %i.h = and i1 %i.g, %i.f
  %i.i = icmp uge ptr %1, %i.d
  %i.j = icmp ult ptr %1, %i.e
  %i.k = or i1 %i.i, %i.j
  %i.l = xor i1 %i.h, %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %atomic_load_p.exit
  %.0 = phi i1 [ %i.l, %atomic_load_p.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @je_extent_dss_boot() local_unnamed_addr #2 {
atomic_store_p.exit:
  %i.a = tail call ptr @sbrk(i64 noundef 0) #6    ; 3 uses
  store ptr %i.a, ptr @dss_base, align 8, !tbaa !13
  store atomic i8 0, ptr @dss_extending monotonic, align 1
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  %i.c = zext i1 %i.b to i8
  store atomic i8 %i.c, ptr @dss_exhausted.0 monotonic, align 1
  store atomic ptr %i.a, ptr @dss_max.0 monotonic, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @sbrk(i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = distinct !{!14, !17}
!15 = !{!9, !9, i64 0}
!16 = !{i64 2151675559}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"_Bool", !8, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"", !9, i64 0}
!23 = !{!"p1 _ZTS6tsdn_s", !12, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = !{!"", !24, i64 0}
!26 = !{!"locked_u64_s", !25, i64 0}
!27 = !{!"pac_decay_stats_s", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!"pac_stats_s", !27, i64 0, !27, i64 24, !24, i64 48, !25, i64 56, !25, i64 64}
!29 = !{!"pa_shard_stats_s", !24, i64 0, !28, i64 8}
!30 = !{!"arena_stats_s", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !25, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !29, i64 104, !24, i64 184, !24, i64 192, !8, i64 200, !8, i64 968, !25, i64 11944}
!31 = !{!"p1 _ZTS13tcache_slow_s", !12, i64 0}
!32 = !{!"", !31, i64 0}
!33 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !12, i64 0}
!34 = !{!"", !33, i64 0}
!35 = !{!"malloc_mutex_s", !8, i64 0}
!36 = !{!"p1 _ZTS7edata_s", !12, i64 0}
!37 = !{!"", !36, i64 0}
!38 = !{!"", !37, i64 0}
!39 = !{!"p1 _ZTS12pa_central_s", !12, i64 0}
!40 = !{!"", !20, i64 0}
!41 = !{!"pai_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!42 = !{!"eset_s", !8, i64 0, !8, i64 32, !8, i64 6432, !38, i64 9632, !25, i64 9640, !9, i64 9648}
!43 = !{!"ecache_s", !35, i64 0, !42, i64 112, !42, i64 9768, !9, i64 19424, !9, i64 19428, !20, i64 19432}
!44 = !{!"p1 _ZTS6base_s", !12, i64 0}
!45 = !{!"p1 _ZTS6emap_s", !12, i64 0}
!46 = !{!"p1 _ZTS13edata_cache_s", !12, i64 0}
!47 = !{!"exp_grow_s", !9, i64 0, !9, i64 4}
!48 = !{!"san_bump_alloc_s", !35, i64 0, !36, i64 112}
!49 = !{!"decay_s", !35, i64 0, !20, i64 112, !25, i64 120, !25, i64 128, !25, i64 136, !24, i64 144, !25, i64 152, !24, i64 160, !24, i64 168, !8, i64 176, !24, i64 1776}
!50 = !{!"p1 _ZTS14malloc_mutex_s", !12, i64 0}
!51 = !{!"p1 _ZTS11pac_stats_s", !12, i64 0}
!52 = !{!"pac_s", !41, i64 0, !43, i64 40, !43, i64 19480, !43, i64 38920, !44, i64 58360, !45, i64 58368, !46, i64 58376, !47, i64 58384, !35, i64 58392, !48, i64 58504, !25, i64 58624, !49, i64 58632, !49, i64 60416, !50, i64 62200, !51, i64 62208, !25, i64 62216}
!53 = !{!"p1 _ZTS13hpa_central_s", !12, i64 0}
!54 = !{!"edata_cache_fast_s", !38, i64 0, !46, i64 8, !20, i64 16}
!55 = !{!"sec_opts_s", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!56 = !{!"p1 _ZTS9sec_bin_s", !12, i64 0}
!57 = !{!"sec_s", !55, i64 0, !56, i64 32, !9, i64 40}
!58 = !{!"psset_bin_stats_s", !24, i64 0, !24, i64 8, !24, i64 16}
!59 = !{!"psset_stats_s", !58, i64 0, !8, i64 24, !8, i64 72, !8, i64 3144, !8, i64 3192}
!60 = !{!"p1 _ZTS8hpdata_s", !12, i64 0}
!61 = !{!"", !60, i64 0}
!62 = !{!"", !61, i64 0}
!63 = !{!"psset_s", !8, i64 0, !8, i64 1024, !59, i64 1032, !62, i64 4272, !8, i64 4280, !8, i64 5304, !62, i64 5320}
!64 = !{!"hpa_shard_opts_s", !24, i64 0, !24, i64 8, !9, i64 16, !20, i64 20, !24, i64 24, !20, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !9, i64 72}
!65 = !{!"hpa_shard_nonderived_stats_s", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!66 = !{!"hpa_shard_s", !41, i64 0, !53, i64 40, !35, i64 48, !35, i64 160, !44, i64 272, !54, i64 280, !57, i64 320, !63, i64 368, !24, i64 5696, !9, i64 5704, !45, i64 5712, !64, i64 5720, !24, i64 5800, !65, i64 5808, !25, i64 5848, !25, i64 5856}
!67 = !{!"ph_s", !12, i64 0, !24, i64 8}
!68 = !{!"", !67, i64 0}
!69 = !{!"edata_cache_s", !68, i64 0, !25, i64 16, !35, i64 24, !44, i64 136}
!70 = !{!"p1 _ZTS16pa_shard_stats_s", !12, i64 0}
!71 = !{!"pa_shard_s", !39, i64 0, !25, i64 8, !40, i64 16, !20, i64 17, !52, i64 24, !66, i64 62272, !69, i64 68160, !9, i64 68304, !50, i64 68312, !70, i64 68320, !45, i64 68328, !44, i64 68336}
!72 = !{!"arena_s", !8, i64 0, !22, i64 8, !23, i64 16, !30, i64 24, !32, i64 11976, !34, i64 11984, !35, i64 11992, !22, i64 12104, !38, i64 12112, !35, i64 12120, !71, i64 12288, !9, i64 80640, !44, i64 80648, !25, i64 80656, !8, i64 80664, !8, i64 80704}
!73 = !{!72, !9, i64 80640}
!74 = !{!"edata_s", !24, i64 0, !12, i64 8, !8, i64 16, !60, i64 24, !24, i64 32, !8, i64 40, !8, i64 64}
!75 = !{!74, !24, i64 0}
!76 = !{!74, !12, i64 8}
!77 = !{!8, !8, i64 0}
!78 = !{!74, !24, i64 32}
end_hunk_0
