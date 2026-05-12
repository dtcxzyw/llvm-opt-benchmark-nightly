inline.NumInlined: 175
inline.NumDeleted: 38
begin_hunk_0_@get_pointer:bb.a
  %.pn = phi ptr [ %i.ac, %bb.j ], [ %i.ad, %bb.k ]
  %.in = getelementptr [8 x i8], ptr %.pn, i64 %.01740
  %i.ae = load ptr, ptr %.in, align 8, !tbaa !14
  %i.af = call i64 @PyLong_AsSsize_t(ptr noundef %i.ae) #15
  %i.ag = getelementptr [8 x i8], ptr %i.c, i64 %.01740 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !17
  %i.ah = call ptr @PyErr_Occurred() #15
  %.not24 = icmp eq ptr %i.ah, null
  br i1 %.not24, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %3 = load i64, ptr %i.ag, align 8, !tbaa !17    ; 3 uses
  %i.ai = icmp slt i64 %3, 0
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.01740
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17
  %.not25 = icmp slt i64 %3, %i.al
  br i1 %.not25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  %i.an = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.am, ptr noundef nonnull @.str.15, i64 noundef %3, i64 noundef %.01740) #15 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.n
end_hunk_0
