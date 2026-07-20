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
@je_dss_prec_names = hidden local_unnamed_addr global [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3], align 16
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
  br i1 %i.b, label %.thread89, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 78744 ; 3 uses
  %i.d = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef nonnull %i.c) #6 ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread89, label %bb.c

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
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  %.0..0..0..0..0..0..0..0.5.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %.0..highbits6.i.i = lshr i32 %.0..0..0..0..0..0..0..0.5.i.i, %.sroa.0.04.i
  %i.i = icmp eq i32 %.0..highbits6.i.i, 0
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !11
  %.0..0..0..0..0..0..0..0.1.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.j = add i32 %.0..0..0..0..0..0..0..0.1.i.i, 1
  store volatile i32 %i.j, ptr %i.a, align 4, !tbaa !7
  %.0..0..0..0..0..0..0..0..i.i = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %.0..highbits.i.i = lshr i32 %.0..0..0..0..0..0..0..0..i.i, %.sroa.0.04.i
  %i.k = icmp eq i32 %.0..highbits.i.i, 0
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !12

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
  %i.p = load atomic i8, ptr @dss_exhausted.0 acquire, align 1, !range !14, !noundef !15
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread, label %.preheader

.preheader:                                       ; preds = %atomic_load_b.exit
  %.not.i = icmp ne ptr %2, null
  %i.r = add i64 %4, -1
  %i.s = sub i64 0, %4
  %i.t = getelementptr i8, ptr %1, i64 78928      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10672 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.q
  %i.y = tail call ptr @sbrk(i64 noundef 0) #6    ; 6 uses
  %i.z = icmp eq ptr %i.y, inttoptr (i64 -1 to ptr)
  br i1 %i.z, label %.thread, label %atomic_store_p.exit.i

atomic_store_p.exit.i:                            ; preds = %bb.f
  store atomic ptr %i.y, ptr @dss_max.0 release, align 8
  %.not9.i = icmp ne ptr %i.y, %2
  %or.cond.i.not93 = and i1 %.not.i, %.not9.i
  %i.aa = icmp eq ptr %i.y, null
  %or.cond92 = or i1 %i.aa, %or.cond.i.not93
  br i1 %or.cond92, label %.thread, label %bb.g

bb.g:                                             ; preds = %atomic_store_p.exit.i
  %i.ab = load i8, ptr @je_opt_retain, align 1, !tbaa !16, !range !14, !noundef !15 ; 2 uses
  %i.ac = ptrtoint ptr %i.y to i64                ; 4 uses
  %i.ad = add i64 %i.ac, 4095
  %i.ae = and i64 %i.ad, -4096                    ; 4 uses
  %i.af = add i64 %i.r, %i.ae
  %i.ag = and i64 %i.af, %i.s                     ; 6 uses
  %.not = icmp eq i64 %i.ag, %i.ae                ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = sub i64 %i.ag, %i.ae
  %i.ai = inttoptr i64 %i.ae to ptr
  %.val80 = load i32, ptr %i.t, align 8, !tbaa !18
  %i.aj = tail call i64 @je_extent_sn_next(ptr noundef nonnull %i.u) #6
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !72
  %i.al = and i64 %i.ak, -17592454479872
  store ptr %i.ai, ptr %i.v, align 8, !tbaa !74
  %i.am = load i64, ptr %i.w, align 8, !tbaa !75
  %i.an = and i64 %i.am, 4095
  %i.ao = or i64 %i.an, %i.ah
  store i64 %i.ao, ptr %i.w, align 8, !tbaa !75
  %i.ap = and i32 %.val80, -268431361
  %.masked.i = zext i32 %i.ap to i64
  store i64 %i.aj, ptr %i.x, align 8, !tbaa !76
  %.not.i82 = icmp eq i8 %i.ab, 0
  %8 = select i1 %.not.i82, i64 246423552, i64 17592432467968
  %i.aq = or disjoint i64 %8, %.masked.i
  %i.ar = or i64 %i.aq, %i.al
  store i64 %i.ar, ptr %i.d, align 8, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = add i64 %i.ag, %3                       ; 2 uses
  %i.at = icmp ult i64 %i.ag, %i.ac
  %i.au = icmp ult i64 %i.as, %i.ac
  %or.cond = or i1 %i.at, %i.au
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = sub i64 %3, %i.ac
  %i.aw = add i64 %i.av, %i.ag
  %i.ax = tail call ptr @sbrk(i64 noundef %i.aw) #6 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.y
  br i1 %i.ay, label %atomic_store_p.exit, label %bb.q

atomic_store_p.exit:                              ; preds = %bb.j
  %i.az = inttoptr i64 %i.ag to ptr               ; 6 uses
  %i.ba = inttoptr i64 %i.as to ptr
  store atomic ptr %i.ba, ptr @dss_max.0 release, align 8
  store atomic i8 0, ptr @dss_extending release, align 1
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %atomic_store_p.exit
  %i.bb = tail call ptr @je_arena_get_ehooks(ptr noundef %1) #6
  tail call void @je_extent_dalloc_gap(ptr noundef %0, ptr noundef nonnull %i.u, ptr noundef %i.bb, ptr noundef nonnull %i.d) #6
  br label %bb.m

