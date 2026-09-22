Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/str?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lexbor_str_crop_whitespace_from_begin:bb.a
  %exitcond.not = icmp eq i64 %i.f, %i.c
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph
  %.not30 = icmp eq i64 %.033, 0
  %.not31 = icmp eq i64 %.033, %i.c
  %or.cond = or i1 %.not30, %.not31
  br i1 %or.cond, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.033
  %i.h = sub i64 %i.c, %.033
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.g, i64 %i.h, i1 false)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.a, %bb.c, %._crit_edge
  %.0.lcssa43 = phi i64 [ %.033, %bb.c ], [ %.033, %._crit_edge ], [ 0, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.i = phi i64 [ %.pre, %bb.c ], [ %i.c, %._crit_edge ], [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.j = sub i64 %i.i, %.0.lcssa43
  store i64 %i.j, ptr %i.b, align 8, !tbaa !18
  ret i64 %.0.lcssa43
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @lexbor_str_whitespace_from_begin(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.019 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.019
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  switch i8 %i.e, label %._crit_edge [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 10, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = add nuw i64 %.019, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.019, %.lr.ph ], [ %i.c, %bb.b ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, -1) i64 @lexbor_str_whitespace_from_end(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %.not24 = icmp eq i64 %i.b, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.025 = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = add i64 %.025, -1                        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  switch i8 %i.f, label %bb.b [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.g = sub nuw i64 %i.b, %.025
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !30

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.016 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i64 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @lexbor_str_copy_to(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %1, i64 %2, i1 false)
  %i.e = load i64, ptr %i.b, align 8, !tbaa !18
  %i.f = add i64 %i.e, %2
  store i64 %i.f, ptr %i.b, align 8, !tbaa !18
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @lexbor_str_copy_to_with_null(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.e = load i64, ptr %i.b, align 8, !tbaa !18
  %i.f = add i64 %i.e, %2                         ; 2 uses
  store i64 %i.f, ptr %i.b, align 8, !tbaa !18
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !19
  ret ptr %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local ptr @lexbor_str_data_ncasecmp_first(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.018 = phi i64 [ %i.l, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19    ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.loopexit.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = zext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %.not = icmp eq i8 %i.f, %i.k
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %.018, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %2
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit.split.loop.exit, %._crit_edge
  %.013 = phi ptr [ %i.m, %._crit_edge ], [ %i.n, %.loopexit.loopexit.split.loop.exit ], [ null, %bb.b ]
  ret ptr %.013
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @lexbor_str_data_ncasecmp_end(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not8 = icmp eq i64 %2, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.09 = phi i64 [ %i.a, %bb.b ], [ %2, %bb.a ]
  %i.a = add i64 %.09, -1                         ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !19
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %.not7 = icmp eq i8 %i.f, %i.k
  br i1 %.not7, label %bb.b, label %._crit_edge11, !llvm.loop !32

._crit_edge11:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.b, %._crit_edge11, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %._crit_edge11 ], [ true, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @lexbor_str_data_ncasecmp_contain(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #9 {
.lr.ph:
  %.not17 = icmp ule i64 %3, %1                   ; 2 uses
  %4 = add i64 %3, -1
  %or.cond.not = icmp ult i64 %4, %1
  br i1 %or.cond.not, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %lexbor_str_data_ncasecmp.exit
  %.not19 = phi i1 [ true, %lexbor_str_data_ncasecmp.exit ], [ %.not17, %.lr.ph ]
  %.0918 = phi i64 [ %i.m, %lexbor_str_data_ncasecmp.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.0918
  br label %.lr.ph.i

bb.a:                                             ; preds = %.lr.ph.i
  %i.b = add nuw i64 %.0810.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %3
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.a
  %.0810.i = phi i64 [ %i.b, %bb.a ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0810.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.0810.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.g, %i.l
  br i1 %.not.i, label %bb.a, label %lexbor_str_data_ncasecmp.exit

lexbor_str_data_ncasecmp.exit:                    ; preds = %.lr.ph.i
  %i.m = add i64 %.0918, 1                        ; 2 uses
  %i.n = sub i64 %1, %i.m
  %.not.not = icmp ugt i64 %3, %i.n
  br i1 %.not.not, label %.loopexit, label %.lr.ph.i.preheader, !llvm.loop !33

.loopexit:                                        ; preds = %lexbor_str_data_ncasecmp.exit, %bb.a, %.lr.ph
  %.not16 = phi i1 [ %.not19, %bb.a ], [ %.not17, %.lr.ph ], [ false, %lexbor_str_data_ncasecmp.exit ]
  ret i1 %.not16
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @lexbor_str_data_ncasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0810 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.0810
  %i.c = load i8, ptr %i.b, align 1, !tbaa !19
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.0810
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %.not = icmp eq i8 %i.f, %i.k                   ; 2 uses
  %i.l = add nuw i64 %.0810, 1                    ; 2 uses
  %exitcond.not = icmp ne i64 %i.l, %2
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @lexbor_str_data_nlocmp_right(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0810 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.0810
  %i.c = load i8, ptr %i.b, align 1, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.0810
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %.not = icmp eq i8 %i.c, %i.h                   ; 2 uses
  %i.i = add nuw i64 %.0810, 1                    ; 2 uses
  %exitcond.not = icmp ne i64 %i.i, %2
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @lexbor_str_data_nupcmp_right(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0810 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.0810
  %i.c = load i8, ptr %i.b, align 1, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.0810
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_uppercase, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %.not = icmp eq i8 %i.c, %i.h                   ; 2 uses
  %i.i = add nuw i64 %.0810, 1                    ; 2 uses
  %exitcond.not = icmp ne i64 %i.i, %2
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i1 @lexbor_str_data_casecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19
  %i.e = load i8, ptr %1, align 1, !tbaa !19
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %.not9 = icmp eq i8 %i.d, %i.h                  ; 2 uses
  %i.i = icmp ne i8 %i.a, 0
  %or.cond.not10 = and i1 %i.i, %.not9
  br i1 %or.cond.not10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.k, %.lr.ph ], [ %1, %bb.a ]
  %.0611 = phi ptr [ %i.j, %.lr.ph ], [ %0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0611, i64 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.012, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.j, align 1, !tbaa !19    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19
  %i.p = load i8, ptr %i.k, align 1, !tbaa !19
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @lexbor_str_res_map_lowercase, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  %.not = icmp eq i8 %i.o, %i.s                   ; 2 uses
  %i.t = icmp ne i8 %i.l, 0
  %or.cond.not = and i1 %i.t, %.not
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ %.not9, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @lexbor_str_data_ncmp_end(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not8 = icmp eq i64 %2, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.09 = phi i64 [ %i.a, %bb.b ], [ %2, %bb.a ]
  %i.a = add i64 %.09, -1                         ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  %.not7 = icmp eq i8 %i.c, %i.e
  br i1 %.not7, label %bb.b, label %._crit_edge11, !llvm.loop !36

._crit_edge11:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.b, %._crit_edge11, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %._crit_edge11 ], [ true, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @lexbor_str_data_ncmp_contain(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #9 {
bb.a:
  %.not13.not = icmp ugt i64 %3, %1
  br i1 %.not13.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = add i64 %.0914, 1                        ; 2 uses
  %i.b = sub i64 %1, %i.a
  %.not.not = icmp ugt i64 %3, %i.b
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0914 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.0914
  %bcmp = tail call i32 @bcmp(ptr %i.c, ptr %2, i64 %3)
  %i.d = icmp eq i32 %bcmp, 0                     ; 3 uses
  br i1 %i.d, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ], [ %i.d, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @lexbor_str_data_ncmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #10 {
bb.a:
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %1, i64 %2)
  %i.a = icmp eq i32 %bcmp, 0
  ret i1 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i1 @lexbor_str_data_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !19
  %.not10 = icmp eq i8 %i.a, %i.b                 ; 2 uses
  %i.c = icmp ne i8 %i.a, 0
  %or.cond.not11 = and i1 %i.c, %.not10
  br i1 %or.cond.not11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi ptr [ %i.e, %.lr.ph ], [ %1, %bb.a ]
  %.0612 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0612, i64 1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.d, align 1, !tbaa !19    ; 2 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !19
end_hunk_0
