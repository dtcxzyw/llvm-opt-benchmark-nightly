Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_string_builtin?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@lv_memmove:bb.a
  %.02639.unr = phi i64 [ %.02639.ph, %.lr.ph42.preheader ], [ %i.av, %.lr.ph42.prol ]
  %i.ax = icmp ult i64 %i.au, 7
  br i1 %i.ax, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %.pn41 = phi ptr [ %.024.7, %.lr.ph42 ], [ %.pn41.unr, %.lr.ph42.prol.loopexit ] ; 8 uses
  %.pn3240 = phi ptr [ %.025.7, %.lr.ph42 ], [ %.pn3240.unr, %.lr.ph42.prol.loopexit ] ; 8 uses
  %.02639 = phi i64 [ %i.bf, %.lr.ph42 ], [ %.02639.unr, %.lr.ph42.prol.loopexit ]
  %.025 = getelementptr inbounds i8, ptr %.pn3240, i64 -1
  %.024 = getelementptr inbounds i8, ptr %.pn41, i64 -1
  %i.ay = load i8, ptr %.024, align 1, !tbaa !10
  store i8 %i.ay, ptr %.025, align 1, !tbaa !10
  %.025.1 = getelementptr inbounds i8, ptr %.pn3240, i64 -2
  %.024.1 = getelementptr inbounds i8, ptr %.pn41, i64 -2
  %i.az = load i8, ptr %.024.1, align 1, !tbaa !10
  store i8 %i.az, ptr %.025.1, align 1, !tbaa !10
  %.025.2 = getelementptr inbounds i8, ptr %.pn3240, i64 -3
  %.024.2 = getelementptr inbounds i8, ptr %.pn41, i64 -3
  %i.ba = load i8, ptr %.024.2, align 1, !tbaa !10
  store i8 %i.ba, ptr %.025.2, align 1, !tbaa !10
  %.025.3 = getelementptr inbounds i8, ptr %.pn3240, i64 -4
  %.024.3 = getelementptr inbounds i8, ptr %.pn41, i64 -4
  %i.bb = load i8, ptr %.024.3, align 1, !tbaa !10
  store i8 %i.bb, ptr %.025.3, align 1, !tbaa !10
  %.025.4 = getelementptr inbounds i8, ptr %.pn3240, i64 -5
  %.024.4 = getelementptr inbounds i8, ptr %.pn41, i64 -5
  %i.bc = load i8, ptr %.024.4, align 1, !tbaa !10
  store i8 %i.bc, ptr %.025.4, align 1, !tbaa !10
  %.025.5 = getelementptr inbounds i8, ptr %.pn3240, i64 -6
  %.024.5 = getelementptr inbounds i8, ptr %.pn41, i64 -6
  %i.bd = load i8, ptr %.024.5, align 1, !tbaa !10
  store i8 %i.bd, ptr %.025.5, align 1, !tbaa !10
  %.025.6 = getelementptr inbounds i8, ptr %.pn3240, i64 -7
  %.024.6 = getelementptr inbounds i8, ptr %.pn41, i64 -7
  %i.be = load i8, ptr %.024.6, align 1, !tbaa !10
  store i8 %i.be, ptr %.025.6, align 1, !tbaa !10
  %.025.7 = getelementptr inbounds i8, ptr %.pn3240, i64 -8 ; 2 uses
  %.024.7 = getelementptr inbounds i8, ptr %.pn41, i64 -8 ; 2 uses
  %i.bf = add i64 %.02639, -8                     ; 2 uses
  %i.bg = load i8, ptr %.024.7, align 1, !tbaa !10
  store i8 %i.bg, ptr %.025.7, align 1, !tbaa !10
  %.not31.7 = icmp eq i64 %i.bf, 0
  br i1 %.not31.7, label %.loopexit, label %.lr.ph42, !llvm.loop !30

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.037 = phi ptr [ %i.cd, %.lr.ph ], [ %.037.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.02336 = phi ptr [ %i.cf, %.lr.ph ], [ %.02336.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.135 = phi i64 [ %i.cc, %.lr.ph ], [ %.135.unr, %.lr.ph.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.037, i64 1
  %i.bi = load i8, ptr %.037, align 1, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %.02336, i64 1
  store i8 %i.bi, ptr %.02336, align 1, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %.037, i64 2
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.02336, i64 2
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %.037, i64 3
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %.02336, i64 3
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %.037, i64 4
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.02336, i64 4
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %.037, i64 5
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.02336, i64 5
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %.037, i64 6
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %.02336, i64 6
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %.037, i64 7
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %.02336, i64 7
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !10
  %i.cc = add i64 %.135, -8                       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %i.ce = load i8, ptr %i.bz, align 1, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %.02336, i64 8
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !10
  %.not.7 = icmp eq i64 %i.cc, 0
  br i1 %.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph42.prol.loopexit, %.lr.ph42, %middle.block, %vec.epilog.middle.block, %middle.block78, %vec.epilog.middle.block95, %.preheader, %bb.e, %bb.c
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -255, 256) i32 @lv_memcmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, -1                           ; 4 uses
  %.not11 = icmp eq i64 %i.a, 0
  br i1 %.not11, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep18 = getelementptr i8, ptr %1, i64 %i.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.b = phi i64 [ %i.h, %bb.b ], [ %i.a, %.lr.ph.preheader ]
  %.013 = phi ptr [ %i.g, %bb.b ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.0812 = phi ptr [ %i.f, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.c = load i8, ptr %.0812, align 1, !tbaa !10
  %i.d = load i8, ptr %.013, align 1, !tbaa !10
  %i.e = icmp eq i8 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0812, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 1
  %i.h = add i64 %i.b, -1                         ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !36

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.08.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep, %bb.b ], [ %.0812, %.lr.ph ]
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep18, %bb.b ], [ %.013, %.lr.ph ]
  %i.i = load i8, ptr %.08.lcssa, align 1, !tbaa !10
  %i.j = sext i8 %i.i to i32
  %i.k = load i8, ptr %.0.lcssa, align 1, !tbaa !10
  %i.l = sext i8 %i.k to i32
  %i.m = sub nsw i32 %i.j, %i.l
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @lv_strlen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  ret i64 %strlen
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @lv_strnlen(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not8 = icmp eq i64 %1, 0
  br i1 %.not8, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.05
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.05, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.05, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @lv_strlcpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not20 = icmp eq i64 %i.a, 0
  br i1 %.not20, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.017 = phi i64 [ %i.e, %bb.b ], [ 0, %.preheader ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10    ; 2 uses
  %.not15 = icmp eq i8 %i.c, 0
  br i1 %.not15, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.c, ptr %i.d, align 1, !tbaa !10
  %i.e = add nuw i64 %.017, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.a, %bb.b ], [ %.017, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  store i8 0, ptr %i.f, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.a
  %.1 = phi i64 [ %.0.lcssa, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %1, i64 %.1
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep)
  %i.g = add i64 %strlen, %.1
  ret i64 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @lv_strncpy(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.014 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10    ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i8 %i.b, ptr %i.c, align 1, !tbaa !10
  %i.d = add nuw i64 %.014, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

.critedge:                                        ; preds = %.lr.ph
  %i.e = icmp ult i64 %.014, %2
  br i1 %i.e, label %.lr.ph18.preheader, label %._crit_edge

.lr.ph18.preheader:                               ; preds = %.critedge
  %scevgep = getelementptr i8, ptr %0, i64 %.014
  %i.f = sub nuw i64 %2, %.014
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.f, i1 false), !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a, %.lr.ph18.preheader, %.critedge
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @lv_strcpy(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.b ]   ; 2 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.b = load i8, ptr %.0, align 1, !tbaa !10     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.04, i64 1
  store i8 %i.b, ptr %.04, align 1, !tbaa !10
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %bb.b
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -255, 256) i32 @lv_strcmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10      ; 2 uses
  %.not9 = icmp eq i8 %i.a, 0
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.g, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %.011 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %.0710 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]
  %i.c = load i8, ptr %.011, align 1, !tbaa !10
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0710, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.011, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !10    ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !39

.critedge.loopexit:                               ; preds = %bb.b, %.lr.ph
  %.0.lcssa.ph = phi ptr [ %.011, %.lr.ph ], [ %i.f, %bb.b ]
  %.lcssa.ph = phi i8 [ %i.b, %.lr.ph ], [ 0, %bb.b ]
  %i.h = zext i8 %.lcssa.ph to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.0.lcssa.ph, %.critedge.loopexit ]
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %.critedge.loopexit ]
  %i.i = load i8, ptr %.0.lcssa, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = sub nsw i32 %.lcssa, %i.j
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -255, 256) i32 @lv_strncmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !10      ; 2 uses
  %.not18 = icmp eq i8 %i.b, 0
  br i1 %.not18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.c = phi i8 [ %i.j, %bb.c ], [ %i.b, %.preheader ] ; 2 uses
  %.021 = phi i64 [ %i.f, %bb.c ], [ %2, %.preheader ]
  %.01020 = phi ptr [ %i.i, %bb.c ], [ %1, %.preheader ] ; 3 uses
  %.01119 = phi ptr [ %i.h, %bb.c ], [ %0, %.preheader ]
  %i.d = load i8, ptr %.01020, align 1, !tbaa !10
  %i.e = icmp eq i8 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = add i64 %.021, -1                        ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.01119, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01020, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !10    ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !40

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.010.lcssa.ph = phi ptr [ %.01020, %.lr.ph ], [ %i.i, %bb.c ]
  %.lcssa.ph = phi i8 [ %i.c, %.lr.ph ], [ 0, %bb.c ]
  %i.k = zext i8 %.lcssa.ph to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.010.lcssa = phi ptr [ %1, %.preheader ], [ %.010.lcssa.ph, %.critedge.loopexit ]
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.k, %.critedge.loopexit ]
  %i.l = load i8, ptr %.010.lcssa, align 1, !tbaa !10
  %i.m = zext i8 %i.l to i32
  %i.n = sub nsw i32 %.lcssa, %i.m
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %.critedge
  %.012 = phi i32 [ %i.n, %.critedge ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define ptr @lv_strdup(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0)
  %i.a = add i64 %strlen.i, 1                     ; 2 uses
  %i.b = tail call ptr @lv_malloc(i64 noundef %i.a) #10 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @lv_memcpy(ptr noundef nonnull %i.b, ptr noundef nonnull %0, i64 noundef %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @lv_strndup(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not8.i = icmp eq i64 %1, 0
  br i1 %.not8.i, label %lv_strnlen.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.05.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.05.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %lv_strnlen.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add nuw i64 %.05.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %lv_strnlen.exit, label %.lr.ph.i, !llvm.loop !0

lv_strnlen.exit:                                  ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.05.i, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.d = add i64 %.0.lcssa.i, 1
  %i.e = tail call ptr @lv_malloc(i64 noundef %i.d) #10 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %lv_strnlen.exit
  %i.g = tail call ptr @lv_memcpy(ptr noundef nonnull %i.e, ptr noundef %0, i64 noundef %.0.lcssa.i) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.lcssa.i
  store i8 0, ptr %i.h, align 1, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %lv_strnlen.exit, %bb.c
  ret ptr %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @lv_strcat(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %strlen.i
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04.i = phi ptr [ %i.a, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.b, %bb.b ]  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.c = load i8, ptr %.0.i, align 1, !tbaa !10   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  store i8 %i.c, ptr %.04.i, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %lv_strcpy.exit, label %bb.b, !llvm.loop !1

lv_strcpy.exit:                                   ; preds = %bb.b
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @lv_strncat(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
.preheader:
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %scevgep = getelementptr i8, ptr %0, i64 %strlen ; 2 uses
  %.not1113 = icmp eq i64 %2, 0
  br i1 %.not1113, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.a
  %.016 = phi i64 [ %i.b, %bb.a ], [ %2, %.preheader ]
  %.0915 = phi ptr [ %i.c, %bb.a ], [ %1, %.preheader ] ; 2 uses
  %.114 = phi ptr [ %i.d, %bb.a ], [ %scevgep, %.preheader ] ; 3 uses
  %i.a = load i8, ptr %.0915, align 1, !tbaa !10  ; 2 uses
  %.not12 = icmp eq i8 %i.a, 0
  br i1 %.not12, label %.critedge, label %bb.a
end_hunk_0
