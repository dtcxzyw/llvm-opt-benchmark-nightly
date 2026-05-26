inline.NumInlined: 37
inline.NumDeleted: 22
begin_hunk_0_@_Py_bytes_isspace:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.g = icmp ult ptr %0, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.01013, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01013 = phi ptr [ %i.h, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.i = load i8, ptr %.01013, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = and i32 %i.l, 8
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ @_Py_FalseStruct, %bb.a ], [ @_Py_TrueStruct, %bb.b ], [ @_Py_TrueStruct, %bb.c ], [ @_Py_FalseStruct, %.lr.ph ], [ @_Py_TrueStruct, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_Py_bytes_isalpha(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = and i32 %i.d, 3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.g = icmp ult ptr %0, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.01013, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !14

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01013 = phi ptr [ %i.h, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.i = load i8, ptr %.01013, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = and i32 %i.l, 3
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ @_Py_FalseStruct, %bb.a ], [ @_Py_TrueStruct, %bb.b ], [ @_Py_TrueStruct, %bb.c ], [ @_Py_FalseStruct, %.lr.ph ], [ @_Py_TrueStruct, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_Py_bytes_isalnum(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = and i32 %i.d, 7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.g = icmp ult ptr %0, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.01013, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01013 = phi ptr [ %i.h, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.i = load i8, ptr %.01013, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = and i32 %i.l, 7
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ @_Py_FalseStruct, %bb.a ], [ @_Py_TrueStruct, %bb.b ], [ @_Py_TrueStruct, %bb.c ], [ @_Py_FalseStruct, %.lr.ph ], [ @_Py_TrueStruct, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_Py_bytes_isdigit(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = and i32 %i.d, 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.g = icmp ult ptr %0, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.01013, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !16

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01013 = phi ptr [ %i.h, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.i = load i8, ptr %.01013, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = and i32 %i.l, 4
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ @_Py_FalseStruct, %bb.a ], [ @_Py_TrueStruct, %bb.b ], [ @_Py_TrueStruct, %bb.c ], [ @_Py_FalseStruct, %.lr.ph ], [ @_Py_TrueStruct, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_islower(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = and i32 %i.d, 1
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.g = icmp ult ptr %0, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit.sink.split

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.020 = phi i32 [ %.1, %bb.d ], [ 0, %bb.c ]
  %.01419 = phi ptr [ %i.m, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.h = load i8, ptr %.01419, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7    ; 2 uses
  %i.l = and i32 %i.k, 2
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %.not16 = icmp eq i32 %.020, 0
  %spec.select = and i32 %i.k, 1
  %.1 = select i1 %.not16, i32 %spec.select, i32 1 ; 2 uses
  %i.m = getelementptr i8, ptr %.01419, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.m, %i.f
  br i1 %exitcond.not, label %.loopexit.sink.split, label %.lr.ph, !llvm.loop !17

.loopexit.sink.split:                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.lcssa.sink.shrunk = phi i32 [ %i.e, %bb.b ], [ 0, %bb.c ], [ %.1, %bb.d ]
  %.0.lcssa.sink = zext i32 %.0.lcssa.sink.shrunk to i64
  %i.n = tail call ptr @PyBool_FromLong(i64 noundef %.0.lcssa.sink) #14
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %bb.a
  %.013 = phi ptr [ @_Py_FalseStruct, %bb.a ], [ %i.n, %.loopexit.sink.split ], [ @_Py_FalseStruct, %.lr.ph ]
  ret ptr %.013
}

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_isupper(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = and i32 %i.d, 2
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.g = icmp ult ptr %0, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit.sink.split

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.020 = phi i32 [ %.1, %bb.d ], [ 0, %bb.c ]
  %.01419 = phi ptr [ %i.n, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.h = load i8, ptr %.01419, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7    ; 2 uses
  %i.l = and i32 %i.k, 1
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %.not16 = icmp eq i32 %.020, 0
  %i.m = lshr exact i32 %i.k, 1
  %.lobit = and i32 %i.m, 1
  %.1 = select i1 %.not16, i32 %.lobit, i32 1     ; 2 uses
  %i.n = getelementptr i8, ptr %.01419, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.n, %i.f
  br i1 %exitcond.not, label %.loopexit.sink.split, label %.lr.ph, !llvm.loop !18

.loopexit.sink.split:                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.lcssa.sink.shrunk = phi i32 [ %i.e, %bb.b ], [ 0, %bb.c ], [ %.1, %bb.d ]
  %.0.lcssa.sink = zext i32 %.0.lcssa.sink.shrunk to i64
  %i.o = tail call ptr @PyBool_FromLong(i64 noundef %.0.lcssa.sink) #14
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %bb.a
  %.013 = phi ptr [ @_Py_FalseStruct, %bb.a ], [ %i.o, %.loopexit.sink.split ], [ @_Py_FalseStruct, %.lr.ph ]
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_istitle(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = and i32 %i.d, 2
  %.not28 = icmp eq i32 %i.e, 0
  %_Py_FalseStruct._Py_TrueStruct = select i1 %.not28, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.g = icmp ult ptr %0, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %.01732 = phi i32 [ %.118, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.02031 = phi i32 [ %.121, %bb.g ], [ 0, %bb.c ]
  %.02330 = phi ptr [ %i.n, %bb.g ], [ %0, %bb.c ] ; 2 uses
  %i.h = load i8, ptr %.02330, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7    ; 2 uses
  %i.l = and i32 %i.k, 2
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.not27 = icmp eq i32 %.01732, 0
  br i1 %.not27, label %bb.g, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.m = and i32 %i.k, 1
  %.not25 = icmp eq i32 %i.m, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not26 = icmp eq i32 %.01732, 0
  br i1 %.not26, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.121 = phi i32 [ 1, %bb.f ], [ 1, %bb.d ], [ %.02031, %bb.e ] ; 2 uses
  %.118 = phi i32 [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.e ]
  %i.n = getelementptr i8, ptr %.02330, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.n, %i.f
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.o = zext nneg i32 %.121 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.020.lcssa = phi i64 [ 0, %bb.c ], [ %i.o, %._crit_edge.loopexit ]
  %i.p = tail call ptr @PyBool_FromLong(i64 noundef %.020.lcssa) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.a, %bb.b, %._crit_edge
  %.2 = phi ptr [ %_Py_FalseStruct._Py_TrueStruct, %bb.b ], [ %i.p, %._crit_edge ], [ @_Py_FalseStruct, %bb.a ], [ @_Py_FalseStruct, %bb.f ], [ @_Py_FalseStruct, %bb.d ]
  ret ptr %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_bytes_lower(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.b = icmp ult i64 %2, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 9223372036854775804
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = getelementptr i8, ptr %1, i64 %.06
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %0, i64 %.06
  store i8 %i.g, ptr %i.h, align 1, !tbaa !11
  %i.i = or disjoint i64 %.06, 1                  ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = getelementptr i8, ptr %0, i64 %i.i
  store i8 %i.n, ptr %i.o, align 1, !tbaa !11
  %i.p = or disjoint i64 %.06, 2                  ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = getelementptr i8, ptr %0, i64 %i.p
  store i8 %i.u, ptr %i.v, align 1, !tbaa !11
  %i.w = or disjoint i64 %.06, 3                  ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = getelementptr i8, ptr %0, i64 %i.w
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !11
  %i.ad = add nuw nsw i64 %.06, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !20

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.06.epil = phi i64 [ %i.ak, %.lr.ph.epil ], [ %.06.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ae = getelementptr i8, ptr %1, i64 %.06.epil
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = getelementptr i8, ptr %0, i64 %.06.epil
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !11
  %i.ak = add nuw nsw i64 %.06.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !21

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_bytes_upper(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.b = icmp ult i64 %2, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 9223372036854775804
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = getelementptr i8, ptr %1, i64 %.06
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr @_Py_ctype_toupper, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %0, i64 %.06
  store i8 %i.g, ptr %i.h, align 1, !tbaa !11
  %i.i = or disjoint i64 %.06, 1                  ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr @_Py_ctype_toupper, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = getelementptr i8, ptr %0, i64 %i.i
  store i8 %i.n, ptr %i.o, align 1, !tbaa !11
  %i.p = or disjoint i64 %.06, 2                  ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr @_Py_ctype_toupper, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = getelementptr i8, ptr %0, i64 %i.p
  store i8 %i.u, ptr %i.v, align 1, !tbaa !11
  %i.w = or disjoint i64 %.06, 3                  ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr i8, ptr @_Py_ctype_toupper, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = getelementptr i8, ptr %0, i64 %i.w
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !11
  %i.ad = add nuw nsw i64 %.06, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !23

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.06.epil = phi i64 [ %i.ak, %.lr.ph.epil ], [ %.06.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ae = getelementptr i8, ptr %1, i64 %.06.epil
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr i8, ptr @_Py_ctype_toupper, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = getelementptr i8, ptr %0, i64 %.06.epil
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !11
  %i.ak = add nuw nsw i64 %.06.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !24

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_bytes_title(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.01122 = phi i32 [ %.112, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %.01321 = phi i64 [ %i.l, %bb.e ], [ 0, %bb.a ]
  %.01420 = phi ptr [ %i.k, %bb.e ], [ %0, %bb.a ] ; 2 uses
  %.01519 = phi ptr [ %i.b, %bb.e ], [ %1, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.01519, i64 1
  %i.c = load i8, ptr %.01519, align 1, !tbaa !11 ; 4 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7    ; 2 uses
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not18 = icmp eq i32 %.01122, 0
  br i1 %.not18, label %.sink.split, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.h = and i32 %i.f, 2
  %.not16 = icmp eq i32 %i.h, 0
end_hunk_0
begin_hunk_1_@_Py_bytes_capitalize:bb.a
  br i1 %.not, label %_Py_bytes_lower.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.i = add nsw i64 %2, -2
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.i, 3
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.06.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.al, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.k = getelementptr i8, ptr %i.g, i64 %.06.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = getelementptr i8, ptr %i.f, i64 %.06.i
  store i8 %i.o, ptr %i.p, align 1, !tbaa !11
  %i.q = or disjoint i64 %.06.i, 1                ; 2 uses
  %i.r = getelementptr i8, ptr %i.g, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = getelementptr i8, ptr %i.f, i64 %i.q
  store i8 %i.v, ptr %i.w, align 1, !tbaa !11
  %i.x = or disjoint i64 %.06.i, 2                ; 2 uses
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = getelementptr i8, ptr %i.f, i64 %i.x
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !11
  %i.ae = or disjoint i64 %.06.i, 3               ; 2 uses
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = getelementptr i8, ptr %i.f, i64 %i.ae
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !11
  %i.al = add nuw nsw i64 %.06.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_Py_bytes_lower.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !20

_Py_bytes_lower.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Py_bytes_lower.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_Py_bytes_lower.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.al, %_Py_bytes_lower.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.as, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.am = getelementptr i8, ptr %i.g, i64 %.06.i.epil
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %i.f, i64 %.06.i.epil
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !11
  %i.as = add nuw nsw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Py_bytes_lower.exit, label %.lr.ph.i.epil, !llvm.loop !26

_Py_bytes_lower.exit:                             ; preds = %_Py_bytes_lower.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_bytes_swapcase(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %.017 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.v, %bb.d ] ; 3 uses
  %.01315 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.m, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.c = getelementptr i8, ptr %.01315, i64 1
  %i.d = load i8, ptr %.01315, align 1, !tbaa !11 ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %.lr.ph
  %i.i = and i32 %i.g, 2
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %.lr.ph.1, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %.lr.ph
  %_Py_ctype_tolower.sink = phi ptr [ @_Py_ctype_toupper, %.lr.ph ], [ @_Py_ctype_tolower, %bb.b ]
  %i.j = getelementptr i8, ptr %_Py_ctype_tolower.sink, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.sink.split, %bb.b
  %.sink = phi i8 [ %i.d, %bb.b ], [ %i.k, %.sink.split ]
  store i8 %.sink, ptr %.017, align 1, !tbaa !11
  %i.l = getelementptr i8, ptr %.017, i64 1
  %i.m = getelementptr i8, ptr %.01315, i64 2     ; 2 uses
  %i.n = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %i.r = and i32 %i.q, 1
  %.not.1 = icmp eq i32 %i.r, 0
  br i1 %.not.1, label %bb.c, label %.sink.split.1

bb.c:                                             ; preds = %.lr.ph.1
  %i.s = and i32 %i.q, 2
  %.not14.1 = icmp eq i32 %i.s, 0
  br i1 %.not14.1, label %bb.d, label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.c, %.lr.ph.1
  %_Py_ctype_tolower.sink.1 = phi ptr [ @_Py_ctype_toupper, %.lr.ph.1 ], [ @_Py_ctype_tolower, %bb.c ]
  %i.t = getelementptr i8, ptr %_Py_ctype_tolower.sink.1, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.1, %bb.c
  %.sink.1 = phi i8 [ %i.n, %bb.c ], [ %i.u, %.sink.split.1 ]
  store i8 %.sink.1, ptr %i.l, align 1, !tbaa !11
  %i.v = getelementptr i8, ptr %.017, i64 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !27

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.017.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.01315.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.m, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.w = load i8, ptr %.01315.epil.init, align 1, !tbaa !11 ; 2 uses
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7    ; 2 uses
  %i.aa = and i32 %i.z, 1
  %.not.epil = icmp eq i32 %i.aa, 0
  br i1 %.not.epil, label %bb.e, label %.sink.split.epil

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.ab = and i32 %i.z, 2
  %.not14.epil = icmp eq i32 %i.ab, 0
  br i1 %.not14.epil, label %._crit_edge.loopexit.epilog-lcssa, label %.sink.split.epil

.sink.split.epil:                                 ; preds = %bb.e, %.lr.ph.epil.preheader
  %_Py_ctype_tolower.sink.epil = phi ptr [ @_Py_ctype_toupper, %.lr.ph.epil.preheader ], [ @_Py_ctype_tolower, %bb.e ]
  %i.ac = getelementptr i8, ptr %_Py_ctype_tolower.sink.epil, i64 %i.x
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %.sink.split.epil, %bb.e
  %.sink.epil = phi i8 [ %i.w, %bb.e ], [ %i.ad, %.sink.split.epil ]
  store i8 %.sink.epil, ptr %.017.epil.init, align 1, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_maketrans(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !35
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str) #14 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyBytesWriter_Create(i64 noundef 256) #14 ; 3 uses
  %.not21 = icmp eq ptr %i.g, null
  br i1 %.not21, label %bb.d, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %i.h = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.g) #14 ; 17 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.h, align 1, !tbaa !11
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.i, align 1, !tbaa !11
  %i.j = getelementptr i8, ptr %i.h, i64 32
  %i.k = getelementptr i8, ptr %i.h, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.j, align 1, !tbaa !11
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.k, align 1, !tbaa !11
  %i.l = getelementptr i8, ptr %i.h, i64 64
  %i.m = getelementptr i8, ptr %i.h, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.l, align 1, !tbaa !11
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.m, align 1, !tbaa !11
  %i.n = getelementptr i8, ptr %i.h, i64 96
  %i.o = getelementptr i8, ptr %i.h, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.n, align 1, !tbaa !11
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.o, align 1, !tbaa !11
  %i.p = getelementptr i8, ptr %i.h, i64 128
  %i.q = getelementptr i8, ptr %i.h, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.p, align 1, !tbaa !11
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.q, align 1, !tbaa !11
  %i.r = getelementptr i8, ptr %i.h, i64 160
  %i.s = getelementptr i8, ptr %i.h, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.r, align 1, !tbaa !11
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.s, align 1, !tbaa !11
  %i.t = getelementptr i8, ptr %i.h, i64 192
  %i.u = getelementptr i8, ptr %i.h, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.t, align 1, !tbaa !11
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.u, align 1, !tbaa !11
  %i.v = getelementptr i8, ptr %i.h, i64 224
  %i.w = getelementptr i8, ptr %i.h, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.v, align 1, !tbaa !11
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.w, align 1, !tbaa !11
  %i.x = load i64, ptr %i.a, align 8, !tbaa !28
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %vector.ph, %.lr.ph
  %.123 = phi i64 [ %i.ah, %.lr.ph ], [ 0, %vector.ph ] ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !36
  %i.aa = getelementptr i8, ptr %i.z, i64 %.123
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = load ptr, ptr %0, align 8, !tbaa !36
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.123
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.h, i64 %i.af
  store i8 %i.ab, ptr %i.ag, align 1, !tbaa !11
  %i.ah = add nuw nsw i64 %.123, 1                ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !28
  %i.aj = icmp slt i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %vector.ph
  %i.ak = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.g) #14
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %.119 = phi ptr [ null, %bb.b ], [ %i.ak, %._crit_edge ], [ null, %bb.c ]
  ret ptr %.119
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @find_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1) ; 2 uses
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @find_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 -1, 2) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.b = tail call i32 @PyObject_CheckBuffer(ptr noundef %2) #14
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %parse_args_finds_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val14.i = load ptr, ptr %i.c, align 8, !tbaa !38 ; 2 uses
  %i.d = getelementptr i8, ptr %.val14.i, i64 96
  %.val14.val.i = load ptr, ptr %i.d, align 8, !tbaa !41 ; 2 uses
  %.not.i.i = icmp eq ptr %.val14.val.i, null
  br i1 %.not.i.i, label %_PyIndex_Check.exit.thread.i, label %_PyIndex_Check.exit.i

_PyIndex_Check.exit.i:                            ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.val14.val.i, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %.not3.i = icmp eq ptr %i.f, null
  br i1 %.not3.i, label %_PyIndex_Check.exit.thread.i, label %bb.c

_PyIndex_Check.exit.thread.i:                     ; preds = %_PyIndex_Check.exit.i, %bb.b
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !35
  %i.h = getelementptr i8, ptr %.val14.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.10, ptr noundef %i.i) #14 ; 0 uses
  br label %parse_args_finds_byte.exit.thread

bb.c:                                             ; preds = %_PyIndex_Check.exit.i
  %i.k = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %2, ptr noundef null) #14 ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @PyErr_Occurred() #14
  %.not13.i = icmp eq ptr %i.m, null
  br i1 %.not13.i, label %.thread.i, label %parse_args_finds_byte.exit.thread

bb.e:                                             ; preds = %bb.c
  %or.cond.i = icmp ugt i64 %i.k, 255
  br i1 %or.cond.i, label %.thread.i, label %parse_args_finds_byte.exit.thread13

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.7) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread13:              ; preds = %bb.e
  %i.o = trunc nuw i64 %i.k to i8
  store i8 %i.o, ptr %i.a, align 1, !tbaa !11
  br label %bb.h

parse_args_finds_byte.exit:                       ; preds = %bb.a
  %.not57 = icmp eq ptr %2, null
  br i1 %.not57, label %bb.h, label %bb.f

bb.f:                                             ; preds = %parse_args_finds_byte.exit
  %i.p = call i32 @PyObject_GetBuffer(ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef 0) #14
  %.not58 = icmp eq i32 %i.p, 0
  br i1 %.not58, label %bb.g, label %parse_args_finds_byte.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %6, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %parse_args_finds_byte.exit.thread13, %parse_args_finds_byte.exit, %bb.g
  %.not5717 = phi i1 [ false, %bb.g ], [ true, %parse_args_finds_byte.exit ], [ true, %parse_args_finds_byte.exit.thread13 ]
  %.046 = phi ptr [ %i.q, %bb.g ], [ %i.a, %parse_args_finds_byte.exit ], [ %i.a, %parse_args_finds_byte.exit.thread13 ] ; 7 uses
  %.045 = phi i64 [ %i.s, %bb.g ], [ 1, %parse_args_finds_byte.exit ], [ 1, %parse_args_finds_byte.exit.thread13 ] ; 12 uses
  %i.t = icmp sgt i64 %4, %1
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp slt i64 %4, 0
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = add i64 %4, %1
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.v, i64 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.048 = phi i64 [ %4, %bb.i ], [ %spec.store.select, %bb.j ], [ %1, %bb.h ] ; 4 uses
  %i.w = icmp slt i64 %3, 0
  %i.x = add i64 %3, %1
  %spec.store.select1 = call i64 @llvm.smax.i64(i64 %i.x, i64 0)
  %.049 = select i1 %i.w, i64 %spec.store.select1, i64 %3 ; 8 uses
  %i.y = sub i64 %.048, %.049                     ; 7 uses
  %i.z = icmp slt i64 %i.y, %.045
  br i1 %i.z, label %stringlib_find_slice.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %.045, 1
  %i.ab = icmp sgt i32 %5, 0                      ; 2 uses
  br i1 %i.aa, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr i8, ptr %0, i64 %.049     ; 7 uses
  %i.ad = load i8, ptr %.046, align 1, !tbaa !11  ; 4 uses
  br i1 %i.ab, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %0, i64 %.048     ; 2 uses
  %i.af = icmp sgt i64 %i.y, 15
  br i1 %i.af, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.ag = icmp ult ptr %i.ac, %i.ae
  br i1 %i.ag, label %.lr.ph.i, label %stringlib_find_slice.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = sext i8 %i.ad to i32
  %i.ai = call ptr @memchr(ptr noundef %i.ac, i32 noundef %i.ah, i64 noundef %i.y) #15 ; 2 uses
  %.not.i60 = icmp eq ptr %i.ai, null
  br i1 %.not.i60, label %stringlib_find_slice.exit, label %stringlib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %.01721.i = phi ptr [ %i.al, %bb.p ], [ %i.ac, %.preheader.i ] ; 3 uses
  %i.aj = load i8, ptr %.01721.i, align 1, !tbaa !11
  %i.ak = icmp eq i8 %i.aj, %i.ad
  br i1 %i.ak, label %stringlib_find_char.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr i8, ptr %.01721.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.al, %i.ae
  br i1 %exitcond.not.i, label %stringlib_find_slice.exit, label %.lr.ph.i, !llvm.loop !51

bb.q:                                             ; preds = %bb.m
  %i.am = icmp sgt i64 %i.y, 15
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.an = sext i8 %i.ad to i32
  %i.ao = call ptr @memrchr(ptr noundef %i.ac, i32 noundef %i.an, i64 noundef %i.y) #15 ; 2 uses
  %.not.i62 = icmp eq ptr %i.ao, null
  br i1 %.not.i62, label %stringlib_find_slice.exit, label %stringlib_find_char.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = getelementptr i8, ptr %0, i64 %.048     ; 2 uses
  %i.aq = icmp ugt ptr %i.ap, %i.ac
  br i1 %i.aq, label %.lr.ph, label %stringlib_find_slice.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ar = icmp ugt ptr %i.as, %i.ac
  br i1 %i.ar, label %.lr.ph, label %stringlib_find_slice.exit, !llvm.loop !52

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.0.i6155 = phi ptr [ %i.as, %bb.t ], [ %i.ap, %bb.s ]
  %i.as = getelementptr i8, ptr %.0.i6155, i64 -1 ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = icmp eq i8 %i.at, %i.ad
  br i1 %i.au, label %stringlib_find_char.exit, label %bb.t, !llvm.loop !52

stringlib_find_char.exit:                         ; preds = %.lr.ph, %.lr.ph.i, %bb.r, %bb.o
  %.lcssa.sink = phi ptr [ %i.ao, %bb.r ], [ %.01721.i, %.lr.ph.i ], [ %i.ai, %bb.o ], [ %i.as, %.lr.ph ]
  %.lcssa.sink.fr = freeze ptr %.lcssa.sink
  %i.av = ptrtoint ptr %.lcssa.sink.fr to i64
  %i.aw = ptrtoint ptr %i.ac to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 0
  %i.az = select i1 %i.ay, i64 0, i64 %.049
  %spec.select = add nuw i64 %i.az, %i.ax
  br label %stringlib_find_slice.exit

bb.u:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ba = icmp eq i64 %.045, 0
  br i1 %i.ba, label %stringlib_find_slice.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr i8, ptr %0, i64 %.049
  %i.bc = call fastcc i64 @fastsearch(ptr noundef %i.bb, i64 noundef %i.y, ptr noundef %.046, i64 noundef range(i64 2, 1) %.045, i64 noundef -1, i32 noundef 1) ; 2 uses
  %i.bd = icmp slt i64 %i.bc, 0
  %i.be = select i1 %i.bd, i64 0, i64 %.049
  %spec.select.i.i = add i64 %i.be, %i.bc
  br label %stringlib_find_slice.exit

bb.x:                                             ; preds = %bb.u
  %i.bf = getelementptr i8, ptr %0, i64 %.049
  %i.bg = icmp eq i64 %.045, 0
  br i1 %i.bg, label %stringlib_find_slice.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = icmp slt i64 %.045, 2
  br i1 %i.bh, label %stringlib_find_slice.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = add nsw i64 %.045, -1                   ; 6 uses
  %i.bj = load i8, ptr %.046, align 1, !tbaa !11  ; 5 uses
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  %xtraiter = and i64 %i.bi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %bb.z
  %i.bn = getelementptr i8, ptr %.046, i64 %i.bi
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11  ; 2 uses
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = or i64 %i.br, %i.bm                     ; 2 uses
  %i.bt = icmp eq i8 %i.bo, %i.bj
  %i.bu = add nsw i64 %.045, -2                   ; 2 uses
  %spec.select.i77.i.i.i.prol = select i1 %i.bt, i64 %i.bu, i64 %i.bi ; 2 uses
  br label %.lr.ph.i76.i.i.i.prol.loopexit

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %bb.z
  %.04660.i.i.i.i.unr = phi i64 [ %i.bi, %bb.z ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.bm, %bb.z ], [ %i.bs, %.lr.ph.i76.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.bi, %bb.z ], [ %i.bu, %.lr.ph.i76.i.i.i.prol ]
  %.lcssa62.unr = phi i64 [ poison, %bb.z ], [ %i.bs, %.lr.ph.i76.i.i.i.prol ]
  %spec.select.i77.i.i.i.lcssa.unr = phi i64 [ poison, %bb.z ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %i.bv = icmp eq i64 %.045, 2
  br i1 %i.bv, label %.preheader56.i.i.i.i, label %.lr.ph.i76.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i76.i.i.i, %.lr.ph.i76.i.i.i.prol.loopexit
  %.lcssa62 = phi i64 [ %.lcssa62.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %i.dk, %.lr.ph.i76.i.i.i ] ; 2 uses
  %spec.select.i77.i.i.i.lcssa = phi i64 [ %spec.select.i77.i.i.i.lcssa.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ]
  %i.bw = sub i64 %i.y, %.045                     ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, -1
  br i1 %i.bx, label %.lr.ph66.split.us.i.i.i.i, label %stringlib_find_slice.exit

.lr.ph66.split.us.i.i.i.i:                        ; preds = %.preheader56.i.i.i.i, %bb.ae
  %.15065.us.i.i.i.i = phi i64 [ %i.ct, %bb.ae ], [ %i.bw, %.preheader56.i.i.i.i ]
  %.15065.us.i.i.fr.i.i = freeze i64 %.15065.us.i.i.i.i ; 6 uses
  %i.by = getelementptr i8, ptr %i.bf, i64 %.15065.us.i.i.fr.i.i ; 4 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = icmp eq i8 %i.bz, %i.bj
  br i1 %i.ca, label %.preheader.us.i80.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i79.i.i.i = icmp eq i64 %.15065.us.i.i.fr.i.i, 0
  br i1 %.not.us.i79.i.i.i, label %stringlib_find_slice.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr i8, ptr %i.by, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = and i8 %i.cc, 63
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %.lcssa62
  %.not51.us.i.i.i.i = icmp eq i64 %i.cg, 0
  %i.ch = select i1 %.not51.us.i.i.i.i, i64 %.045, i64 0
  br label %bb.ae

.preheader.us.i80.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %bb.af
  %.04862.us.i.i.i.i = phi i64 [ %i.cv, %bb.af ], [ %i.bi, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.ci = getelementptr i8, ptr %i.by, i64 %.04862.us.i.i.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = getelementptr i8, ptr %.046, i64 %.04862.us.i.i.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !11
  %.not52.us.i.i.i.i = icmp eq i8 %i.cj, %i.cl
  br i1 %.not52.us.i.i.i.i, label %bb.af, label %.thread.us.i.i.i.i

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i80.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.15065.us.i.i.fr.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread.us.i.i.i.i
  %i.cm = getelementptr i8, ptr %i.by, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = and i8 %i.cn, 63
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.cq, %.lcssa62
  %.not54.us.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not54.us.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.us.i.i.i.i
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.lcssa, %bb.ad ], [ %i.ch, %bb.ab ], [ %.045, %bb.ac ]
  %i.cs = sub nsw i64 %.15065.us.i.i.fr.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.ct = add nsw i64 %i.cs, -1
  %i.cu = icmp sgt i64 %i.cs, 0
  br i1 %i.cu, label %.lr.ph66.split.us.i.i.i.i, label %stringlib_find_slice.exit, !llvm.loop !53

bb.af:                                            ; preds = %.preheader.us.i80.i.i.i
  %i.cv = add nsw i64 %.04862.us.i.i.i.i, -1
  %i.cw = icmp sgt i64 %.04862.us.i.i.i.i, 1
  br i1 %i.cw, label %.preheader.us.i80.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !54

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.04660.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ], [ %.04660.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i76.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04958.i.i.i.i = phi i64 [ %i.dm, %.lr.ph.i76.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 4 uses
  %i.cx = getelementptr i8, ptr %.046, i64 %.04958.i.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !11  ; 2 uses
  %i.cz = and i8 %i.cy, 63
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da
  %i.dc = or i64 %i.db, %.04759.i.i.i.i
  %i.dd = icmp eq i8 %i.cy, %i.bj
  %i.de = add nsw i64 %.04958.i.i.i.i, -1         ; 2 uses
  %spec.select.i77.i.i.i = select i1 %i.dd, i64 %i.de, i64 %.04660.i.i.i.i
  %i.df = getelementptr i8, ptr %.046, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !11  ; 2 uses
  %i.dh = and i8 %i.dg, 63
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = or i64 %i.dj, %i.dc                     ; 2 uses
  %i.dl = icmp eq i8 %i.dg, %i.bj
  %i.dm = add nsw i64 %.04958.i.i.i.i, -2         ; 2 uses
  %spec.select.i77.i.i.i.1 = select i1 %i.dl, i64 %i.dm, i64 %spec.select.i77.i.i.i ; 2 uses
  %i.dn = icmp sgt i64 %.04958.i.i.i.i, 2
  br i1 %i.dn, label %.lr.ph.i76.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !55

fastsearch.exit.i.i:                              ; preds = %bb.af
  %i.do = icmp slt i64 %.15065.us.i.i.fr.i.i, 0
  %i.dp = select i1 %i.do, i64 0, i64 %.049
  %spec.select.i.i63 = add i64 %i.dp, %.15065.us.i.i.fr.i.i
  br label %stringlib_find_slice.exit

stringlib_find_slice.exit:                        ; preds = %bb.ae, %bb.aa, %bb.t, %bb.p, %bb.s, %stringlib_find_char.exit, %bb.r, %.preheader.i, %bb.o, %fastsearch.exit.i.i, %.preheader56.i.i.i.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.k
  %.1 = phi i64 [ %.049, %bb.v ], [ -1, %bb.k ], [ -1, %.preheader.i ], [ -1, %bb.s ], [ %spec.select, %stringlib_find_char.exit ], [ %spec.select.i.i, %bb.w ], [ %.048, %bb.x ], [ -1, %bb.y ], [ %spec.select.i.i63, %fastsearch.exit.i.i ], [ -1, %.preheader56.i.i.i.i ], [ -1, %bb.p ], [ -1, %bb.r ], [ -1, %bb.o ], [ -1, %bb.t ], [ -1, %bb.aa ], [ -1, %bb.ae ] ; 2 uses
  br i1 %.not5717, label %parse_args_finds_byte.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %stringlib_find_slice.exit
  call void @PyBuffer_Release(ptr noundef nonnull %6) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread:                ; preds = %bb.d, %.thread.i, %_PyIndex_Check.exit.thread.i, %stringlib_find_slice.exit, %bb.ag, %bb.f
  %.047 = phi i64 [ %.1, %stringlib_find_slice.exit ], [ -2, %bb.f ], [ %.1, %bb.ag ], [ -2, %_PyIndex_Check.exit.thread.i ], [ -2, %.thread.i ], [ -2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %.047
}

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_index(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @find_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1) ; 2 uses
  switch i64 %i.a, label %bb.c [
    i64 -2, label %bb.d
    i64 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.3) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_rfind(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @find_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef -1) ; 2 uses
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_rindex(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @find_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef -1) ; 2 uses
  switch i64 %i.a, label %bb.c [
    i64 -2, label %bb.d
    i64 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.3) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.b = tail call i32 @PyObject_CheckBuffer(ptr noundef %2) #14
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %parse_args_finds_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val14.i = load ptr, ptr %i.c, align 8, !tbaa !38 ; 2 uses
  %i.d = getelementptr i8, ptr %.val14.i, i64 96
  %.val14.val.i = load ptr, ptr %i.d, align 8, !tbaa !41 ; 2 uses
  %.not.i.i = icmp eq ptr %.val14.val.i, null
  br i1 %.not.i.i, label %_PyIndex_Check.exit.thread.i, label %_PyIndex_Check.exit.i

_PyIndex_Check.exit.i:                            ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.val14.val.i, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %.not3.i = icmp eq ptr %i.f, null
  br i1 %.not3.i, label %_PyIndex_Check.exit.thread.i, label %bb.c

_PyIndex_Check.exit.thread.i:                     ; preds = %_PyIndex_Check.exit.i, %bb.b
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !35
  %i.h = getelementptr i8, ptr %.val14.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.10, ptr noundef %i.i) #14 ; 0 uses
  br label %parse_args_finds_byte.exit.thread

bb.c:                                             ; preds = %_PyIndex_Check.exit.i
  %i.k = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %2, ptr noundef null) #14 ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @PyErr_Occurred() #14
  %.not13.i = icmp eq ptr %i.m, null
  br i1 %.not13.i, label %.thread.i, label %parse_args_finds_byte.exit.thread

bb.e:                                             ; preds = %bb.c
  %or.cond.i = icmp ugt i64 %i.k, 255
  br i1 %or.cond.i, label %.thread.i, label %parse_args_finds_byte.exit.thread38

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.7) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread38:              ; preds = %bb.e
  %i.o = trunc nuw i64 %i.k to i8
  store i8 %i.o, ptr %i.a, align 1, !tbaa !11
  br label %bb.h

parse_args_finds_byte.exit:                       ; preds = %bb.a
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %parse_args_finds_byte.exit
  %i.p = call i32 @PyObject_GetBuffer(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 0) #14
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.g, label %parse_args_finds_byte.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %5, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %parse_args_finds_byte.exit.thread38, %parse_args_finds_byte.exit, %bb.g
  %.not2842 = phi i1 [ false, %bb.g ], [ true, %parse_args_finds_byte.exit ], [ true, %parse_args_finds_byte.exit.thread38 ]
  %.020 = phi ptr [ %i.q, %bb.g ], [ %i.a, %parse_args_finds_byte.exit ], [ %i.a, %parse_args_finds_byte.exit.thread38 ]
  %.019 = phi i64 [ %i.s, %bb.g ], [ 1, %parse_args_finds_byte.exit ], [ 1, %parse_args_finds_byte.exit.thread38 ] ; 2 uses
  %i.t = icmp sgt i64 %4, %1
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp slt i64 %4, 0
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = add i64 %4, %1
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.v, i64 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.021 = phi i64 [ %4, %bb.i ], [ %spec.store.select, %bb.j ], [ %1, %bb.h ]
  %i.w = icmp slt i64 %3, 0
  %i.x = add i64 %3, %1
  %spec.store.select1 = call i64 @llvm.smax.i64(i64 %i.x, i64 0)
  %.022 = select i1 %i.w, i64 %spec.store.select1, i64 %3 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %.022
  %i.z = sub i64 %.021, %.022                     ; 3 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %stringlib_count.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %.019, 0
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = call i64 @llvm.sadd.sat.i64(i64 %i.z, i64 1)
  br label %stringlib_count.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = call fastcc i64 @fastsearch(ptr noundef %i.y, i64 noundef %i.z, ptr noundef %.020, i64 noundef %.019, i64 noundef 9223372036854775807, i32 noundef 0)
  %..i = call i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  br label %stringlib_count.exit

stringlib_count.exit:                             ; preds = %bb.k, %bb.m, %bb.n
  %.0.i = phi i64 [ 0, %bb.k ], [ %i.ac, %bb.m ], [ %..i, %bb.n ]
  %i.ae = call ptr @PyLong_FromSsize_t(i64 noundef %.0.i) #14 ; 2 uses
  br i1 %.not2842, label %parse_args_finds_byte.exit.thread, label %bb.o

bb.o:                                             ; preds = %stringlib_count.exit
  call void @PyBuffer_Release(ptr noundef nonnull %5) #14
  br label %parse_args_finds_byte.exit.thread

parse_args_finds_byte.exit.thread:                ; preds = %bb.d, %.thread.i, %_PyIndex_Check.exit.thread.i, %stringlib_count.exit, %bb.o, %bb.f
  %.0 = phi ptr [ %i.ae, %stringlib_count.exit ], [ null, %bb.f ], [ %i.ae, %bb.o ], [ null, %_PyIndex_Check.exit.thread.i ], [ null, %.thread.i ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @_Py_bytes_contains(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 6 uses
  %i.a = tail call i64 @PyNumber_AsSsize_t(ptr noundef %2, ptr noundef null) #14 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  tail call void @PyErr_Clear() #14
  %i.d = call i32 @PyObject_GetBuffer(ptr noundef %2, ptr noundef nonnull %3, i32 noundef 0) #14
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %stringlib_find.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %3, align 8, !tbaa !36
  %i.i = call fastcc i64 @fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef %i.h, i64 noundef %i.f, i64 noundef -1, i32 noundef 1)
  %i.j = icmp sgt i64 %i.i, -1
  %i.k = zext i1 %i.j to i32
  br label %stringlib_find.exit

stringlib_find.exit:                              ; preds = %bb.d, %bb.e
  %.010.i = phi i32 [ %i.k, %bb.e ], [ 1, %bb.d ]
  call void @PyBuffer_Release(ptr noundef nonnull %3) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %stringlib_find.exit
  %.0 = phi i32 [ %.010.i, %stringlib_find.exit ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %or.cond = icmp ugt i64 %i.a, 255
  br i1 %or.cond, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.b, %bb.g
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.7) #14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = trunc nuw nsw i64 %i.a to i32
  %i.n = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.m, i64 noundef %1) #15
  %i.o = icmp ne ptr %i.n, null
  %i.p = zext i1 %i.o to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread, %bb.f
  %.1 = phi i32 [ %.0, %bb.f ], [ -1, %.thread ], [ %i.p, %bb.h ]
  ret i32 %.1
}

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_Occurred() local_unnamed_addr #3

declare void @PyErr_Clear() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_startswith(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @_Py_bytes_tailmatch(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.8, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef -1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_Py_bytes_tailmatch(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef range(i32 -1, 2) %6) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr i8, ptr %.val31, i64 168
  %.val32 = load i64, ptr %i.b, align 8, !tbaa !56
  %i.c = and i64 %.val32, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 32
  %i.e = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %.val3334 = load i64, ptr %i.e, align 8, !tbaa !57
  %i.f = icmp sgt i64 %.val3334, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i64 %.02635, 1               ; 2 uses
  %.val33 = load i64, ptr %i.e, align 8, !tbaa !57
  %i.h = icmp slt i64 %i.g, %.val33
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !58

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.036 = phi ptr [ %.1, %bb.b ], [ undef, %.preheader ]
  %.02635 = phi i64 [ %i.g, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %i.d, i64 %.02635
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = tail call fastcc i32 @tailmatch(ptr noundef %0, i64 noundef %1, ptr noundef %i.j, i64 noundef %4, i64 noundef %5, i32 noundef %6) ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  %.not30 = icmp eq i32 %i.k, 0                   ; 2 uses
  %.0._Py_TrueStruct = select i1 %.not30, ptr %.036, ptr @_Py_TrueStruct
  %.1 = select i1 %i.l, ptr %.0._Py_TrueStruct, ptr null ; 2 uses
  br i1 %.not30, label %bb.b, label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call fastcc i32 @tailmatch(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !35
  %i.p = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.o) #14
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !35
  %.val = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.r = getelementptr i8, ptr %.val, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.11, ptr noundef %2, ptr noundef %i.s) #14 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.u = zext nneg i32 %i.m to i64
  %i.v = tail call ptr @PyBool_FromLong(i64 noundef %i.u) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %.preheader, %bb.f, %bb.e, %bb.d
  %.4 = phi ptr [ null, %bb.e ], [ null, %bb.d ], [ %i.v, %bb.f ], [ @_Py_FalseStruct, %.preheader ], [ @_Py_FalseStruct, %bb.b ], [ %.1, %.lr.ph ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_endswith(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @_Py_bytes_tailmatch(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.9, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_Py_bytes_isascii(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 %1         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread31.i, %bb.a
  %.021.i = phi ptr [ %0, %bb.a ], [ %i.i, %.thread31.i ] ; 4 uses
  %i.b = icmp ult ptr %.021.i, %i.a
  br i1 %i.b, label %bb.c, label %stringlib_find_max_char.exit

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %.021.i to i64
  %i.d = and i64 %i.c, 7
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.019.i = phi ptr [ %i.e, %bb.d ], [ %.021.i, %bb.c ] ; 4 uses
  %i.e = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.e, %i.a
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.f = load i64, ptr %.019.i, align 8, !tbaa !59
  %i.g = and i64 %i.f, -9187201950435737472
  %.not27.i = icmp eq i64 %i.g, 0
  br i1 %.not27.i, label %.preheader.i, label %stringlib_find_max_char.exit, !llvm.loop !60

bb.e:                                             ; preds = %.preheader.i
  %i.h = icmp eq ptr %.019.i, %i.a
  br i1 %i.h, label %stringlib_find_max_char.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.e, %bb.c
  %.223.i = phi ptr [ %.021.i, %bb.c ], [ %.019.i, %bb.e ] ; 2 uses
  %i.i = getelementptr i8, ptr %.223.i, i64 1
  %i.j = load i8, ptr %.223.i, align 1, !tbaa !11
  %.not28.i = icmp sgt i8 %i.j, -1
  br i1 %.not28.i, label %bb.b, label %stringlib_find_max_char.exit, !llvm.loop !61

stringlib_find_max_char.exit:                     ; preds = %.thread31.i, %bb.e, %bb.b, %bb.d
  %i.k = phi ptr [ @_Py_FalseStruct, %bb.d ], [ @_Py_FalseStruct, %.thread31.i ], [ @_Py_TrueStruct, %bb.b ], [ @_Py_TrueStruct, %bb.e ]
  ret ptr %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 9223372036854775807, 0) %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %stringlib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %3, 2
  br i1 %i.b, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.d, label %stringlib_find_char.exit

bb.d:                                             ; preds = %bb.c
  switch i32 %5, label %bb.p [
    i32 1, label %bb.e
    i32 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = load i8, ptr %2, align 1, !tbaa !11      ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.e = icmp sgt i64 %1, 15
  br i1 %i.e, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.f = icmp ult ptr %0, %i.d
  br i1 %i.f, label %.lr.ph.i, label %stringlib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.g = sext i8 %i.c to i32
  %i.h = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.g, i64 noundef %1) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %stringlib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  br label %stringlib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.01721.i = phi ptr [ %i.q, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.01721.i, align 1, !tbaa !11
  %i.m = icmp eq i8 %i.l, %i.c
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.01721.i to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  br label %stringlib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.01721.i, i64 1   ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.d
  br i1 %exitcond.not.i, label %stringlib_find_char.exit, label %.lr.ph.i, !llvm.loop !51

bb.j:                                             ; preds = %bb.d
  %i.r = load i8, ptr %2, align 1, !tbaa !11      ; 2 uses
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = sext i8 %i.r to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #15 ; 2 uses
  %.not.i68 = icmp eq ptr %i.u, null
  br i1 %.not.i68, label %stringlib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %stringlib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %stringlib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %stringlib_find_char.exit, !llvm.loop !52

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i67148 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i67148, i64 -1 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = icmp eq i8 %i.ac, %i.r
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !52

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %stringlib_find_char.exit

bb.p:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %4, 9223372036854775807
  %i.ai = load i8, ptr %2, align 1, !tbaa !11     ; 3 uses
  br i1 %i.ah, label %.lr.ph.i69.preheader, label %.lr.ph.i71

.lr.ph.i69.preheader:                             ; preds = %bb.p
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i69.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.aj = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %wide.load = load <2 x i8>, ptr %i.aj, align 1, !tbaa !11
  %wide.load150 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !11
  %i.al = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.am = icmp eq <2 x i8> %wide.load150, %broadcast.splat
  %i.an = zext <2 x i1> %i.al to <2 x i64>
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = add <2 x i64> %vec.phi, %i.an           ; 2 uses
  %i.aq = add <2 x i64> %vec.phi149, %i.ao        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aq, %i.ap
  %i.as = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i69.preheader151

.lr.ph.i69.preheader151:                          ; preds = %.lr.ph.i69.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader151, %.lr.ph.i69
  %.09.i = phi i64 [ %i.ax, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader151 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader151 ]
  %i.at = getelementptr i8, ptr %0, i64 %.09.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = icmp eq i8 %i.au, %i.ai
  %i.aw = zext i1 %i.av to i64
  %spec.select.i = add i64 %.078.i, %i.aw         ; 2 uses
  %i.ax = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ax, %1
  br i1 %exitcond.not.i70, label %stringlib_find_char.exit, label %.lr.ph.i69, !llvm.loop !65

.lr.ph.i71:                                       ; preds = %bb.p, %bb.r
  %.016.i72 = phi i64 [ %.1.i, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %.01115.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %.01115.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = icmp eq i8 %i.az, %i.ai
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i71
  %i.bb = add i64 %.016.i72, 1                    ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %4
  br i1 %i.bc, label %stringlib_find_char.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i71
  %.1.i = phi i64 [ %i.bb, %bb.q ], [ %.016.i72, %.lr.ph.i71 ] ; 2 uses
  %i.bd = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not.i73, label %stringlib_find_char.exit, label %.lr.ph.i71, !llvm.loop !66

bb.s:                                             ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.am, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp slt i64 %1, 2500
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp samesign ult i64 %3, 100
  %i.bg = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bg, %i.bf
  %i.bh = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bh, %or.cond3
  br i1 %or.cond5, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = add nsw i64 %3, -1                      ; 13 uses
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11  ; 5 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bl = icmp eq i64 %3, 2
  br i1 %i.bl, label %.lr.ph.i74.epil.preheader, label %.new

.new:                                             ; preds = %bb.v
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i74

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i74
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.v
  %.068100.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.dx, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.dt, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.bi, %bb.v ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod169 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.bm = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11  ; 2 uses
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = or i64 %i.bq, %.06999.i.epil.init
  %i.bs = icmp eq i8 %i.bn, %i.bk
  %i.bt = xor i64 %.068100.i.epil.init, -1
  %i.bu = add nsw i64 %i.bi, %i.bt
  %.179.i.epil = select i1 %i.bs, i64 %i.bu, i64 %.07898.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i74.epil.preheader
  %.lcssa166 = phi i64 [ %i.dt, %._crit_edge.i.unr-lcssa ], [ %i.br, %.lr.ph.i74.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i74.epil.preheader ]
  %i.bv = sub i64 %1, %3                          ; 4 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi     ; 3 uses
  %i.bx = and i8 %i.bk, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %.lcssa166, %i.bz                ; 2 uses
  %.not108.i = icmp slt i64 %i.bv, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.af, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.db, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.066110.us.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = icmp eq i8 %i.cc, %i.bk
  br i1 %i.cd, label %.preheader.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph113.split.us.i
  %i.ce = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.ce, %i.bv
  br i1 %.not88.us.i, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = and i8 %i.cg, 63
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %i.ca
  %.not89.us.i = icmp eq i64 %i.ck, 0
  %i.cl = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cl, %.066110.us.i
  br label %bb.af

bb.y:                                             ; preds = %.preheader.us.i, %bb.ag
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.dc, %bb.ag ] ; 4 uses
  %i.cm = getelementptr i8, ptr %i.dd, i64 %.0102.us.i
end_hunk_1
begin_hunk_2_@fastsearch:bb.a
  %.not.us.i = icmp sgt i64 %i.db, %i.bv
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !67

bb.ag:                                            ; preds = %bb.y
  %i.dc = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.dc, %i.bi
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.y, !llvm.loop !68

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dd = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.y

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dx, %.lr.ph.i74 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.dt, %.lr.ph.i74 ]
  %.07898.i = phi i64 [ %i.bi, %.new ], [ %.179.i.1, %.lr.ph.i74 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i74 ]
  %i.de = getelementptr i8, ptr %2, i64 %.068100.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !11  ; 2 uses
  %i.dg = and i8 %i.df, 63
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = or i64 %i.di, %.06999.i
  %i.dk = icmp eq i8 %i.df, %i.bk
  %i.dl = xor i64 %.068100.i, -1
  %i.dm = add nsw i64 %i.bi, %i.dl
  %.179.i = select i1 %i.dk, i64 %i.dm, i64 %.07898.i
  %i.dn = getelementptr i8, ptr %2, i64 %.068100.i
  %i.do = getelementptr i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11  ; 2 uses
  %i.dq = and i8 %i.dp, 63
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = or i64 %i.ds, %i.dj                     ; 3 uses
  %i.du = icmp eq i8 %i.dp, %i.bk
  %i.dv = xor i64 %.068100.i, -2
  %i.dw = add nsw i64 %i.bi, %i.dv
  %.179.i.1 = select i1 %i.du, i64 %i.dw, i64 %.179.i ; 3 uses
  %i.dx = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i74, !llvm.loop !69

.loopexit.i:                                      ; preds = %bb.af, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.af ]
  %i.dy = icmp eq i32 %5, 0
  %i.dz = select i1 %i.dy, i64 %.377.ph.i, i64 -1
  br label %stringlib_find_char.exit

bb.ah:                                            ; preds = %bb.u
  %i.ea = lshr i64 %3, 2
  %i.eb = mul nuw nsw i64 %i.ea, 3
  %i.ec = lshr i64 %1, 2
  %i.ed = icmp samesign ult i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ee = icmp eq i32 %5, 1
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ef = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.ak:                                            ; preds = %bb.ai
  %i.eg = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.ah
  %i.eh = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.am:                                            ; preds = %bb.s
  %i.ei = add nsw i64 %3, -1                      ; 6 uses
  %i.ej = load i8, ptr %2, align 1, !tbaa !11     ; 5 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el                    ; 2 uses
  %xtraiter171 = and i64 %i.ei, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.am
  %i.en = getelementptr i8, ptr %2, i64 %i.ei
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !11  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = or i64 %i.er, %i.em                     ; 2 uses
  %i.et = icmp eq i8 %i.eo, %i.ej
  %i.eu = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.et, i64 %i.eu, i64 %i.ei ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.am
  %.04660.i.unr = phi i64 [ %i.ei, %bb.am ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.em, %bb.am ], [ %i.es, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.ei, %bb.am ], [ %i.eu, %.lr.ph.i76.prol ]
  %.lcssa162.unr = phi i64 [ poison, %bb.am ], [ %i.es, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.am ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.ev = icmp eq i64 %3, 2
  br i1 %i.ev, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa162 = phi i64 [ %.lcssa162.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gk, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.ew = sub i64 %1, %3                          ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ar
  %.15065.us.i = phi i64 [ %i.ft, %bb.ar ], [ %i.ew, %.preheader56.i ] ; 5 uses
  %i.ey = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !11
  %i.fa = icmp eq i8 %i.ez, %i.ej
  br i1 %i.fa, label %.preheader.us.i80, label %bb.an

bb.an:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %stringlib_find_char.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr i8, ptr %i.ey, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !11
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.fg, 0
  %i.fh = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ar

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %bb.as
  %.04862.us.i = phi i64 [ %i.fv, %bb.as ], [ %i.ei, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fi = getelementptr i8, ptr %i.ey, i64 %.04862.us.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !11
  %i.fk = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !11
  %.not52.us.i = icmp eq i8 %i.fj, %i.fl
  br i1 %.not52.us.i, label %bb.as, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread.us.i
  %i.fm = getelementptr i8, ptr %i.ey, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !11
  %i.fo = and i8 %i.fn, 63
  %i.fp = zext nneg i8 %i.fo to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = and i64 %i.fq, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.fr, 0
  br i1 %.not54.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.us.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.aq ], [ %i.fh, %bb.ao ], [ %3, %bb.ap ]
  %i.fs = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.ft = add nsw i64 %i.fs, -1
  %i.fu = icmp sgt i64 %i.fs, 0
  br i1 %i.fu, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !53

bb.as:                                            ; preds = %.preheader.us.i80
  %i.fv = add nsw i64 %.04862.us.i, -1
  %i.fw = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.fw, label %.preheader.us.i80, label %stringlib_find_char.exit, !llvm.loop !54

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gk, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gm, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.fx = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !11  ; 2 uses
  %i.fz = and i8 %i.fy, 63
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = or i64 %i.gb, %.04759.i
  %i.gd = icmp eq i8 %i.fy, %i.ej
  %i.ge = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.gd, i64 %i.ge, i64 %.04660.i
  %i.gf = getelementptr i8, ptr %2, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !11  ; 2 uses
  %i.gh = and i8 %i.gg, 63
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = or i64 %i.gj, %i.gc                     ; 2 uses
  %i.gl = icmp eq i8 %i.gg, %i.ej
  %i.gm = add nsw i64 %.04958.i, -2               ; 2 uses
  %spec.select.i77.1 = select i1 %i.gl, i64 %i.gm, i64 %spec.select.i77 ; 2 uses
  %i.gn = icmp sgt i64 %.04958.i, 2
  br i1 %i.gn, label %.lr.ph.i76, label %.preheader56.i, !llvm.loop !55

stringlib_find_char.exit:                         ; preds = %bb.ad, %._crit_edge104.us.thread.i, %bb.ar, %bb.an, %bb.as, %bb.n, %bb.i, %bb.r, %bb.q, %.lr.ph.i69, %bb.m, %middle.block, %.preheader56.i, %.loopexit.i, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.al, %bb.ak, %bb.aj
  %.0 = phi i64 [ -1, %.preheader56.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ %4, %bb.q ], [ %.15065.us.i, %bb.as ], [ -1, %bb.m ], [ %spec.select.i, %.lr.ph.i69 ], [ %i.ef, %bb.aj ], [ %i.eg, %bb.ak ], [ %i.eh, %bb.al ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.p, %bb.h ], [ -1, %.preheader.i ], [ %i.x, %bb.l ], [ -1, %bb.k ], [ %i.ag, %bb.o ], [ -1, %bb.n ], [ -1, %bb.i ], [ %i.dz, %.loopexit.i ], [ %i.as, %middle.block ], [ -1, %bb.ar ], [ %.1.i, %bb.r ], [ -1, %bb.an ], [ %4, %bb.ad ], [ %.066110.us.i, %._crit_edge104.us.thread.i ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_find(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @stringlib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 9223372036854775807, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
.lr.ph.preheader:
  %6 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  %7 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11    ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i8> %broadcast.splatinsert252, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !11 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !11 ; 2 uses
  %i.h = and <2 x i8> %wide.load, splat (i8 63)
  %i.i = and <2 x i8> %wide.load257, splat (i8 63)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i8> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i8> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1108.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1108, %.lr.ph ]
  %i.aa = and i8 %i.d, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.k
  %.092148.us = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %bb.l
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.bj, %bb.l ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bk, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %bb.l, label %._crit_edge141.us

._crit_edge141.us:                                ; preds = %bb.c
  %i.at = icmp eq i64 %.0139.us, %i.b
  br i1 %i.at, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.au = add i64 %.0104146.us, 1
  %i.av = add i64 %i.au, %.0139.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092148.us
  %i.ay = icmp sgt i64 %i.ax, 2000
  %or.cond.us = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.af, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.ad
  %.not122.us = icmp eq i64 %i.be, 0
  br i1 %.not122.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0107.pn.us = phi i64 [ %.1108.lcssa, %bb.g ], [ %3, %bb.f ]
  %.193.us = add i64 %.0107.pn.us, %.092148.us
  br label %bb.k

._crit_edge141.us.thread:                         ; preds = %bb.l, %._crit_edge141.us
  br i1 %.not124, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %._crit_edge141.us.thread
  %i.bf = add i64 %.0100147.us, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i64 %.092148.us, %i.b
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.b, %bb.a
  %.2106.us = phi i64 [ %.0104146.us, %bb.a ], [ %.0104146.us, %bb.b ], [ %i.av, %bb.h ], [ %.0104146.us, %bb.j ]
  %.2102.us = phi i64 [ %.0100147.us, %bb.a ], [ %.0100147.us, %bb.b ], [ %.0100147.us, %bb.h ], [ %i.bf, %bb.j ] ; 2 uses
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.h ], [ %i.bh, %bb.j ]
  %i.bi = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bi, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !71

bb.l:                                             ; preds = %bb.c
  %i.bj = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.bj, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !72

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bk = getelementptr i8, ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bu, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bq, %.lr.ph ], [ %i.x, %middle.block ]
  %.0107135 = phi i64 [ %.1108, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bl = getelementptr i8, ptr %2, i64 %.094137
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11  ; 2 uses
  %i.bn = and i8 %i.bm, 63
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = or i64 %i.bp, %.095136                  ; 2 uses
  %i.br = icmp eq i8 %i.bm, %i.d
  %i.bs = xor i64 %.094137, -1
  %i.bt = add nsw i64 %i.b, %i.bs
  %.1108 = select i1 %i.br, i64 %i.bt, i64 %.0107135 ; 2 uses
  %i.bu = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

.split.us:                                        ; preds = %bb.d
  %i.bv = getelementptr i8, ptr %0, i64 %.092148.us ; 3 uses
  %i.bw = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bx = call fastcc i64 @stringlib__two_way(ptr noundef readonly %i.bv, i64 noundef %i.bw, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = add i64 %i.bx, %.092148.us
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.cb = sub i64 %4, %.0100147.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cc = call fastcc i64 @stringlib__two_way(ptr noundef %i.bv, i64 noundef %i.bw, ptr noundef %6) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %stringlib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01930.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01930.i249             ; 3 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @stringlib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %stringlib__two_way_count.exit, label %.lr.ph.i

stringlib__two_way_count.exit:                    ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.1.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.cp = add i64 %.1.ph.i, %.0100147.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.3103 = phi i64 [ 0, %._crit_edge ], [ %.2102.us, %bb.k ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3103, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.i, %bb.m, %stringlib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %stringlib__two_way_count.exit ], [ %4, %bb.i ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stringlib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #4 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !74
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !76
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.042.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.03339.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11    ; 2 uses
  %i.h = icmp slt i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.02941.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.03339.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.03140.us.i.i ; 2 uses
  %spec.select.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  %i.l = select i1 %.not37.us.i.i, i64 %.03140.us.i.i, i64 0
  %spec.select38.us.i.i = add i64 %i.l, %.02941.us.i.i
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.132.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.03140.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %.042.us.i.i, %bb.e ], [ %.02941.us.i.i, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 3 uses
  %i.p = add i64 %.130.us.i.i, %.134.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !77

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.042.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.03339.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11    ; 2 uses
  %i.x = icmp slt i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.03339.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.03140.i.i    ; 2 uses
  %spec.select.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  %i.ad = select i1 %.not37.i.i, i64 %.03140.i.i, i64 0
  %spec.select38.i.i = add i64 %i.ad, %.02941.i.i
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.02941.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.132.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.03140.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.042.i.i, %bb.g ], [ %.02941.i.i, %bb.j ], [ %.042.i.i, %bb.i ] ; 3 uses
  %i.af = add i64 %.130.i.i, %.134.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %stringlib__factorize.exit, !llvm.loop !77

stringlib__factorize.exit:                        ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.1.us.i.i, %.1.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.1.us.i.i, i64 %.1.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.132.us.i.i, i64 %.132.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !59
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !78
  %i.ak = getelementptr i8, ptr %0, i64 %.0.sroa.speculated.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %..i)
  %i.al = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !79
  br i1 %i.al, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %stringlib__factorize.exit
  %i.ao = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ao)
  %i.ap = add i64 %., 1
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !80
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %stringlib__factorize.exit
  %i.aq = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.aq, align 8, !tbaa !81
  %i.ar = add nsw i64 %1, -1                      ; 3 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.059 = phi i64 [ %i.ba, %.critedge ], [ %i.au, %.lr.ph.preheader ] ; 4 uses
  %i.av = getelementptr i8, ptr %0, i64 %.059
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = xor i8 %i.aw, %i.at
  %i.ay = and i8 %i.ax, 63
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.az = sub nsw i64 %i.ar, %.059
  store i64 %i.az, ptr %i.aq, align 8, !tbaa !81
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.ba = add nsw i64 %.059, -1
  %i.bb = icmp sgt i64 %.059, 0
  br i1 %i.bb, label %.lr.ph, label %.lr.ph62, !llvm.loop !82

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bc = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !11
  %i.bf = sub nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.05361 = phi i64 [ %i.bf, %.lr.ph62 ], [ %i.bn, %bb.n ] ; 3 uses
  %i.bg = sub i64 %i.ar, %.05361
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr i8, ptr %0, i64 %.05361
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !11
  %i.bn = add nsw i64 %.05361, 1                  ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %1
  br i1 %i.bo, label %bb.n, label %._crit_edge, !llvm.loop !83
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76
  %.fr291 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80   ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !74     ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 %.fr291
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 %1         ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81   ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr291, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !79
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr291
  %i.t = sub i64 %.fr291, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1127 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1127.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1127, align 1, !tbaa !11
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1127, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0137 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0137, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1127.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0126.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.1144 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %.2128 = phi ptr [ %.4130, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.2128, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1144) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr291
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1144, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0135199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0135199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = getelementptr i8, ptr %i.af, i64 %.0135199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0135199, %i.o
  %i.ao = getelementptr i8, ptr %.2128, i64 %i.m
  %i.ap = sub i64 %.0135199, %.fr239
  %i.aq = getelementptr i8, ptr %.2128, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3129 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0126.be = phi ptr [ %.3129, %bb.b ], [ %.4130, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0126.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0135199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr291
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !84

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1136200, 1                    ; 2 uses
  %exitcond277.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond277.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !85

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1136200 = phi i64 [ %i.au, %bb.d ], [ %.1144, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1136200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1136200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2128, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11  ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4130.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4130 = getelementptr i8, ptr %i.az, i64 %.4130.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bk = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bl = icmp ult ptr %i.i, %i.j
  br i1 %i.bl, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bm = sub i64 0, %.fr291                      ; 3 uses
  %i.bn = icmp slt i64 %.fr239, %.fr291
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bn, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6132.us = phi ptr [ %.6132.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6132.us, align 1, !tbaa !11
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6132.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3140.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3140.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.k
  %.6132.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.k ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph210.us
  %i.bx = add nuw nsw i64 %.0209.us, 1            ; 2 uses
  %exitcond279.not = icmp eq i64 %i.bx, %.fr239
  br i1 %exitcond279.not, label %.thread170, label %.lr.ph210.us, !llvm.loop !86

.lr.ph210.us:                                     ; preds = %..preheader_crit_edge.us, %bb.h
  %.0209.us = phi i64 [ %i.bx, %bb.h ], [ 0, %..preheader_crit_edge.us ] ; 3 uses
  %i.by = getelementptr i8, ptr %i.g, i64 %.0209.us
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = getelementptr i8, ptr %i.bw, i64 %.0209.us
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %.not151.us = icmp eq i8 %i.bz, %i.cb
  br i1 %.not151.us, label %bb.h, label %.thread167.us

.thread167.us:                                    ; preds = %.lr.ph210.us
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.bk
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph207.us, %bb.l
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %i.cn, %bb.l ] ; 5 uses
  %i.cd = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %.not153.us = icmp eq i8 %i.ce, %i.cg
  br i1 %.not153.us, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp slt i64 %.0124205.us, %i.o
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.m
  %i.cj = sub i64 %.0124205.us, %.fr239
  %i.ck = getelementptr i8, ptr %i.bu, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  %.7133.us = select i1 %i.ch, ptr %i.ci, ptr %i.cl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread167.us
  %.9.us = phi ptr [ %.7133.us, %bb.j ], [ %i.cc, %.thread167.us ] ; 2 uses
  %i.cm = icmp ult ptr %.9.us, %i.j
  br i1 %i.cm, label %.preheader177.us.backedge, label %.thread

bb.l:                                             ; preds = %bb.i
  %i.cn = add nsw i64 %.0124205.us, 1             ; 2 uses
  %i.co = icmp slt i64 %i.cn, %.fr291
  br i1 %i.co, label %bb.i, label %..preheader_crit_edge.us, !llvm.loop !87

..preheader_crit_edge.us:                         ; preds = %bb.l
  br i1 %.not152208, label %.lr.ph210.us, label %.thread170

.preheader177.lr.ph.split:                        ; preds = %.preheader177.lr.ph
  br i1 %.not152208, label %.preheader177.us217, label %.preheader177

.preheader177.us217:                              ; preds = %.preheader177.lr.ph.split, %.preheader177.us217.backedge
  %.6132.us220 = phi ptr [ %.6132.us220.be, %.preheader177.us217.backedge ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.cp = load i8, ptr %.6132.us220, align 1, !tbaa !11
  %i.cq = and i8 %i.cp, 63
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = getelementptr i8, ptr %i.k, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11  ; 2 uses
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr i8, ptr %.6132.us220, i64 %i.cu ; 4 uses
  %.not293 = icmp eq i8 %i.ct, 0
  %.not150.us222 = icmp uge ptr %i.cv, %i.j
  %.159.us223 = zext i1 %.not150.us222 to i32
  %.3140.us224 = select i1 %.not293, i32 17, i32 %.159.us223
  switch i32 %.3140.us224, label %.thread [
    i32 0, label %.preheader177.us217.backedge
    i32 17, label %.preheader.us227
  ]

.preheader177.us217.backedge:                     ; preds = %.preheader177.us217, %.thread167.us233
  %.6132.us220.be = phi ptr [ %i.cv, %.preheader177.us217 ], [ %i.dd, %.thread167.us233 ]
  br label %.preheader177.us217

.preheader.us227:                                 ; preds = %.preheader177.us217
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.bm
  %i.cx = getelementptr i8, ptr %i.cw, i64 1      ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.cy = add nuw nsw i64 %.0209.us231, 1         ; 2 uses
  %exitcond278.not = icmp eq i64 %i.cy, %.fr239
  br i1 %exitcond278.not, label %.thread170, label %bb.n, !llvm.loop !86

bb.n:                                             ; preds = %.preheader.us227, %bb.m
  %.0209.us231 = phi i64 [ 0, %.preheader.us227 ], [ %i.cy, %bb.m ] ; 3 uses
  %i.cz = getelementptr i8, ptr %i.g, i64 %.0209.us231
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !11
  %i.db = getelementptr i8, ptr %i.cx, i64 %.0209.us231
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !11
  %.not151.us232 = icmp eq i8 %i.da, %i.dc
  br i1 %.not151.us232, label %bb.m, label %.thread167.us233

.thread167.us233:                                 ; preds = %bb.n
  %i.dd = getelementptr i8, ptr %i.cv, i64 %i.bk  ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.j
  br i1 %i.de, label %.preheader177.us217.backedge, label %.thread

.preheader177:                                    ; preds = %.preheader177.lr.ph.split, %.preheader177
  %.6132 = phi ptr [ %i.dl, %.preheader177 ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.df = load i8, ptr %.6132, align 1, !tbaa !11
  %i.dg = and i8 %i.df, 63
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = getelementptr i8, ptr %i.k, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !11  ; 2 uses
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr i8, ptr %.6132, i64 %i.dk ; 3 uses
  %.not292 = icmp eq i8 %i.dj, 0
  %.not150 = icmp uge ptr %i.dl, %i.j
  %.159 = zext i1 %.not150 to i32
  %.3140 = select i1 %.not292, i32 17, i32 %.159
  switch i32 %.3140, label %.thread [
    i32 0, label %.preheader177
    i32 17, label %.preheader
  ]

.preheader:                                       ; preds = %.preheader177
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.bm
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  br label %.thread170

.thread170:                                       ; preds = %bb.m, %..preheader_crit_edge.us, %bb.h, %.preheader
  %.lcssa = phi ptr [ %i.bw, %..preheader_crit_edge.us ], [ %i.dn, %.preheader ], [ %i.bw, %bb.h ], [ %i.cx, %bb.m ]
  %i.do = ptrtoint ptr %.lcssa to i64
  %i.dp = ptrtoint ptr %0 to i64
  %i.dq = sub i64 %i.do, %i.dp
  br label %.thread

.thread:                                          ; preds = %.backedge, %.preheader182, %bb.e, %.preheader177, %.thread167.us233, %.preheader177.us217, %bb.k, %.preheader177.us, %.preheader184, %bb.g, %.preheader179._crit_edge, %.thread170
  %.8 = phi i64 [ -1, %.thread167.us233 ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.dq, %.thread170 ], [ %i.bj, %.preheader179._crit_edge ], [ -1, %.preheader177 ], [ -1, %.preheader184 ], [ -1, %bb.k ], [ -1, %.preheader177.us ], [ -1, %.preheader177.us217 ], [ -1, %.preheader182 ], [ -1, %.backedge ]
  ret i64 %.8
}

declare i32 @PyObject_CheckBuffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @tailmatch(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 -1, 2) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val49 = load i64, ptr %i.b, align 8, !tbaa !56
  %i.c = and i64 %.val49, 134217728
  %.not = icmp eq i64 %i.c, 0
  %.sink54.sroa.gep55 = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sink54.sroa.gep = getelementptr i8, ptr %2, i64 16
  %i.d = getelementptr i8, ptr %2, i64 32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = call i32 @PyObject_GetBuffer(ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef 0) #14
  %.not47 = icmp eq i32 %i.e, 0
  br i1 %.not47, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %6, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sink54.sroa.phi = phi ptr [ %.sink54.sroa.gep, %bb.b ], [ %.sink54.sroa.gep55, %bb.d ]
  %.037 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ]
  %.val50 = load i64, ptr %.sink54.sroa.phi, align 8, !tbaa !59 ; 5 uses
  %i.g = icmp sgt i64 %4, %1
  br i1 %i.g, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp slt i64 %4, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = add i64 %4, %1
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.i, i64 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.039 = phi i64 [ %4, %bb.f ], [ %spec.store.select, %bb.g ], [ %1, %bb.e ] ; 3 uses
  %i.j = icmp slt i64 %3, 0
  %i.k = add i64 %3, %1
  %spec.store.select1 = call i64 @llvm.smax.i64(i64 %i.k, i64 0)
  %.040 = select i1 %i.j, i64 %spec.store.select1, i64 %3 ; 5 uses
  %i.l = icmp slt i32 %5, 0
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = sub i64 %1, %.val50
  %i.n = icmp sgt i64 %.040, %i.m
  br i1 %i.n, label %bb.n, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.o = sub i64 %.039, %.040
  %i.p = icmp slt i64 %i.o, %.val50
  %i.q = icmp sgt i64 %.040, %1
  %or.cond = or i1 %i.q, %i.p
  br i1 %or.cond, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = sub i64 %.039, %.val50
  %spec.select = call i64 @llvm.smax.i64(i64 %i.r, i64 %.040)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.1 = phi i64 [ %.040, %bb.i ], [ %spec.select, %bb.k ] ; 2 uses
  %i.s = sub i64 %.039, %.1
  %i.t = icmp slt i64 %i.s, %.val50
  br i1 %i.t, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr i8, ptr %0, i64 %.1
  %bcmp = call i32 @bcmp(ptr %i.u, ptr %.037, i64 %.val50)
  %.not48 = icmp eq i32 %bcmp, 0
  br i1 %.not48, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.038.ph = phi i32 [ 0, %bb.n ], [ 1, %bb.m ]
  call void @PyBuffer_Release(ptr noundef nonnull %6) #14
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.c
  %.038 = phi i32 [ -1, %bb.c ], [ %.038.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.038
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.smin.v2i64(<2 x i64>) #11

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !13}
!28 = !{!29, !32, i64 16}
!29 = !{!"", !30, i64 0, !31, i64 8, !32, i64 16, !32, i64 24, !8, i64 32, !8, i64 36, !33, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !30, i64 72}
!30 = !{!"any pointer", !9, i64 0}
!31 = !{!"p1 _ZTS7_object", !30, i64 0}
!32 = !{!"long", !9, i64 0}
!33 = !{!"p1 omnipotent char", !30, i64 0}
!34 = !{!"p1 long", !30, i64 0}
!35 = !{!31, !31, i64 0}
!36 = !{!29, !30, i64 0}
!37 = distinct !{!37, !13}
!38 = !{!39, !40, i64 8}
!39 = !{!"_object", !9, i64 0, !40, i64 8}
!40 = !{!"p1 _ZTS11_typeobject", !30, i64 0}
!41 = !{!42, !30, i64 96}
!42 = !{!"_typeobject", !43, i64 0, !33, i64 24, !32, i64 32, !32, i64 40, !30, i64 48, !32, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !30, i64 96, !30, i64 104, !30, i64 112, !30, i64 120, !30, i64 128, !30, i64 136, !30, i64 144, !30, i64 152, !30, i64 160, !32, i64 168, !33, i64 176, !30, i64 184, !30, i64 192, !30, i64 200, !32, i64 208, !30, i64 216, !30, i64 224, !44, i64 232, !45, i64 240, !46, i64 248, !40, i64 256, !31, i64 264, !30, i64 272, !30, i64 280, !32, i64 288, !30, i64 296, !30, i64 304, !30, i64 312, !30, i64 320, !30, i64 328, !31, i64 336, !31, i64 344, !31, i64 352, !30, i64 360, !31, i64 368, !30, i64 376, !8, i64 384, !30, i64 392, !30, i64 400, !9, i64 408, !47, i64 410}
!43 = !{!"PyVarObject", !39, i64 0, !32, i64 16}
!44 = !{!"p1 _ZTS11PyMethodDef", !30, i64 0}
!45 = !{!"p1 _ZTS11PyMemberDef", !30, i64 0}
!46 = !{!"p1 _ZTS11PyGetSetDef", !30, i64 0}
!47 = !{!"short", !9, i64 0}
!48 = !{!49, !30, i64 264}
!49 = !{!"", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !30, i64 96, !30, i64 104, !30, i64 112, !30, i64 120, !30, i64 128, !30, i64 136, !30, i64 144, !30, i64 152, !30, i64 160, !30, i64 168, !30, i64 176, !30, i64 184, !30, i64 192, !30, i64 200, !30, i64 208, !30, i64 216, !30, i64 224, !30, i64 232, !30, i64 240, !30, i64 248, !30, i64 256, !30, i64 264, !30, i64 272, !30, i64 280}
!50 = !{!42, !33, i64 24}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = !{!42, !32, i64 168}
!57 = !{!43, !32, i64 16}
!58 = distinct !{!58, !13}
!59 = !{!32, !32, i64 0}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13, !63, !64}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = distinct !{!65, !13, !64, !63}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13, !63, !64}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13, !64, !63}
!74 = !{!75, !33, i64 0}
!75 = !{!"stringlib__pre", !33, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !8, i64 40, !9, i64 44}
!76 = !{!75, !32, i64 8}
!77 = distinct !{!77, !13}
!78 = !{!75, !32, i64 16}
!79 = !{!75, !8, i64 40}
!80 = !{!75, !32, i64 24}
!81 = !{!75, !32, i64 32}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
end_hunk_2
