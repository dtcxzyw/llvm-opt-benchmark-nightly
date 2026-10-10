Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/memoryobject?download=true
inline.NumInlined: 188
inline.NumDeleted: 69
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@init_slice:bb.a
  %.031 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.031
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 0, 2) i64 @is_multiindex(ptr nofree noundef readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr i8, ptr %.val12, i64 168
  %.val13 = load i64, ptr %i.b, align 8, !tbaa !93
  %i.c = and i64 %.val13, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_PyIndex_Check.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !92  ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = icmp sgt i64 %.val, 0
  br i1 %i.f, label %.lr.ph, label %_PyIndex_Check.exit.thread

bb.c:                                             ; preds = %_PyIndex_Check.exit
  %i.g = add nuw nsw i64 %.0917, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %.val
  br i1 %exitcond.not, label %_PyIndex_Check.exit.thread, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0917 = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.e, i64 %.0917
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val14 = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr i8, ptr %.val14, i64 96
  %.val14.val = load ptr, ptr %i.k, align 8, !tbaa !94 ; 2 uses
  %.not.i = icmp eq ptr %.val14.val, null
  br i1 %.not.i, label %_PyIndex_Check.exit.thread, label %_PyIndex_Check.exit

_PyIndex_Check.exit:                              ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.val14.val, i64 264
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %_PyIndex_Check.exit.thread, label %bb.c

_PyIndex_Check.exit.thread:                       ; preds = %_PyIndex_Check.exit, %bb.c, %.lr.ph, %bb.b, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %_PyIndex_Check.exit ], [ 0, %.lr.ph ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @memory_item_multi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !92
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %i.j = and i32 %i.i, 1
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.8) #15
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 96
  %.val17 = load ptr, ptr %i.l, align 8, !tbaa !61 ; 3 uses
  %i.m = load i8, ptr %.val17, align 1, !tbaa !44
  %i.n = icmp eq i8 %i.m, 64
  %.idx.i = zext i1 %i.n to i64
  %i.o = getelementptr i8, ptr %.val17, i64 %.idx.i ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %adjust_fmt.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.o, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !44
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %adjust_fmt.exit, label %adjust_fmt.exit.thread

adjust_fmt.exit.thread:                           ; preds = %bb.d, %bb.e
  %i.t = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !46
  %i.u = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.t, ptr noundef nonnull @.str.19, ptr noundef nonnull %.val17) #15 ; 0 uses
  br label %bb.i

adjust_fmt.exit:                                  ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %.val, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %adjust_fmt.exit
  %i.z = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.23) #15
  br label %bb.i

bb.g:                                             ; preds = %adjust_fmt.exit
  %i.aa = tail call fastcc ptr @ptr_from_tuple(ptr noundef %i.a, ptr noundef nonnull %1) ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call fastcc ptr @unpack_single(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.o)
  br label %bb.i

