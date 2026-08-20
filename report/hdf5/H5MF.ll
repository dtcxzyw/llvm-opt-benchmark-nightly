inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.H5FS_section_class_t = type { i32, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.H5FS_create_t = type { i32, i32, i32, i32, i64 }
%struct.H5MF_sect_ud_t = type { ptr, i32, i8, i8, i32, ptr }
%struct.H5O_fsinfo_t = type { i32, i32, i8, i64, i64, i64, i64, [12 x i64], i8 }
%struct.H5MF_sect_iter_ud_t = type { ptr, i64, i64 }
%struct.H5FS_stat_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@H5MF_init_g = local_unnamed_addr global i8 0, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [37 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5MF.c\00", align 1
@H5E_RESOURCE_g = external local_unnamed_addr global i64, align 8
@H5E_BADVALUE_g = external local_unnamed_addr global i64, align 8
@H5MF_FSPACE_SECT_CLS_SIMPLE = external constant [1 x %struct.H5FS_section_class_t], align 16
@H5MF_FSPACE_SECT_CLS_SMALL = external constant [1 x %struct.H5FS_section_class_t], align 16
@H5MF_FSPACE_SECT_CLS_LARGE = external constant [1 x %struct.H5FS_section_class_t], align 16
@__func__.H5MF__open_fstype = private unnamed_addr constant [18 x i8] c"H5MF__open_fstype\00", align 1
@H5E_CANTINIT_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"can't initialize free space info\00", align 1
@__func__.H5MF__start_fstype = private unnamed_addr constant [19 x i8] c"H5MF__start_fstype\00", align 1
@H5E_CANTOPENOBJ_g = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"can't initialize file free space\00", align 1
@H5E_CANTCREATE_g = external local_unnamed_addr global i64, align 8
@__func__.H5MF__add_sect = private unnamed_addr constant [15 x i8] c"H5MF__add_sect\00", align 1
@H5E_CANTINSERT_g = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"can't re-add section to file free space\00", align 1
@__func__.H5MF__find_sect = private unnamed_addr constant [16 x i8] c"H5MF__find_sect\00", align 1
@H5E_CANTALLOC_g = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"error locating free space in file\00", align 1
@H5E_CANTRELEASE_g = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"can't free simple section node\00", align 1
@__func__.H5MF_alloc = private unnamed_addr constant [11 x i8] c"H5MF_alloc\00", align 1
@H5E_SYSTEM_g = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"attempt to notify cache that ring is unsettled failed\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"error locating a node\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"allocation failed from paged aggregation\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"allocation failed from aggr/vfd\00", align 1
@__func__.H5MF_alloc_tmp = private unnamed_addr constant [15 x i8] c"H5MF_alloc_tmp\00", align 1
@H5E_CANTGET_g = external local_unnamed_addr global i64, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"driver get_eoa request failed\00", align 1
@__func__.H5MF_xfree = private unnamed_addr constant [11 x i8] c"H5MF_xfree\00", align 1
@H5E_BADRANGE_g = external local_unnamed_addr global i64, align 8
@.str.12 = private unnamed_addr constant [40 x i8] c"attempting to free temporary file space\00", align 1
@H5E_CANTFREE_g = external local_unnamed_addr global i64, align 8
@.str.13 = private unnamed_addr constant [59 x i8] c"can't check free space intersection w/metadata accumulator\00", align 1
@H5E_CANTMERGE_g = external local_unnamed_addr global i64, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"can't check for absorbing block\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"can't initialize free space section\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"can't add section to file free space\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"can't merge section to file free space\00", align 1
@__func__.H5MF_try_extend = private unnamed_addr constant [16 x i8] c"H5MF_try_extend\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Unable to get eoa\00", align 1
@H5E_CANTEXTEND_g = external local_unnamed_addr global i64, align 8
@.str.19 = private unnamed_addr constant [21 x i8] c"error extending file\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"error extending aggregation block\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"error extending block in free space manager\00", align 1
@__func__.H5MF_try_shrink = private unnamed_addr constant [16 x i8] c"H5MF_try_shrink\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"can't check if section can shrink container\00", align 1
@H5E_CANTSHRINK_g = external local_unnamed_addr global i64, align 8
@.str.23 = private unnamed_addr constant [23 x i8] c"can't shrink container\00", align 1
@__func__.H5MF_close = private unnamed_addr constant [11 x i8] c"H5MF_close\00", align 1
@H5E_FILE_g = external local_unnamed_addr global i64, align 8
@.str.24 = private unnamed_addr constant [54 x i8] c"can't close free-space managers for 'page' file space\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"can't close free-space managers for 'aggr' file space\00", align 1
@__func__.H5MF_try_close = private unnamed_addr constant [15 x i8] c"H5MF_try_close\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"can't close the free space manager\00", align 1
@__func__.H5MF_get_freespace = private unnamed_addr constant [19 x i8] c"H5MF_get_freespace\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"can't query metadata aggregator stats\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"can't query small data aggregator stats\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"can't query free space stats\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"can't query free space metadata stats\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"can't close file free space\00", align 1
@__func__.H5MF_get_free_sections = private unnamed_addr constant [23 x i8] c"H5MF_get_free_sections\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"can't open the free space manager\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"can't get section info for the free space manager\00", align 1
@H5E_CANTCLOSEOBJ_g = external local_unnamed_addr global i64, align 8
@__func__.H5MF_settle_raw_data_fsm = private unnamed_addr constant [25 x i8] c"H5MF_settle_raw_data_fsm\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"can't free aggregators\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"can't initialize file free space manager\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"can't get free-space info\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"can't release free-space headers\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"error in removing message from superblock extension\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"can't shrink eoa\00", align 1
@H5E_WRITEERROR_g = external local_unnamed_addr global i64, align 8
@.str.40 = private unnamed_addr constant [56 x i8] c"error in writing fsinfo message to superblock extension\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"can't allocated free-space header\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"can't allocate free-space section info\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"can't close file free space manager\00", align 1
@__func__.H5MF_settle_meta_data_fsm = private unnamed_addr constant [26 x i8] c"H5MF_settle_meta_data_fsm\00", align 1
@H5E_FSPACE_g = external local_unnamed_addr global i64, align 8
@.str.44 = private unnamed_addr constant [79 x i8] c"small free space header block manager should not have had file space allocated\00", align 1
@.str.45 = private unnamed_addr constant [85 x i8] c"small free space serialized section manager should not have had file space allocated\00", align 1
@.str.46 = private unnamed_addr constant [79 x i8] c"large free space header block manager should not have had file space allocated\00", align 1
@.str.47 = private unnamed_addr constant [85 x i8] c"large free space serialized section manager should not have had file space allocated\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"can't vfd allocate sm hdr FSM file space\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"can't vfd allocate sm sinfo FSM file space\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"can't vfd allocate lg hdr FSM file space\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"can't vfd allocate lg sinfo FSM file space\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"unable to get file size\00", align 1
@__const.H5MF__create_fstype.classes = private unnamed_addr constant [3 x ptr] [ptr @H5MF_FSPACE_SECT_CLS_SIMPLE, ptr @H5MF_FSPACE_SECT_CLS_SMALL, ptr @H5MF_FSPACE_SECT_CLS_LARGE], align 16
@__func__.H5MF__create_fstype = private unnamed_addr constant [20 x i8] c"H5MF__create_fstype\00", align 1
@LogTable256 = internal unnamed_addr constant [256 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 16
@__func__.H5MF__alloc_pagefs = private unnamed_addr constant [19 x i8] c"H5MF__alloc_pagefs\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"can't allocate file space\00", align 1
@.str.54 = private unnamed_addr constant [48 x i8] c"can't add new page to Page Buffer new page list\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"can't allocate file space: unrecognized type\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"can't free section node\00", align 1
@__func__.H5MF__close_delete_fstype = private unnamed_addr constant [26 x i8] c"H5MF__close_delete_fstype\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"can't delete the free space manager\00", align 1
@__func__.H5MF__delete_fstype = private unnamed_addr constant [20 x i8] c"H5MF__delete_fstype\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"can't delete free space manager\00", align 1
@__func__.H5MF__close_aggrfs = private unnamed_addr constant [19 x i8] c"H5MF__close_aggrfs\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"error in writing message to superblock extension\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"can't close free space manager\00", align 1
@__func__.H5MF__close_pagefs = private unnamed_addr constant [19 x i8] c"H5MF__close_pagefs\00", align 1
@__func__.H5MF__close_fstype = private unnamed_addr constant [19 x i8] c"H5MF__close_fstype\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"can't release free space info\00", align 1
@__func__.H5MF__get_free_sects = private unnamed_addr constant [21 x i8] c"H5MF__get_free_sects\00", align 1
@H5E_BADITER_g = external local_unnamed_addr global i64, align 8
@.str.62 = private unnamed_addr constant [28 x i8] c"can't iterate over sections\00", align 1
@__func__.H5MF__close_shrink_eoa = private unnamed_addr constant [23 x i8] c"H5MF__close_shrink_eoa\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"can't check for shrinking eoa\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5MF_init_merge_flags(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5MF_init_g, align 1, !tbaa !8, !range !10, !noundef !11 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5MF_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.a to i1
  %i.g = xor i1 %i.d, true
  %i.h = select i1 %i.f, i1 true, i1 %i.g
  br i1 %i.h, label %bb.c, label %bb.m, !prof !13

bb.c:                                             ; preds = %bb.b, %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14   ; 2 uses
  %.not.1 = icmp eq i32 %i.l, %i.j
  br i1 %.not.1, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1876
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14
  %.not.2 = icmp eq i32 %i.n, %i.j
  br i1 %.not.2, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %.not.3 = icmp eq i32 %i.p, %i.j
  br i1 %.not.3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1884
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %.not.4 = icmp eq i32 %i.r, %i.j
  br i1 %.not.4, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %.not.5 = icmp eq i32 %i.t, %i.j
  br i1 %.not.5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1892
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14
  %.not.6 = icmp eq i32 %i.v, %i.j
  br i1 %.not.6, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.h
  %i.w = icmp eq i32 %i.j, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 2 uses
  br i1 %i.w, label %select.unfold.thread, label %bb.l

select.unfold.thread:                             ; preds = %.critedge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, i8 0, i64 28, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.y = phi i32 [ %i.l, %bb.c ], [ %i.j, %bb.h ], [ %i.j, %bb.g ], [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ %i.j, %bb.d ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14  ; 4 uses
  %i.ab = icmp eq i32 %i.aa, %i.y
  br i1 %i.ab, label %select.unfold, label %.preheader.1

.preheader.1:                                     ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1876
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %.not35.1 = icmp eq i32 %i.ad, %i.y
  br i1 %.not35.1, label %.preheader.4, label %select.unfold

.preheader.4:                                     ; preds = %.preheader.1
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %2 = load i32, ptr %1, align 4, !tbaa !14
  %.not35.4 = icmp eq i32 %2, %i.y
  br i1 %.not35.4, label %.preheader.5, label %select.unfold

.preheader.5:                                     ; preds = %.preheader.4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1892
  %4 = load i32, ptr %3, align 4, !tbaa !14
  %.not35.5 = icmp eq i32 %4, %i.y
  br i1 %.not35.5, label %bb.j, label %select.unfold

bb.j:                                             ; preds = %.preheader.5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1840
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 1, i64 28, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store i32 2, ptr %i.af, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i32 2, ptr %i.ag, align 8, !tbaa !14
  br label %bb.m

select.unfold:                                    ; preds = %.preheader.1, %.preheader.4, %.preheader.5, %bb.i
  %5 = phi i32 [ %i.y, %bb.i ], [ %i.aa, %.preheader.1 ], [ %i.aa, %.preheader.5 ], [ %i.aa, %.preheader.4 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1840
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ah, i8 0, i64 28, i1 false)
  switch i32 %5, label %bb.m [
    i32 3, label %bb.k
    i32 0, label %bb.k
  ]

bb.k:                                             ; preds = %select.unfold.thread, %select.unfold, %select.unfold
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store i32 2, ptr %i.ai, align 4, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i32 2, ptr %i.aj, align 8, !tbaa !14
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, i8 3, i64 28, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %select.unfold, %bb.k, %bb.l, %bb.j, %bb.b
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @H5MF__alloc_to_fs_type(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @H5MF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.k, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not27 = icmp ult i64 %2, %i.k
  br i1 %.not27, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call zeroext i1 @H5F_shared_has_feature(ptr noundef nonnull %0, i32 noundef 16384) #5
  br i1 %i.l, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14   ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %1, 6
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.p, 6
  br label %.sink.split

bb.i:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  %. = select i1 %i.x, i32 %1, i32 %i.w
  br label %.sink.split

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.z = sext i32 %1 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %.28 = select i1 %i.ac, i32 %1, i32 %i.ab
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.i, %bb.g, %bb.h, %bb.j
  %.28.sink = phi i32 [ %.28, %bb.j ], [ %., %bb.i ], [ %i.s, %bb.h ], [ %i.r, %bb.g ], [ 7, %bb.e ]
  store i32 %.28.sink, ptr %3, align 4, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  ret void
}

declare zeroext i1 @H5F_shared_has_feature(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5MF__open_fstype(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.H5MF__create_fstype.classes, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 0, ptr %i.b, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 -1, ptr %i.c, align 8, !tbaa !41
  call void @H5AC_tag(i64 noundef 4, ptr noundef nonnull %i.c) #5
  %i.d = load i8, ptr @H5MF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %bb.k, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1512
  %i.m = load i32, ptr %i.l, align 8, !tbaa !15
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1976
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %1, 7
  %spec.select = select i1 %i.q, i64 %i.p, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1416
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 1408
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.025 = phi i64 [ %spec.select, %bb.d ], [ %i.s, %bb.e ]
  %.024 = phi i64 [ 1, %bb.d ], [ %i.u, %bb.e ]
  %i.v = call fastcc zeroext i1 @H5MF__fsm_type_is_self_referential(ptr noundef nonnull %i.k, i32 noundef %1)
  %. = select i1 %i.v, i32 3, i32 2
  call void @H5AC_set_ring(i32 noundef %., ptr noundef nonnull %i.b) #5
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1608
  %i.y = zext i32 %1 to i64                       ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !41
  %i.ab = call ptr @H5FS_open(ptr noundef nonnull %0, i64 noundef %i.aa, i16 noundef zeroext 3, ptr noundef nonnull %i.a, ptr noundef nonnull %0, i64 noundef %.025, i64 noundef %.024) #5 ; 2 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1712
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.y
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !49
  %i.af = icmp eq ptr %i.ab, null
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !41
  %i.ah = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !41
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5MF__open_fstype, i32 noundef 337, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1556
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.y
  store i32 1, ptr %i.ak, align 4, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ -1, %bb.g ], [ 0, %bb.h ]       ; 2 uses
  %i.al = load i32, ptr %i.b, align 4, !tbaa !14  ; 2 uses
  %.not29 = icmp eq i32 %i.al, 0
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @H5AC_set_ring(i32 noundef %i.al, ptr noundef null) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.a
  %.1 = phi i32 [ %.0, %bb.j ], [ %.0, %bb.i ], [ 0, %bb.a ]
  %i.am = load i64, ptr %i.c, align 8, !tbaa !41
  call void @H5AC_tag(i64 noundef %i.am, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
end_hunk_0