bb.l:                                             ; preds = %atomic_store_p.exit
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = load i8, ptr %6, align 1, !tbaa !16, !range !14, !noundef !15
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.thread116, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = tail call zeroext i1 @je_pages_decommit(ptr noundef %i.az, i64 noundef %3) #6 ; 2 uses
  %i.bf = zext i1 %i.be to i8
  store i8 %i.bf, ptr %6, align 1, !tbaa !16
  %i.bg = load i8, ptr %5, align 1, !tbaa !16, !range !14, !noundef !15
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = select i1 %i.bh, i1 %i.be, i1 false
  br i1 %i.bi, label %.thread117, label %.thread89

.thread116:                                       ; preds = %bb.m
  %i.bj = load i8, ptr %5, align 1, !tbaa !16, !range !14, !noundef !15
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread117, label %.thread89

.thread117:                                       ; preds = %bb.n, %.thread116
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, i8 0, i64 104, i1 false)
  %i.bm = tail call ptr @je_arena_get_ehooks(ptr noundef nonnull %1) #6
  %.val = load i32, ptr %i.t, align 8, !tbaa !18
  %.not94 = icmp eq i64 %3, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.az, ptr %i.bn, align 8, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %3, ptr %i.bo, align 8, !tbaa !75
  %i.bp = and i32 %.val, -268431361
  %.masked.i83 = zext i32 %i.bp to i64
  %9 = select i1 %.not94, i64 0, i64 4096
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 235, ptr %10, align 8, !tbaa !76
  %.not.i84 = icmp eq i8 %i.ab, 0
  %i.bq = select i1 %.not.i84, i64 8192, i64 17592186052608
  %i.br = or disjoint i64 %i.bq, %9
  %i.bs = or disjoint i64 %i.br, %.masked.i83
  store i64 %i.bs, ptr %7, align 8, !tbaa !72
  %i.bt = call zeroext i1 @je_extent_purge_forced_wrapper(ptr noundef %0, ptr noundef %i.bm, ptr noundef nonnull %7, i64 noundef 0, i64 noundef %3) #6
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread117
  call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %3, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %.thread89

bb.q:                                             ; preds = %bb.j
  %i.bu = icmp eq ptr %i.ax, inttoptr (i64 -1 to ptr)
  br i1 %i.bu, label %atomic_store_b.exit, label %bb.f

atomic_store_b.exit:                              ; preds = %bb.q
  store atomic i8 1, ptr @dss_exhausted.0 release, align 1
  br label %.thread

.thread:                                          ; preds = %bb.f, %atomic_store_p.exit.i, %bb.i, %atomic_store_b.exit, %atomic_load_b.exit
  store atomic i8 0, ptr @dss_extending release, align 1
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  br label %.thread89

