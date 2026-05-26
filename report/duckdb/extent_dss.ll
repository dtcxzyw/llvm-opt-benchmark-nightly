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
@duckdb_je_opt_dss = local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@duckdb_je_dss_prec_names = local_unnamed_addr constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3], align 16
@dss_prec_default.0 = internal unnamed_addr global i32 2, align 4
@dss_exhausted.0 = internal unnamed_addr global i8 0, align 1
@duckdb_je_opt_retain = external local_unnamed_addr global i8, align 1
@dss_max.0 = internal unnamed_addr global ptr null, align 8
@dss_base = internal unnamed_addr global ptr null, align 8
@dss_extending = internal global %struct.atomic_b_t zeroinitializer, align 1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @duckdb_je_extent_dss_prec_get() local_unnamed_addr #0 {
atomic_load_u.exit:
  %i.a = load atomic i32, ptr @dss_prec_default.0 acquire, align 4
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @duckdb_je_extent_dss_prec_set(i32 noundef %0) local_unnamed_addr #0 {
atomic_store_u.exit:
  store atomic i32 %0, ptr @dss_prec_default.0 release, align 4
  ret i1 false
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_extent_alloc_dss(ptr noundef %0, ptr noundef %1, ptr noundef readnone captures(address) %2, i64 noundef %3, i64 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %7 = alloca %struct.edata_s, align 8            ; 8 uses
  %i.b = icmp slt i64 %3, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 78768 ; 3 uses
  %i.d = tail call ptr @duckdb_je_edata_cache_get(ptr noundef %0, ptr noundef nonnull %i.c) #6 ; 9 uses
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
  store volatile i32 0, ptr %i.a, align 4, !tbaa !3
  %.0..0..0..0..0..0..0..0.5.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !3
  %.0..highbits6.i.i = lshr i32 %.0..0..0..0..0..0..0..0.5.i.i, %.sroa.0.04.i
  %i.i = icmp eq i32 %.0..highbits6.i.i, 0
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !7
  %.0..0..0..0..0..0..0..0.1.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !3
  %i.j = add i32 %.0..0..0..0..0..0..0..0.1.i.i, 1
  store volatile i32 %i.j, ptr %i.a, align 4, !tbaa !3
  %.0..0..0..0..0..0..0..0..i.i = load volatile i32, ptr %i.a, align 4, !tbaa !3
  %.0..highbits.i.i = lshr i32 %.0..0..0..0..0..0..0..0..i.i, %.sroa.0.04.i
  %i.k = icmp eq i32 %.0..highbits.i.i, 0
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

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
  %i.p = load atomic i8, ptr @dss_exhausted.0 acquire, align 1, !range !8, !noundef !9
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread93, label %.preheader

.preheader:                                       ; preds = %atomic_load_b.exit
  %.not.i = icmp ne ptr %2, null
  %i.r = add i64 %4, -1
  %i.s = sub i64 0, %4
  %i.t = getelementptr i8, ptr %1, i64 78952      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10688 ; 2 uses
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
  %i.ab = load i8, ptr @duckdb_je_opt_retain, align 1, !tbaa !10, !range !8, !noundef !9 ; 2 uses
  %i.ac = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ad = add i64 %i.ac, 4095
  %i.ae = and i64 %i.ad, -4096                    ; 5 uses
  %i.af = sub i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af ; 2 uses
  %i.ah = add i64 %i.r, %i.ae
  %i.ai = and i64 %i.ah, %i.s                     ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 8 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %.not = icmp eq i64 %i.ae, %i.al                ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = sub i64 %i.al, %i.ae
  %.val84 = load i32, ptr %i.t, align 8, !tbaa !12
  %i.an = tail call i64 @duckdb_je_extent_sn_next(ptr noundef nonnull %i.u) #6
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !66
  %i.ap = and i64 %i.ao, -17592454479872
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !68
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !69
  %i.ar = and i64 %i.aq, 4095
  %i.as = or i64 %i.ar, %i.am
  store i64 %i.as, ptr %i.w, align 8, !tbaa !69
  %i.at = and i32 %.val84, -268431361
  %.masked.i = zext i32 %i.at to i64
  store i64 %i.an, ptr %i.x, align 8, !tbaa !70
  %.not.i86 = icmp eq i8 %i.ab, 0
  %i.au = select i1 %.not.i86, i64 243277824, i64 17592429322240
  %i.av = or disjoint i64 %i.au, %.masked.i
  %i.aw = or i64 %i.av, %i.ap
  store i64 %i.aw, ptr %i.d, align 8, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = sub i64 %3, %i.ac
  %i.ay = add i64 %i.ax, %i.ai
  %i.az = tail call ptr @sbrk(i64 noundef %i.ay) #6 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.y
  br i1 %i.ba, label %atomic_store_p.exit, label %bb.p

atomic_store_p.exit:                              ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %3
  store atomic ptr %i.bb, ptr @dss_max.0 release, align 8
  store atomic i8 0, ptr @dss_extending release, align 1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %atomic_store_p.exit
  %i.bc = tail call ptr @duckdb_je_arena_get_ehooks(ptr noundef %1) #6
  tail call void @duckdb_je_extent_dalloc_gap(ptr noundef %0, ptr noundef nonnull %i.u, ptr noundef %i.bc, ptr noundef nonnull %i.d) #6
  br label %bb.l

bb.k:                                             ; preds = %atomic_store_p.exit
  tail call void @duckdb_je_edata_cache_put(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = load i8, ptr %6, align 1, !tbaa !10, !range !8, !noundef !9
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread111, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = tail call zeroext i1 @duckdb_je_pages_decommit(ptr noundef nonnull %i.ak, i64 noundef %3) #6 ; 2 uses
  %i.bg = zext i1 %i.bf to i8
  store i8 %i.bg, ptr %6, align 1, !tbaa !10
  %i.bh = load i8, ptr %5, align 1, !tbaa !10, !range !8, !noundef !9
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = select i1 %i.bi, i1 %i.bf, i1 false
  br i1 %i.bj, label %.thread112, label %.thread

.thread111:                                       ; preds = %bb.l
  %i.bk = load i8, ptr %5, align 1, !tbaa !10, !range !8, !noundef !9
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.thread112, label %.thread

.thread112:                                       ; preds = %bb.m, %.thread111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bm, i8 0, i64 104, i1 false)
  %i.bn = tail call ptr @duckdb_je_arena_get_ehooks(ptr noundef nonnull %1) #6
  %.val = load i32, ptr %i.t, align 8, !tbaa !12
  %.not97 = icmp eq i64 %3, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ak, ptr %i.bo, align 8, !tbaa !68
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %3, ptr %i.bp, align 8, !tbaa !69
  %i.bq = and i32 %.val, -268431361
  %.masked.i87 = zext i32 %i.bq to i64
  %i.br = select i1 %.not97, i64 0, i64 4096
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 232, ptr %i.bs, align 8, !tbaa !70
  %.not.i88 = icmp eq i8 %i.ab, 0
  %i.bt = select i1 %.not.i88, i64 8192, i64 17592186052608
  %i.bu = or disjoint i64 %i.bt, %i.br
  %i.bv = or disjoint i64 %i.bu, %.masked.i87
  store i64 %i.bv, ptr %7, align 8, !tbaa !66
  %i.bw = call zeroext i1 @duckdb_je_extent_purge_forced_wrapper(ptr noundef %0, ptr noundef %i.bn, ptr noundef nonnull %7, i64 noundef 0, i64 noundef %3) #6
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread112
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %3, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread112
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %.thread

bb.p:                                             ; preds = %bb.i
  %i.bx = icmp eq ptr %i.az, inttoptr (i64 -1 to ptr)
  br i1 %i.bx, label %atomic_store_b.exit, label %bb.f

atomic_store_b.exit:                              ; preds = %bb.p
  store atomic i8 1, ptr @dss_exhausted.0 release, align 1
  br label %.thread93

.thread93:                                        ; preds = %bb.f, %atomic_store_p.exit.i, %atomic_store_b.exit, %atomic_load_b.exit
  store atomic i8 0, ptr @dss_extending release, align 1
  tail call void @duckdb_je_edata_cache_put(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  br label %.thread

.thread:                                          ; preds = %bb.m, %.thread111, %bb.o, %bb.b, %bb.a, %.thread93
  %.4 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %.thread93 ], [ %i.ak, %bb.m ], [ %i.ak, %bb.o ], [ %i.ak, %.thread111 ]
  ret ptr %.4
}