bb.i:                                             ; preds = %adjust_fmt.exit.thread, %bb.g, %bb.h, %bb.f, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.ac, %bb.h ], [ null, %bb.f ], [ null, %adjust_fmt.exit.thread ], [ null, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_multislice(ptr nofree noundef readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val14 = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr i8, ptr %.val14, i64 168
  %.val16 = load i64, ptr %i.b, align 8, !tbaa !93
  %i.c = and i64 %.val16, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !92  ; 3 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = icmp sgt i64 %.val, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.01018, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %.val
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !134

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.01018 = phi i64 [ %i.h, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %.01018
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val15 = load ptr, ptr %i.k, align 8, !tbaa !75
  %.not17 = icmp eq ptr %.val15, @PySlice_Type
  br i1 %.not17, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.c ]
  ret i32 %.2
}

declare i32 @PySlice_Unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PySlice_AdjustIndices(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ptr_from_tuple(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !92  ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = icmp sgt i64 %.val, %i.e
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i64 %.val, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr i8, ptr %1, i64 32
  %i.i = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 64         ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !46
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.24, i32 noundef %i.d, i64 noundef %.val) #15 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %.01940 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %bb.m ] ; 10 uses
  %.02039 = phi ptr [ %i.a, %.lr.ph ], [ %phi.call, %bb.m ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.h, i64 %.01940
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.p = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !46
  %i.q = tail call i64 @PyNumber_AsSsize_t(ptr noundef %i.o, ptr noundef %i.p) #15 ; 3 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.h, label %.split

.split:                                           ; preds = %bb.c
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %.01940
  %i.u = load i64, ptr %i.t, align 8, !tbaa !59   ; 2 uses
  %i.v = icmp slt i64 %i.q, 0
  %i.w = select i1 %i.v, i64 %i.u, i64 0
  %spec.select.i = add i64 %i.w, %i.q             ; 3 uses
  %i.x = icmp sgt i64 %spec.select.i, -1
  %.not.i = icmp slt i64 %spec.select.i, %i.u
  %or.cond.i = select i1 %i.x, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split
  %i.y = trunc i64 %.01940 to i32
  %i.z = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !46
  %i.aa = add i32 %i.y, 1
  %i.ab = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.z, ptr noundef nonnull @.str.20, i32 noundef %i.aa) #15 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %.split
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %.01940
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !59
  %i.af = mul i64 %i.ae, %spec.select.i
  %i.ag = getelementptr i8, ptr %.02039, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %.not25.i = icmp eq ptr %i.ah, null
  br i1 %.not25.i, label %lookup_dimension.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.01940
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !59 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %bb.g, label %lookup_dimension.exit

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !72
  %i.am = getelementptr i8, ptr %i.al, i64 %i.aj
  br label %lookup_dimension.exit

bb.h:                                             ; preds = %bb.c
  %i.an = tail call ptr @PyErr_Occurred() #15
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.split23, label %.critedge

.split23:                                         ; preds = %bb.h
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.01940
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !59 ; 2 uses
  %or.cond.i29 = icmp sgt i64 %i.aq, 0
  br i1 %or.cond.i29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split23
  %i.ar = trunc i64 %.01940 to i32
  %i.as = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !46
  %i.at = add i32 %i.ar, 1
  %i.au = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.as, ptr noundef nonnull @.str.20, i32 noundef %i.at) #15 ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %.split23
  %spec.select.i27 = add nsw i64 %i.aq, -1
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %.01940
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = mul i64 %i.ax, %spec.select.i27
  %i.az = getelementptr i8, ptr %.02039, i64 %i.ay ; 3 uses
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %.not25.i31 = icmp eq ptr %i.ba, null
  br i1 %.not25.i31, label %lookup_dimension.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %.01940
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !59 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  br i1 %i.bd, label %bb.l, label %lookup_dimension.exit

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !72
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bc
  br label %lookup_dimension.exit

lookup_dimension.exit:                            ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e
  %phi.call = phi ptr [ %i.ag, %bb.e ], [ %i.az, %bb.k ], [ %i.am, %bb.g ], [ %i.ag, %bb.f ], [ %i.az, %bb.j ], [ %i.bf, %bb.l ] ; 3 uses
  %.not36 = icmp eq ptr %phi.call, null
  br i1 %.not36, label %.critedge, label %bb.m

bb.m:                                             ; preds = %lookup_dimension.exit
  %i.bg = add nuw nsw i64 %.01940, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %.val
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !135

.critedge:                                        ; preds = %lookup_dimension.exit, %bb.m, %bb.h, %.preheader, %bb.i, %bb.d, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.i ], [ null, %bb.d ], [ %i.a, %.preheader ], [ %phi.call, %bb.m ], [ null, %lookup_dimension.exit ], [ null, %bb.h ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @pack_single(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !44
  switch i8 %i.a, label %bb.co [
    i8 98, label %bb.b
    i8 104, label %bb.b
    i8 105, label %bb.b
    i8 108, label %bb.b
    i8 66, label %bb.q
    i8 72, label %bb.q
    i8 73, label %bb.q
    i8 76, label %bb.q
    i8 113, label %bb.af
    i8 81, label %bb.an
    i8 110, label %bb.av
    i8 78, label %bb.bd
    i8 102, label %bb.bl
    i8 100, label %bb.bl
    i8 101, label %bb.bl
    i8 63, label %bb.bu
    i8 99, label %bb.bz
    i8 80, label %bb.ce
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = tail call ptr @_PyNumber_Index(ptr noundef nonnull %2) #15 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %pylong_as_ld.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @PyLong_AsLong(ptr noundef nonnull %i.b) #15 ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i, label %bb.d, label %pylong_as_ld.exit

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.b, align 8, !tbaa !44
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %pylong_as_ld.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #15
  br label %pylong_as_ld.exit

pylong_as_ld.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.h = icmp eq i64 %i.d, -1
  br i1 %i.h, label %pylong_as_ld.exit.thread, label %bb.f

pylong_as_ld.exit.thread:                         ; preds = %bb.b, %pylong_as_ld.exit
  %i.i = tail call ptr @PyErr_Occurred() #15
  %.not141 = icmp eq ptr %i.i, null
  br i1 %.not141, label %bb.f, label %bb.ck

bb.f:                                             ; preds = %pylong_as_ld.exit.thread, %pylong_as_ld.exit
  %.0.i157 = phi i64 [ -1, %pylong_as_ld.exit.thread ], [ %i.d, %pylong_as_ld.exit ] ; 7 uses
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %i.l = and i32 %i.k, 1
  %.not142 = icmp eq i32 %i.l, 0
  br i1 %.not142, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28
  %i.q = and i32 %i.p, 1
  %.not143 = icmp eq i32 %i.q, 0
  br i1 %.not143, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.8) #15
  br label %fix_error_int.exit

bb.i:                                             ; preds = %bb.g
  %i.s = load i8, ptr %3, align 1, !tbaa !44
  switch i8 %i.s, label %bb.p [
    i8 98, label %bb.j
    i8 104, label %bb.l
    i8 105, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.t = add i64 %.0.i157, -128
  %or.cond = icmp ult i64 %i.t, -256
  br i1 %or.cond, label %bb.cn, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = trunc nsw i64 %.0.i157 to i8
  store i8 %i.u, ptr %1, align 1, !tbaa !44
  br label %fix_error_int.exit

bb.l:                                             ; preds = %bb.i
  %i.v = add i64 %.0.i157, -32768
  %or.cond3 = icmp ult i64 %i.v, -65536
  br i1 %or.cond3, label %bb.cn, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = trunc nsw i64 %.0.i157 to i16
  store i16 %i.w, ptr %1, align 1
  br label %fix_error_int.exit

bb.n:                                             ; preds = %bb.i
  %i.x = add i64 %.0.i157, -2147483648
  %or.cond5 = icmp ult i64 %i.x, -4294967296
  br i1 %or.cond5, label %bb.cn, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = trunc nsw i64 %.0.i157 to i32
  store i32 %i.y, ptr %1, align 1
  br label %fix_error_int.exit

bb.p:                                             ; preds = %bb.i
  store i64 %.0.i157, ptr %1, align 1
  br label %fix_error_int.exit

bb.q:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.z = tail call ptr @_PyNumber_Index(ptr noundef nonnull %2) #15 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %pylong_as_lu.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = tail call i64 @PyLong_AsUnsignedLong(ptr noundef nonnull %i.z) #15 ; 2 uses
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %.not.i.i146 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i146, label %bb.s, label %pylong_as_lu.exit

bb.s:                                             ; preds = %bb.r
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.z, align 8, !tbaa !44
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.t, label %pylong_as_lu.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #15
  br label %pylong_as_lu.exit

pylong_as_lu.exit:                                ; preds = %bb.r, %bb.s, %bb.t
  %i.af = icmp eq i64 %i.ab, -1
  br i1 %i.af, label %pylong_as_lu.exit.thread, label %bb.u

pylong_as_lu.exit.thread:                         ; preds = %bb.q, %pylong_as_lu.exit
  %i.ag = tail call ptr @PyErr_Occurred() #15
  %.not138 = icmp eq ptr %i.ag, null
  br i1 %.not138, label %bb.u, label %bb.ck

bb.u:                                             ; preds = %pylong_as_lu.exit.thread, %pylong_as_lu.exit
  %.0.i147160 = phi i64 [ -1, %pylong_as_lu.exit.thread ], [ %i.ab, %pylong_as_lu.exit ] ; 7 uses
  %i.ah = getelementptr i8, ptr %0, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !51
  %i.aj = and i32 %i.ai, 1
  %.not139 = icmp eq i32 %i.aj, 0
  br i1 %.not139, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ak = getelementptr i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !28
  %i.ao = and i32 %i.an, 1
  %.not140 = icmp eq i32 %i.ao, 0
  br i1 %.not140, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ap = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.ap, ptr noundef nonnull @.str.8) #15
  br label %fix_error_int.exit

bb.x:                                             ; preds = %bb.v
  %i.aq = load i8, ptr %3, align 1, !tbaa !44
  switch i8 %i.aq, label %bb.ae [
    i8 66, label %bb.y
    i8 72, label %bb.aa
end_hunk_0