.thread89:                                        ; preds = %bb.n, %.thread116, %bb.p, %bb.b, %bb.a, %.thread
  %.4 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %.thread ], [ %i.az, %bb.p ], [ %i.az, %.thread116 ], [ %i.az, %bb.n ]
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
  %i.b = load ptr, ptr @dss_base, align 8, !tbaa !77
  %i.c = icmp uge ptr %0, %i.b
  %i.d = icmp ult ptr %0, %i.a
  %i.e = and i1 %i.d, %i.c
  ret i1 %i.e
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden zeroext i1 @je_extent_dss_mergeable(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @dss_base, align 8, !tbaa !77 ; 2 uses
  %i.b = icmp ult ptr %0, %i.a
  %i.c = icmp ult ptr %1, %i.a
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %atomic_load_p.exit

atomic_load_p.exit:                               ; preds = %bb.a
  %i.d = load atomic ptr, ptr @dss_max.0 acquire, align 8 ; 2 uses
  %i.e = load ptr, ptr @dss_base, align 8, !tbaa !77 ; 2 uses
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
  store ptr %i.a, ptr @dss_base, align 8, !tbaa !77
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i64 2151384544}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!17, !17, i64 0}
!17 = !{!"_Bool", !9, i64 0}
!18 = !{!19, !8, i64 78928}
!19 = !{!"arena_s", !9, i64 0, !20, i64 8, !21, i64 16, !23, i64 24, !30, i64 10392, !32, i64 10400, !34, i64 10408, !20, i64 10520, !35, i64 10528, !34, i64 10536, !38, i64 10648, !8, i64 78928, !45, i64 78936, !25, i64 78944, !9, i64 78952}
!20 = !{!"", !8, i64 0}
!21 = !{!"p1 _ZTS6tsdn_s", !22, i64 0}
!22 = !{!"any pointer", !9, i64 0}
!23 = !{!"arena_stats_s", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !25, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !26, i64 88, !24, i64 168, !24, i64 176, !9, i64 184, !9, i64 952, !25, i64 10360}
!24 = !{!"long", !9, i64 0}
!25 = !{!"", !24, i64 0}
!26 = !{!"pa_shard_stats_s", !24, i64 0, !27, i64 8}
!27 = !{!"pac_stats_s", !28, i64 0, !28, i64 24, !24, i64 48, !25, i64 56, !25, i64 64}
!28 = !{!"pac_decay_stats_s", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"locked_u64_s", !25, i64 0}
!30 = !{!"", !31, i64 0}
!31 = !{!"p1 _ZTS13tcache_slow_s", !22, i64 0}
!32 = !{!"", !33, i64 0}
!33 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !22, i64 0}
!34 = !{!"malloc_mutex_s", !9, i64 0}
!35 = !{!"", !36, i64 0}
!36 = !{!"", !37, i64 0}
!37 = !{!"p1 _ZTS7edata_s", !22, i64 0}
!38 = !{!"pa_shard_s", !39, i64 0, !25, i64 8, !40, i64 16, !17, i64 17, !41, i64 24, !53, i64 62264, !57, i64 62384, !68, i64 68096, !8, i64 68240, !51, i64 68248, !71, i64 68256, !46, i64 68264, !45, i64 68272}
!39 = !{!"p1 _ZTS12pa_central_s", !22, i64 0}
!40 = !{!"", !17, i64 0}
!41 = !{!"pac_s", !42, i64 0, !43, i64 56, !43, i64 19496, !43, i64 38936, !45, i64 58376, !46, i64 58384, !47, i64 58392, !48, i64 58400, !34, i64 58408, !49, i64 58520, !25, i64 58640, !50, i64 58648, !50, i64 60432, !51, i64 62216, !52, i64 62224, !25, i64 62232}
!42 = !{!"pai_s", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48}
!43 = !{!"ecache_s", !34, i64 0, !44, i64 112, !44, i64 9768, !8, i64 19424, !8, i64 19428, !17, i64 19432}
!44 = !{!"eset_s", !9, i64 0, !9, i64 32, !9, i64 6432, !35, i64 9632, !25, i64 9640, !8, i64 9648}
!45 = !{!"p1 _ZTS6base_s", !22, i64 0}
!46 = !{!"p1 _ZTS6emap_s", !22, i64 0}
!47 = !{!"p1 _ZTS13edata_cache_s", !22, i64 0}
!48 = !{!"exp_grow_s", !8, i64 0, !8, i64 4}
!49 = !{!"san_bump_alloc_s", !34, i64 0, !37, i64 112}
!50 = !{!"decay_s", !34, i64 0, !17, i64 112, !25, i64 120, !25, i64 128, !25, i64 136, !24, i64 144, !25, i64 152, !24, i64 160, !24, i64 168, !9, i64 176, !24, i64 1776}
!51 = !{!"p1 _ZTS14malloc_mutex_s", !22, i64 0}
!52 = !{!"p1 _ZTS11pac_stats_s", !22, i64 0}
!53 = !{!"sec_s", !42, i64 0, !54, i64 56, !55, i64 64, !56, i64 104, !8, i64 112}
!54 = !{!"p1 _ZTS5pai_s", !22, i64 0}
!55 = !{!"sec_opts_s", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!56 = !{!"p1 _ZTS11sec_shard_s", !22, i64 0}
!57 = !{!"hpa_shard_s", !42, i64 0, !58, i64 56, !34, i64 64, !34, i64 176, !45, i64 288, !59, i64 296, !60, i64 320, !24, i64 5600, !8, i64 5608, !46, i64 5616, !66, i64 5624, !24, i64 5664, !67, i64 5672, !25, i64 5704}
!58 = !{!"p1 _ZTS13hpa_central_s", !22, i64 0}
!59 = !{!"edata_cache_fast_s", !35, i64 0, !47, i64 8, !17, i64 16}
!60 = !{!"psset_s", !9, i64 0, !9, i64 1024, !61, i64 1032, !62, i64 1056, !63, i64 4224, !9, i64 4232, !9, i64 5256, !63, i64 5272}
!61 = !{!"psset_bin_stats_s", !24, i64 0, !24, i64 8, !24, i64 16}
!62 = !{!"psset_stats_s", !9, i64 0, !9, i64 3072, !9, i64 3120}
!63 = !{!"", !64, i64 0}
!64 = !{!"", !65, i64 0}
!65 = !{!"p1 _ZTS8hpdata_s", !22, i64 0}
!66 = !{!"hpa_shard_opts_s", !24, i64 0, !24, i64 8, !8, i64 16, !17, i64 20, !24, i64 24, !24, i64 32}
!67 = !{!"hpa_shard_nonderived_stats_s", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!68 = !{!"edata_cache_s", !69, i64 0, !25, i64 16, !34, i64 24, !45, i64 136}
!69 = !{!"", !70, i64 0}
!70 = !{!"ph_s", !22, i64 0, !24, i64 8}
!71 = !{!"p1 _ZTS16pa_shard_stats_s", !22, i64 0}
!72 = !{!73, !24, i64 0}
!73 = !{!"edata_s", !24, i64 0, !22, i64 8, !9, i64 16, !65, i64 24, !24, i64 32, !9, i64 40, !9, i64 64}
!74 = !{!73, !22, i64 8}
!75 = !{!9, !9, i64 0}
!76 = !{!73, !24, i64 32}
!77 = !{!22, !22, i64 0}
end_hunk_0
