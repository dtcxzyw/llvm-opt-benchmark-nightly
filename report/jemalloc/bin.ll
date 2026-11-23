Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/bin?download=true
inline.NumInlined: 55
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bin_info_s = type { i64, i64, i32, i32, %struct.bitmap_info_s }
%struct.bitmap_info_s = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@je_bin_infos = external local_unnamed_addr global [36 x %struct.bin_info_s], align 16
@je_arena_bin_offsets = external local_unnamed_addr global [36 x i32], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden noundef zeroext i1 @je_bin_update_shard_size(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %3, -65
  %or.cond = icmp ult i64 %i.a, -64               ; 2 uses
  %i.b = icmp ugt i64 %1, 14336
  %or.cond17 = or i1 %i.b, %or.cond
  br i1 %or.cond17, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %2, i64 14336) ; 2 uses
  %i.c = icmp samesign ult i64 %1, 9
  br i1 %i.c, label %sz_size2index_compute.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw nsw i64 %1, 1
  %i.e = add nsw i64 %i.d, -1
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.e, i1 true)
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = xor i32 %i.g, 63                         ; 2 uses
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.h, i32 6)
  %i.j = shl nuw nsw i32 %i.i, 2
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.h, i32 7)
  %i.l = add nsw i32 %i.k, -3
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %4 = shl nsw i64 -1, %i.m
  %i.n = add nsw i64 %1, -1
  %5 = and i64 %4, %i.n
  %i.o = lshr i64 %5, %i.m
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  %i.r = or disjoint i32 %i.j, 1
  %i.s = add nuw nsw i32 %i.r, %i.q
  br label %sz_size2index_compute.exit

sz_size2index_compute.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.t = icmp ult i64 %2, 9
  br i1 %i.t, label %sz_size2index_compute.exit19, label %bb.d

bb.d:                                             ; preds = %sz_size2index_compute.exit
  %i.u = shl nuw nsw i64 %spec.store.select, 1
  %i.v = add nsw i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.v, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = xor i32 %i.x, 63                         ; 2 uses
  %i.z = tail call i32 @llvm.usub.sat.i32(i32 %i.y, i32 6)
  %i.aa = shl nuw nsw i32 %i.z, 2
  %i.ab = tail call i32 @llvm.umax.i32(i32 %i.y, i32 7)
  %i.ac = add nsw i32 %i.ab, -3
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %6 = shl nsw i64 -1, %i.ad
  %i.ae = add nsw i64 %spec.store.select, -1
  %7 = and i64 %6, %i.ae
  %i.af = lshr i64 %7, %i.ad
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = and i32 %i.ag, 3
  %i.ai = or disjoint i32 %i.aa, 1
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  br label %sz_size2index_compute.exit19

sz_size2index_compute.exit19:                     ; preds = %sz_size2index_compute.exit, %bb.d
  %.0.i.i18 = phi i32 [ %i.aj, %bb.d ], [ 0, %sz_size2index_compute.exit ] ; 3 uses
  %.not20 = icmp samesign ugt i32 %.0.i.i, %.0.i.i18
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %sz_size2index_compute.exit19
  %i.ak = trunc nuw nsw i64 %3 to i32             ; 2 uses
  %i.al = add i32 %.0.i.i18, 1
  %i.am = sub i32 %i.al, %.0.i.i                  ; 3 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i32 %i.am, -8                      ; 3 uses
  %i.an = add i32 %.0.i.i, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add nuw i32 %.0.i.i, %index
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aq, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat, ptr %i.ar, align 4, !tbaa !13
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.as = icmp eq i32 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.am, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.021.ph = phi i32 [ %.0.i.i, %.lr.ph ], [ %i.an, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.021 = phi i32 [ %i.av, %scalar.ph ], [ %.021.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = zext nneg i32 %.021 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  store i32 %i.ak, ptr %i.au, align 4, !tbaa !13
  %i.av = add nuw nsw i32 %.021, 1
  %.not.not = icmp ult i32 %.021, %.0.i.i18
  br i1 %.not.not, label %scalar.ph, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %sz_size2index_compute.exit19, %bb.a
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_bin_shard_sizes_boot(ptr nofree noundef writeonly captures(none) initializes((0, 144)) %0) local_unnamed_addr #1 {
bb.a:
  store <4 x i32> splat (i32 1), ptr %0, align 4, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> splat (i32 1), ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> splat (i32 1), ptr %i.b, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> splat (i32 1), ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> splat (i32 1), ptr %i.d, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> splat (i32 1), ptr %i.e, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> splat (i32 1), ptr %i.f, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> splat (i32 1), ptr %i.g, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i32> splat (i32 1), ptr %i.h, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_bin_init(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 4096, i32 noundef 0) #14 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @je_edata_heap_new(ptr noundef nonnull %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i8 0, i64 80, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @je_edata_heap_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden void @je_bin_prefork(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @je_malloc_mutex_prefork(ptr noundef %0, ptr noundef %1) #14
  ret void
}

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_bin_postfork_parent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef %1) #14
  ret void
}

declare void @je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_bin_postfork_child(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef %1) #14
  ret void
}

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden ptr @je_bin_slab_reg_alloc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.0101.i = load i64, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %i.b = icmp eq i64 %.0101.i, 0
  br i1 %i.b, label %.lr.ph.i, label %bitmap_sfu.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02.i = phi i32 [ %i.c, %.lr.ph.i ], [ 0, %bb.a ]
  %i.c = add i32 %.02.i, 1                        ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %.010.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 2 uses
  %i.f = icmp eq i64 %.010.i, 0
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.g = shl i32 %i.c, 6
  %i.h = zext i32 %i.g to i64
  br label %bitmap_sfu.exit

bitmap_sfu.exit:                                  ; preds = %bb.a, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ] ; 2 uses
  %.010.lcssa.i = phi i64 [ %.0101.i, %bb.a ], [ %.010.i, %._crit_edge.loopexit.i ]
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.010.lcssa.i, i1 true) ; 2 uses
  %i.j = add nuw nsw i64 %i.i, %.0.lcssa.i
  %i.k = lshr exact i64 %.0.lcssa.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = shl nuw i64 1, %i.i
  %i.o = xor i64 %i.n, %i.m
  store i64 %i.o, ptr %i.l, align 8, !tbaa !27
  %i.p = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.q = load i64, ptr %1, align 8, !tbaa !33
  %i.r = mul i64 %i.q, %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  %i.t = load i64, ptr %0, align 8, !tbaa !34
  %i.u = add i64 %i.t, -268435456
  store i64 %i.u, ptr %0, align 8, !tbaa !34
  ret ptr %i.s
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @je_bin_slab_reg_alloc_batch(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.not54 = icmp eq i32 %2, 0
  br i1 %.not54, label %._crit_edge53, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr i8, ptr %0, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge47
  %.052 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge47 ] ; 2 uses
  %.02951 = phi i32 [ 0, %.preheader.lr.ph ], [ %.lcssa72, %._crit_edge47 ] ; 5 uses
  %.03750 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %.lcssa73, %._crit_edge47 ] ; 2 uses
  %i.d = icmp eq i64 %.03750, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
end_hunk_0
