Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dnone?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.H5D_chunk_rec_t = type { [33 x i64], i64, i32, i64 }

@H5D_COPS_NONE = local_unnamed_addr constant [1 x { i8, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }] [{ i8, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 0, [7 x i8] zeroinitializer, ptr null, ptr @H5D__none_idx_create, ptr @H5D__none_idx_open, ptr @H5D__none_idx_close, ptr @H5D__none_idx_is_open, ptr @H5D__none_idx_is_space_alloc, ptr null, ptr @H5D__none_idx_get_addr, ptr @H5D__none_idx_load_metadata, ptr null, ptr @H5D__none_idx_iterate, ptr @H5D__none_idx_remove, ptr @H5D__none_idx_delete, ptr @H5D__none_idx_copy_setup, ptr null, ptr @H5D__none_idx_size, ptr @H5D__none_idx_reset, ptr @H5D__none_idx_dump, ptr null }], align 16
@H5D_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [40 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5Dnone.c\00", align 1
@__func__.H5D__none_idx_create = private unnamed_addr constant [21 x i8] c"H5D__none_idx_create\00", align 1
@H5E_DATASET_g = external local_unnamed_addr global i64, align 8
@H5E_CANTALLOC_g = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"file allocation failed\00", align 1
@__func__.H5D__none_idx_iterate = private unnamed_addr constant [22 x i8] c"H5D__none_idx_iterate\00", align 1
@H5E_CALLBACK_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"failure in generic chunk iterator callback\00", align 1
@__func__.H5D__none_idx_delete = private unnamed_addr constant [21 x i8] c"H5D__none_idx_delete\00", align 1
@H5E_CANTFREE_g = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to free dataset chunks\00", align 1
@__func__.H5D__none_idx_copy_setup = private unnamed_addr constant [25 x i8] c"H5D__none_idx_copy_setup\00", align 1
@H5E_CANTINIT_g = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"unable to initialize chunked storage\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"    Address: %lu\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__none_idx_create(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = mul i64 %i.l, %i.j
  %i.n = load ptr, ptr %0, align 8, !tbaa !20
  %i.o = tail call i64 @H5MF_alloc(ptr noundef %i.n, i32 noundef 3, i64 noundef %i.m) #9 ; 2 uses
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !21
  %i.q = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !21
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__none_idx_create, i32 noundef 141, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.1) #9 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2208
  store i64 %i.o, ptr %i.t, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5D__none_idx_open(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5D__none_idx_close(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5D__none_idx_is_open(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i1 @H5D__none_idx_is_space_alloc(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5D__none_idx_get_addr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !19
  %i.k = add i32 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1120
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.o = tail call i64 @H5VM_array_offset_pre(i32 noundef %i.k, ptr noundef nonnull %i.l, ptr noundef %i.n) #9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.o, ptr %i.p, align 8, !tbaa !33
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2208
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 304 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %i.v = mul i64 %i.u, %i.o
  %i.w = add i64 %i.v, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.w, ptr %i.x, align 8, !tbaa !34
  %i.y = load i64, ptr %i.t, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.aa, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5D__none_idx_load_metadata(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, -2147483648) i32 @H5D__none_idx_iterate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.H5D_chunk_rec_t, align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %3, i8 0, i64 288, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 264
  store i64 %i.j, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19
  %.fr = freeze i32 %i.m                          ; 2 uses
  %i.n = add i32 %.fr, -1                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  %i.r = add i32 %.fr, -2                         ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %.lr.ph30.split.us.preheader, label %.lr.ph30.split

.lr.ph30.split.us.preheader:                      ; preds = %.lr.ph30
  %4 = zext nneg i32 %i.r to i64
  br label %.lr.ph30.split.us

.lr.ph30.split.us:                                ; preds = %.lr.ph30.split.us.preheader, %._crit_edge.us
  %i.t = phi ptr [ %i.af, %._crit_edge.us ], [ %i.h, %.lr.ph30.split.us.preheader ]
  %.02328.us = phi i32 [ %i.an, %._crit_edge.us ], [ 0, %.lr.ph30.split.us.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1120
  %i.v = call i64 @H5VM_array_offset_pre(i32 noundef %i.n, ptr noundef nonnull %i.u, ptr noundef nonnull %3) #9
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2208
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 304
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ab = mul i64 %i.aa, %i.v
  %i.ac = add i64 %i.ab, %i.y
  store i64 %i.ac, ptr %i.q, align 8, !tbaa !39
  %i.ad = call i32 %1(ptr noundef nonnull %3, ptr noundef %2) #9 ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.split.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph30.split.us
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !13  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 328
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv = phi i64 [ %4, %.lr.ph.us ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !19
  %.not.us = icmp ult i64 %i.aj, %i.al
  br i1 %.not.us, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.ah, align 8, !tbaa !21
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.am = icmp sgt i64 %indvars.iv, 0
  br i1 %i.am, label %bb.c, label %._crit_edge.us, !llvm.loop !40

._crit_edge.us:                                   ; preds = %bb.c, %bb.d
  %i.an = add i32 %.02328.us, 1                   ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 312
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !19
  %i.ar = icmp ugt i64 %i.aq, %i.ao
  %i.as = icmp eq i32 %i.ad, 0
  %i.at = and i1 %i.as, %i.ar
  br i1 %i.at, label %.lr.ph30.split.us, label %.loopexit, !llvm.loop !42

.lr.ph30.split:                                   ; preds = %.lr.ph30, %bb.e
  %i.au = phi ptr [ %i.bl, %bb.e ], [ %i.h, %.lr.ph30 ]
  %.02328 = phi i32 [ %i.bj, %bb.e ], [ 0, %.lr.ph30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1120
  %i.aw = call i64 @H5VM_array_offset_pre(i32 noundef %i.n, ptr noundef nonnull %i.av, ptr noundef nonnull %3) #9
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2208
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 304
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !19
  %i.bc = mul i64 %i.bb, %i.aw
  %i.bd = add i64 %i.bc, %i.az
  store i64 %i.bd, ptr %i.q, align 8, !tbaa !39
  %i.be = call i32 %1(ptr noundef nonnull %3, ptr noundef %2) #9 ; 3 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.split.us, label %bb.e

.split.us:                                        ; preds = %.lr.ph30.split, %.lr.ph30.split.us
  %i.bg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !21
  %i.bh = load i64, ptr @H5E_CALLBACK_g, align 8, !tbaa !21
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__none_idx_iterate, i32 noundef 343, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph30.split
  %i.bj = add i32 %.02328, 1                      ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 312
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.bo = icmp ugt i64 %i.bn, %i.bk
  %i.bp = icmp eq i32 %i.be, 0
  %i.bq = and i1 %i.bp, %i.bo
  br i1 %i.bq, label %.lr.ph30.split, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %bb.e, %._crit_edge.us, %bb.b, %.split.us, %bb.a
  %.1 = phi i32 [ -1, %.split.us ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ad, %._crit_edge.us ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5D__none_idx_remove(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__none_idx_delete(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = mul i64 %i.l, %i.j
  %i.n = load ptr, ptr %0, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 2208
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %i.q = tail call i32 @H5MF_xfree(ptr noundef %i.n, i32 noundef 3, i64 noundef %i.p, i64 noundef %i.m) #9
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !21
  %i.t = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !21
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__none_idx_delete, i32 noundef 419, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2208
  store i64 -1, ptr %i.w, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__none_idx_copy_setup(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.h, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 -1, ptr %i.a, align 8, !tbaa !21
  call void @H5AC_tag(i64 noundef 2, ptr noundef nonnull %i.a) #9
  %i.h = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = xor i1 %i.k, true
  %i.m = select i1 %i.i, i1 true, i1 %i.l
  br i1 %i.m, label %bb.c, label %bb.f, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  %i.t = mul i64 %i.s, %i.q
  %i.u = load ptr, ptr %1, align 8, !tbaa !20
  %i.v = call i64 @H5MF_alloc(ptr noundef %i.u, i32 noundef 3, i64 noundef %i.t) #9 ; 2 uses
  %.not.i = icmp eq i64 %i.v, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2208
  store i64 %i.v, ptr %i.x, align 8, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !21
  %i.z = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !21
  %i.aa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__none_idx_create, i32 noundef 141, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.1) #9 ; 0 uses
  %i.ab = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !21
  %i.ac = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !21
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__none_idx_copy_setup, i32 noundef 463, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.4) #9 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !21
  call void @H5AC_tag(i64 noundef %i.ae, ptr noundef null) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.04 = phi i32 [ -1, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i32 [ 0, %bb.a ], [ %.04, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5D__none_idx_size(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5D__none_idx_reset(ptr nofree noundef writeonly captures(none) %0, i1 noundef zeroext %1) #2 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  %or.cond = and i1 %1, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
end_hunk_0
