inline.NumInlined: 199
inline.NumDeleted: 47
begin_hunk_0_@fill_lines:bb.a
  %i.b = alloca i64, align 8                      ; 6 uses
  %18 = alloca %struct.Dl_info, align 8           ; 5 uses
  %19 = alloca %struct.DebugInfoReader, align 8   ; 38 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !11     ; 15 uses
  %i.d = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @binary_filename, i32 noundef 0) #16 ; 7 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.loopexit368, label %bb.b
end_hunk_0
begin_hunk_1_@fill_lines:bb.a
  %i.ak = getelementptr i8, ptr %i.n, i64 60      ; 2 uses
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !58 ; 2 uses
  %.not482 = icmp eq i16 %i.al, 0
  br i1 %.not482, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread329
  %i.am = phi i16 [ %i.ca, %.thread329 ], [ %i.al, %bb.g ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread329 ], [ 0, %bb.g ] ; 2 uses
  %.0208465 = phi ptr [ %.2210342, %.thread329 ], [ null, %bb.g ] ; 9 uses
  %.0211464 = phi ptr [ %.2213341, %.thread329 ], [ null, %bb.g ] ; 10 uses
  %.0214463 = phi ptr [ %.2216340, %.thread329 ], [ null, %bb.g ] ; 9 uses
  %.0217462 = phi ptr [ %.2219339, %.thread329 ], [ null, %bb.g ] ; 9 uses
  %.0221461 = phi ptr [ %.2223338, %.thread329 ], [ null, %bb.g ] ; 9 uses
  %.0224460 = phi ptr [ %.2226337, %.thread329 ], [ null, %bb.g ] ; 10 uses
  %i.an = getelementptr [64 x i8], ptr %i.ac, i64 %indvars.iv ; 11 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !59
  %i.ap = zext i32 %i.ao to i64
end_hunk_1
begin_hunk_2_@fill_lines:bb.a
  br i1 %.not254.8, label %bb.o, label %.thread329

bb.o:                                             ; preds = %.preheader367.8, %.preheader367.7, %.preheader367.6, %.preheader367.5, %.preheader367.4, %.preheader367.3, %.preheader367.2, %.preheader367.1, %.preheader367.preheader
  %.pn = phi i64 [ 48, %.preheader367.preheader ], [ 72, %.preheader367.1 ], [ 96, %.preheader367.2 ], [ 120, %.preheader367.3 ], [ 144, %.preheader367.4 ], [ 168, %.preheader367.5 ], [ 192, %.preheader367.6 ], [ 216, %.preheader367.7 ], [ 240, %.preheader367.8 ]
  %.lcssa556 = getelementptr i8, ptr %i.c, i64 %.pn ; 7 uses
  %i.bg = getelementptr i8, ptr %i.an, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !56
  %i.bi = getelementptr i8, ptr %i.n, i64 %i.bh   ; 4 uses
end_hunk_2