declare ptr @duckdb_je_edata_cache_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @duckdb_je_extent_sn_next(ptr noundef) local_unnamed_addr #3

declare ptr @duckdb_je_arena_get_ehooks(ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_extent_dalloc_gap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_edata_cache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @duckdb_je_pages_decommit(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare zeroext i1 @duckdb_je_extent_purge_forced_wrapper(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @duckdb_je_extent_in_dss(ptr noundef readnone captures(address) %0) local_unnamed_addr #0 {
atomic_load_p.exit:
  %i.a = load atomic ptr, ptr @dss_max.0 acquire, align 8
  %i.b = load ptr, ptr @dss_base, align 8, !tbaa !71
  %i.c = icmp uge ptr %0, %i.b
  %i.d = icmp ult ptr %0, %i.a
  %i.e = and i1 %i.d, %i.c
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @duckdb_je_extent_dss_mergeable(ptr noundef readnone captures(address) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @dss_base, align 8, !tbaa !71 ; 2 uses
  %i.b = icmp ult ptr %0, %i.a
  %i.c = icmp ult ptr %1, %i.a
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %atomic_load_p.exit

atomic_load_p.exit:                               ; preds = %bb.a
  %i.d = load atomic ptr, ptr @dss_max.0 acquire, align 8 ; 2 uses
  %i.e = load ptr, ptr @dss_base, align 8, !tbaa !71 ; 2 uses
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
define void @duckdb_je_extent_dss_boot() local_unnamed_addr #2 {
atomic_store_p.exit:
  %i.a = tail call ptr @sbrk(i64 noundef 0) #6    ; 3 uses
  store ptr %i.a, ptr @dss_base, align 8, !tbaa !71
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

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i64 2151056254}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!11, !11, i64 0}
!11 = !{!"_Bool", !5, i64 0}
!12 = !{!13, !4, i64 78952}
!13 = !{!"arena_s", !5, i64 0, !14, i64 8, !15, i64 16, !17, i64 24, !24, i64 10408, !26, i64 10416, !28, i64 10424, !14, i64 10536, !29, i64 10544, !28, i64 10552, !32, i64 10664, !4, i64 78952, !39, i64 78960, !19, i64 78968, !5, i64 78976, !5, i64 79040}
!14 = !{!"", !4, i64 0}
!15 = !{!"p1 _ZTS6tsdn_s", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"arena_stats_s", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !19, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !20, i64 104, !18, i64 184, !18, i64 192, !5, i64 200, !5, i64 968, !19, i64 10376}
!18 = !{!"long", !5, i64 0}
!19 = !{!"", !18, i64 0}
!20 = !{!"pa_shard_stats_s", !18, i64 0, !21, i64 8}
!21 = !{!"pac_stats_s", !22, i64 0, !22, i64 24, !18, i64 48, !19, i64 56, !19, i64 64}
!22 = !{!"pac_decay_stats_s", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"locked_u64_s", !19, i64 0}
!24 = !{!"", !25, i64 0}
!25 = !{!"p1 _ZTS13tcache_slow_s", !16, i64 0}
!26 = !{!"", !27, i64 0}
!27 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !16, i64 0}
!28 = !{!"malloc_mutex_s", !5, i64 0}
end_hunk_0
