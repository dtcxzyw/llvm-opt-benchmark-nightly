Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5LT?download=true
inline.NumInlined: 32
inline.NumDeleted: 2
begin_hunk_0_@H5LTget_attribute_ndims:bb.a

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @H5Sclose(i64 noundef %i.h) #19
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @H5Aclose(i64 noundef %i.e) #19
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @H5Oclose(i64 noundef %i.c) #19
  %.lobit = ashr i32 %i.o, 31
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.p = tail call i32 @H5Aclose(i64 noundef %i.e) #19 ; 0 uses
  %i.q = tail call i32 @H5Oclose(i64 noundef %i.c) #19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.b, %bb.a, %bb.j, %bb.d
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %.lobit, %bb.i ], [ -1, %bb.d ], [ -1, %bb.j ]
  ret i32 %.0
}

declare i64 @H5Aopen(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @H5Aget_space(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5LTget_attribute_info(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @H5Oopen(i64 noundef %0, ptr noundef nonnull %1, i64 noundef 0) #19 ; 5 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @H5Aopen(i64 noundef %i.c, ptr noundef nonnull %2, i64 noundef 0) #19 ; 5 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @H5Oclose(i64 noundef %i.c) #19 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @H5Aget_type(i64 noundef %i.e) #19 ; 4 uses
  %i.i = tail call i32 @H5Tget_class(i64 noundef %i.h) #19
  store i32 %i.i, ptr %4, align 4, !tbaa !8
  %i.j = tail call i64 @H5Tget_size(i64 noundef %i.h) #19
  store i64 %i.j, ptr %5, align 8, !tbaa !18
  %i.k = tail call i64 @H5Aget_space(i64 noundef %i.e) #19 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @H5Sget_simple_extent_dims(i64 noundef %i.k, ptr noundef %3, ptr noundef null) #19
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @H5Sclose(i64 noundef %i.k) #19
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 @H5Tclose(i64 noundef %i.h) #19
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @H5Aclose(i64 noundef %i.e) #19
  %.not27 = icmp eq i32 %i.r, 0
  br i1 %.not27, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @H5Oclose(i64 noundef %i.c) #19
  %.lobit = ashr i32 %i.s, 31
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.t = tail call i32 @H5Tclose(i64 noundef %i.h) #19 ; 0 uses
  %i.u = tail call i32 @H5Aclose(i64 noundef %i.e) #19 ; 0 uses
  %i.v = tail call i32 @H5Oclose(i64 noundef %i.c) #19 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.b, %bb.a, %bb.k, %bb.d
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %.lobit, %bb.j ], [ -1, %bb.d ], [ -1, %bb.k ]
  ret i32 %.0
}

declare i64 @H5Aget_type(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5LTtext_to_dtype(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %or.cond = icmp ugt i32 %1, 2
  %or.cond12 = or i1 %i.a, %or.cond
  br i1 %or.cond12, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %i.b) #23 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  store i64 %i.c, ptr @input_len, align 8, !tbaa !18
  %i.d = tail call noalias ptr @strdup(ptr noundef nonnull %0) #19 ; 2 uses
  store ptr %i.d, ptr @myinput, align 8, !tbaa !31
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !14 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %i.i, label %bb.g, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @H5open() #19              ; 0 uses
  %.pre = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14
  %.pre13 = load i8, ptr @H5_libterm_g, align 1, !range !14
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.k = phi i8 [ %i.g, %bb.e ], [ %.pre13, %bb.f ] ; 2 uses
  %i.l = phi i8 [ %i.e, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.m = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !18
  %i.n = trunc nuw i8 %i.l to i1
  %i.o = trunc nuw i8 %i.k to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.i, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 @H5open() #19              ; 0 uses
  %.pre14 = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14
  %.pre15 = load i8, ptr @H5_libterm_g, align 1, !range !14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.r = phi i8 [ %i.k, %bb.g ], [ %.pre15, %bb.h ]
  %i.s = phi i8 [ %i.l, %bb.g ], [ %.pre14, %bb.h ]
  %i.t = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !18
  %i.u = trunc nuw i8 %i.s to i1
  %i.v = trunc nuw i8 %i.r to i1
  %i.w = select i1 %i.u, i1 true, i1 %i.v
  br i1 %i.w, label %bb.k, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.x = tail call i32 @H5open() #19              ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.y = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.z = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5LTtext_to_dtype, i32 noundef 1893, i64 noundef %i.m, i64 noundef %i.t, i64 noundef %i.y, ptr noundef nonnull @.str.3) #19 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.d
  %i.aa = tail call i64 @H5LTyyparse() #19        ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  %i.ac = load ptr, ptr @myinput, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.ac) #19
  store ptr null, ptr @myinput, align 8, !tbaa !31
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr @input_len, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.c, %bb.a, %bb.m, %bb.k
  %.0 = phi i64 [ -1, %bb.k ], [ -1, %bb.a ], [ %i.aa, %bb.m ], [ -1, %bb.c ], [ -1, %bb.l ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

declare i32 @H5Epush2(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @H5LTyyparse() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5LTdtype_to_text(i64 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 1024, ptr %i.a, align 8, !tbaa !18
  %or.cond = icmp ugt i32 %2, 2
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %3, null
  %i.c = icmp ne ptr %1, null                     ; 2 uses
  %or.cond3 = or i1 %i.c, %i.b
  br i1 %or.cond3, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias dereferenceable_or_null(1024) ptr @calloc(i64 noundef 1024, i64 noundef 1) #24
  %i.e = call ptr @H5LT_dtype_to_text(i64 noundef %0, ptr noundef nonnull %i.d, i32 noundef %2, ptr noundef nonnull %i.a, i1 noundef zeroext true) ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #20
  %i.f = add i64 %4, 1
  store i64 %i.f, ptr %3, align 8, !tbaa !18
  tail call void @free(ptr noundef nonnull %i.e) #19
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.g = icmp ne ptr %3, null
  %or.cond5 = and i1 %i.c, %i.g
  br i1 %or.cond5, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @H5LT_dtype_to_text(i64 noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %3, i1 noundef zeroext false)
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load i64, ptr %3, align 8, !tbaa !18
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  store i8 0, ptr %i.k, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.c, %bb.f, %bb.d, %bb.g, %bb.e
  %.027 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.027
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define noundef ptr @H5LT_dtype_to_text(i64 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca [256 x i8], align 16              ; 6 uses
  %i.f = alloca [256 x i8], align 16              ; 6 uses
  %i.g = alloca [256 x i8], align 16              ; 6 uses
  %i.h = alloca [256 x i8], align 16              ; 6 uses
  %i.i = alloca [256 x i8], align 16              ; 6 uses
  %i.j = alloca [256 x i8], align 16              ; 6 uses
  %i.k = alloca [256 x i8], align 16              ; 6 uses
  %i.l = alloca [256 x i8], align 16              ; 6 uses
  %i.m = alloca [256 x i8], align 16              ; 6 uses
  %i.n = alloca [256 x i8], align 16              ; 6 uses
  %i.o = alloca [256 x i8], align 16              ; 6 uses
  %i.p = alloca [256 x i8], align 16              ; 6 uses
  %i.q = alloca [256 x i8], align 16              ; 6 uses
  %i.r = alloca [256 x i8], align 16              ; 6 uses
  %i.s = alloca [256 x i8], align 16              ; 6 uses
  %i.t = alloca [256 x i8], align 16              ; 59 uses
  %i.u = alloca [32 x i64], align 16              ; 6 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #19
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %realloc_and_append.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %realloc_and_append.exit

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %3, align 8, !tbaa !18     ; 3 uses
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.y = sub i64 %i.x, %i.w
  %i.z = icmp sgt i64 %i.y, -513
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.w, 1024                      ; 2 uses
  store i64 %i.aa, ptr %3, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi i64 [ %i.aa, %bb.d ], [ %i.w, %bb.c ]
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %1, i64 noundef %i.ab) #22 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %realloc_and_append.exit

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %1) #19
  br label %realloc_and_append.exit.thread

realloc_and_append.exit:                          ; preds = %bb.e, %bb.b
  %.036.i = phi ptr [ %1, %bb.b ], [ %i.ac, %bb.e ] ; 115 uses
  %.not570 = icmp eq i32 %2, 0
  br i1 %.not570, label %bb.h, label %bb.g

bb.g:                                             ; preds = %realloc_and_append.exit
  %i.ae = load i64, ptr %3, align 8, !tbaa !18
  %i.af = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.ae, ptr noundef nonnull @.str.4) #19 ; 0 uses
  br label %realloc_and_append.exit.thread

bb.h:                                             ; preds = %realloc_and_append.exit
  %i.ag = tail call i32 @H5Tget_class(i64 noundef %0) #19 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %realloc_and_append.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %i.ag, label %bb.me [
    i32 0, label %bb.j
    i32 4, label %bb.j
    i32 1, label %bb.dk
    i32 3, label %bb.gb
    i32 5, label %bb.ir
    i32 8, label %bb.jg
    i32 9, label %bb.jr
    i32 10, label %bb.kb
    i32 6, label %bb.kp
    i32 11, label %bb.lo
    i32 2, label %bb.ly
    i32 12, label %.thread727
    i32 7, label %bb.lz
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ai = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %i.am, label %bb.l, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.an = tail call i32 @H5open() #19             ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ao = load i64, ptr @H5T_STD_I8BE_g, align 8, !tbaa !18
  %i.ap = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.ao) #19
  %.not644 = icmp eq i32 %i.ap, 0
  br i1 %.not644, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i64, ptr %3, align 8, !tbaa !18
  %i.ar = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.aq, ptr noundef nonnull @.str.5) #19 ; 0 uses
  br label %.thread727

bb.n:                                             ; preds = %bb.l
  %i.as = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = select i1 %i.at, i1 true, i1 %i.av
  br i1 %i.aw, label %bb.p, label %bb.o, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.ax = tail call i32 @H5open() #19             ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ay = load i64, ptr @H5T_STD_I8LE_g, align 8, !tbaa !18
  %i.az = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.ay) #19
  %.not645 = icmp eq i32 %i.az, 0
  br i1 %.not645, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load i64, ptr %3, align 8, !tbaa !18
  %i.bb = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.ba, ptr noundef nonnull @.str.6) #19 ; 0 uses
  br label %.thread727

bb.r:                                             ; preds = %bb.p
  %i.bc = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = select i1 %i.bd, i1 true, i1 %i.bf
  br i1 %i.bg, label %bb.t, label %bb.s, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.bh = tail call i32 @H5open() #19             ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bi = load i64, ptr @H5T_STD_I16BE_g, align 8, !tbaa !18
  %i.bj = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bi) #19
  %.not646 = icmp eq i32 %i.bj, 0
  br i1 %.not646, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = load i64, ptr %3, align 8, !tbaa !18
  %i.bl = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.bk, ptr noundef nonnull @.str.7) #19 ; 0 uses
  br label %.thread727

bb.v:                                             ; preds = %bb.t
  %i.bm = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = select i1 %i.bn, i1 true, i1 %i.bp
  br i1 %i.bq, label %bb.x, label %bb.w, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.br = tail call i32 @H5open() #19             ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bs = load i64, ptr @H5T_STD_I16LE_g, align 8, !tbaa !18
  %i.bt = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bs) #19
  %.not647 = icmp eq i32 %i.bt, 0
  br i1 %.not647, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = load i64, ptr %3, align 8, !tbaa !18
  %i.bv = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.bu, ptr noundef nonnull @.str.8) #19 ; 0 uses
  br label %.thread727

bb.z:                                             ; preds = %bb.x
  %i.bw = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %i.ca, label %bb.ab, label %bb.aa, !prof !16

bb.aa:                                            ; preds = %bb.z
  %i.cb = tail call i32 @H5open() #19             ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.cc = load i64, ptr @H5T_STD_I32BE_g, align 8, !tbaa !18
  %i.cd = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cc) #19
  %.not648 = icmp eq i32 %i.cd, 0
  br i1 %.not648, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = load i64, ptr %3, align 8, !tbaa !18
  %i.cf = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.ce, ptr noundef nonnull @.str.9) #19 ; 0 uses
  br label %.thread727

bb.ad:                                            ; preds = %bb.ab
  %i.cg = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = select i1 %i.ch, i1 true, i1 %i.cj
  br i1 %i.ck, label %bb.af, label %bb.ae, !prof !16

bb.ae:                                            ; preds = %bb.ad
  %i.cl = tail call i32 @H5open() #19             ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.cm = load i64, ptr @H5T_STD_I32LE_g, align 8, !tbaa !18
  %i.cn = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cm) #19
  %.not649 = icmp eq i32 %i.cn, 0
  br i1 %.not649, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = load i64, ptr %3, align 8, !tbaa !18
  %i.cp = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.co, ptr noundef nonnull @.str.10) #19 ; 0 uses
  br label %.thread727

bb.ah:                                            ; preds = %bb.af
end_hunk_0
begin_hunk_1_@H5LT_dtype_to_text:bb.a
  %i.xp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.xn
  store i8 0, ptr %i.xp, align 1, !tbaa !9
  br label %indentation.exit705

bb.kd:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(51) %i.g, ptr noundef nonnull align 1 dereferenceable(51) @.str.87, i64 51, i1 false)
  br label %indentation.exit705

indentation.exit705:                              ; preds = %bb.kc, %bb.kd
  %i.xq = call fastcc noundef ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %.036.i, ptr noundef nonnull %i.g) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %.not583 = icmp eq ptr %i.xq, null
  br i1 %.not583, label %.thread743, label %bb.ke

bb.ke:                                            ; preds = %indentation.exit705
  %i.xr = call i32 @H5Tget_array_ndims(i64 noundef %0) #19 ; 3 uses
  %i.xs = icmp slt i32 %i.xr, 0
  br i1 %i.xs, label %.thread743, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.xt = call i32 @H5Tget_array_dims2(i64 noundef %0, ptr noundef nonnull %i.u) #19
  %i.xu = icmp slt i32 %i.xt, 0
  br i1 %i.xu, label %.thread743, label %.preheader

.preheader:                                       ; preds = %bb.kf
  %.not780 = icmp eq i32 %i.xr, 0
  br i1 %.not780, label %._crit_edge778, label %.lr.ph777.preheader

.lr.ph777.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.xr to i64
  br label %.lr.ph777

bb.kg:                                            ; preds = %.lr.ph777
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond786.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond786.not, label %._crit_edge778, label %.lr.ph777, !llvm.loop !38

.lr.ph777:                                        ; preds = %.lr.ph777.preheader, %bb.kg
  %indvars.iv = phi i64 [ 0, %.lr.ph777.preheader ], [ %indvars.iv.next, %bb.kg ] ; 2 uses
  %.7449775 = phi ptr [ %i.xq, %.lr.ph777.preheader ], [ %i.xz, %bb.kg ]
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !18
  %i.xx = trunc i64 %i.xw to i32
  %i.xy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 256, ptr noundef nonnull @.str.73, i32 noundef %i.xx) #19 ; 0 uses
  %i.xz = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %.7449775, ptr noundef nonnull %i.t) ; 3 uses
  %.not589 = icmp eq ptr %i.xz, null
  br i1 %.not589, label %.thread743, label %bb.kg

._crit_edge778:                                   ; preds = %bb.kg, %.preheader
  %.7449.lcssa = phi ptr [ %i.xq, %.preheader ], [ %i.xz, %bb.kg ]
  store i16 32, ptr %i.t, align 16
  %i.ya = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %.7449.lcssa, ptr noundef nonnull %i.t) ; 2 uses
  %.not584 = icmp eq ptr %i.ya, null
  br i1 %.not584, label %.thread743, label %bb.kh

bb.kh:                                            ; preds = %._crit_edge778
  %i.yb = call i64 @H5Tget_super(i64 noundef %0) #19 ; 3 uses
  %i.yc = icmp slt i64 %i.yb, 0
  br i1 %i.yc, label %.thread743, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.yd = call fastcc ptr @append_dtype_super_text(i64 noundef %i.yb, ptr noundef %i.ya, ptr noundef nonnull %3, i1 noundef zeroext %4) ; 2 uses
  %i.ye = call i32 @H5Tclose(i64 noundef %i.yb) #19 ; 0 uses
  %.not585.not = icmp eq ptr %i.yd, null
  br i1 %.not585.not, label %bb.ko, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  store i16 10, ptr %i.t, align 16
  %i.yf = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %i.yd, ptr noundef nonnull %i.t) ; 2 uses
  %.not586 = icmp eq ptr %i.yf, null
  br i1 %.not586, label %.thread743, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.yg = load i64, ptr @indent, align 8, !tbaa !18 ; 4 uses
  %i.yh = add i64 %i.yg, -3
  store i64 %i.yh, ptr @indent, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.yi = icmp ult i64 %i.yg, 80
  br i1 %i.yi, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.f, i8 32, i64 %i.yg, i1 false)
  %i.yj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.yg
  store i8 0, ptr %i.yj, align 1, !tbaa !9
  br label %indentation.exit706

bb.km:                                            ; preds = %bb.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(51) %i.f, ptr noundef nonnull align 1 dereferenceable(51) @.str.87, i64 51, i1 false)
  br label %indentation.exit706

indentation.exit706:                              ; preds = %bb.kl, %bb.km
  %i.yk = call fastcc noundef ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %i.yf, ptr noundef nonnull %i.f) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  %.not587 = icmp eq ptr %i.yk, null
  br i1 %.not587, label %.thread743, label %bb.kn

bb.kn:                                            ; preds = %indentation.exit706
  store i16 125, ptr %i.t, align 16
  %i.yl = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %i.yk, ptr noundef nonnull %i.t) ; 2 uses
  %.not588 = icmp eq ptr %i.yl, null
  br i1 %.not588, label %.thread743, label %.thread747

.thread747:                                       ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  br label %.thread727

.thread743:                                       ; preds = %.lr.ph777, %indentation.exit705, %bb.ke, %bb.kf, %._crit_edge778, %indentation.exit706, %bb.kj, %bb.kh, %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  br label %realloc_and_append.exit.thread

bb.ko:                                            ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  br label %realloc_and_append.exit.thread

bb.kp:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #19
  %i.ym = tail call i32 @H5Tget_nmembers(i64 noundef %0) #19 ; 3 uses
  %i.yn = icmp slt i32 %i.ym, 0
  br i1 %i.yn, label %.thread754, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.yo = load i64, ptr %3, align 8, !tbaa !18
  %i.yp = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.yo, ptr noundef nonnull @.str.75) #19 ; 0 uses
  %i.yq = load i64, ptr @indent, align 8, !tbaa !18
  %i.yr = add i64 %i.yq, 3                        ; 2 uses
  store i64 %i.yr, ptr @indent, align 8, !tbaa !18
  %.not = icmp eq i32 %i.ym, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.kr:                                            ; preds = %bb.lj
  %i.ys = add nuw nsw i32 %.1440774, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ys, %i.ym
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !39

.lr.ph:                                           ; preds = %bb.kq, %bb.kr
  %.1440774 = phi i32 [ %i.ys, %bb.kr ], [ 0, %bb.kq ] ; 4 uses
  %.10452773 = phi ptr [ %i.zw, %bb.kr ], [ %.036.i, %bb.kq ]
  %i.yt = call ptr @H5Tget_member_name(i64 noundef %0, i32 noundef %.1440774) #19 ; 3 uses
  %i.yu = icmp eq ptr %i.yt, null
  br i1 %i.yu, label %.thread754, label %bb.ks

bb.ks:                                            ; preds = %.lr.ph
  %i.yv = call i64 @H5Tget_member_type(i64 noundef %0, i32 noundef %.1440774) #19 ; 4 uses
  %i.yw = icmp slt i64 %i.yv, 0
  br i1 %i.yw, label %.thread754, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.yx = call i64 @H5Tget_member_offset(i64 noundef %0, i32 noundef %.1440774) #19
  %i.yy = load i64, ptr @indent, align 8, !tbaa !18
  %i.yz = add i64 %i.yy, 3                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.za = icmp ult i64 %i.yz, 80
  br i1 %i.za, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.e, i8 32, i64 %i.yz, i1 false)
  %i.zb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.yz
  store i8 0, ptr %i.zb, align 1, !tbaa !9
  br label %indentation.exit707

bb.kv:                                            ; preds = %bb.kt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(51) %i.e, ptr noundef nonnull align 1 dereferenceable(51) @.str.87, i64 51, i1 false)
  br label %indentation.exit707

indentation.exit707:                              ; preds = %bb.ku, %bb.kv
  %i.zc = call fastcc noundef ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef %3, ptr noundef nonnull %.10452773, ptr noundef nonnull %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %.not578 = icmp eq ptr %i.zc, null
  br i1 %.not578, label %.thread754, label %bb.kw

bb.kw:                                            ; preds = %indentation.exit707
  %i.zd = call i32 @H5Tget_class(i64 noundef %i.yv) #19 ; 2 uses
  %i.ze = icmp slt i32 %i.zd, 0
  br i1 %i.ze, label %.thread754, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.zf = icmp eq i32 %i.zd, 6                    ; 2 uses
  br i1 %i.zf, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.zg = load i64, ptr @indent, align 8, !tbaa !18
  %i.zh = add i64 %i.zg, 3
  store i64 %i.zh, ptr @indent, align 8, !tbaa !18
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 1024, ptr %i.d, align 8, !tbaa !18
  %i.zi = call noalias dereferenceable_or_null(1024) ptr @calloc(i64 noundef 1024, i64 noundef 1) #24, !inline_history !33 ; 2 uses
  store i8 0, ptr %i.zi, align 1, !tbaa !9
  %i.zj = call ptr @H5LT_dtype_to_text(i64 noundef %i.yv, ptr noundef nonnull %i.zi, i32 noundef 0, ptr noundef nonnull %i.d, i1 noundef zeroext true), !inline_history !33 ; 3 uses
  %.not.i708 = icmp eq ptr %i.zj, null
  br i1 %.not.i708, label %H5LTdtype_to_text.exit.thread, label %bb.la

H5LTdtype_to_text.exit.thread:                    ; preds = %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.thread754

bb.la:                                            ; preds = %bb.kz
  %i.zk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.zj) #20, !inline_history !33
  %i.zl = add i64 %i.zk, 1                        ; 2 uses
  store i64 %i.zl, ptr %i.v, align 8, !tbaa !18
  call void @free(ptr noundef nonnull %i.zj) #19, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.zm = call noalias ptr @calloc(i64 noundef %i.zl, i64 noundef 1) #24 ; 6 uses
  %i.zn = call i32 @H5LTdtype_to_text(i64 noundef %i.yv, ptr noundef %i.zm, i32 noundef 0, ptr noundef nonnull %i.v)
  %i.zo = icmp slt i32 %i.zn, 0
  br i1 %i.zo, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  call void @free(ptr noundef %i.zm) #19
  br label %.thread754

bb.lc:                                            ; preds = %bb.la
  %i.zp = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef %3, ptr noundef nonnull %i.zc, ptr noundef %i.zm) ; 2 uses
  %.not579 = icmp eq ptr %i.zp, null
  br i1 %.not579, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  call void @free(ptr noundef %i.zm) #19
  br label %.thread754

bb.le:                                            ; preds = %bb.lc
  %.not580 = icmp eq ptr %i.zm, null
  br i1 %.not580, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  call void @free(ptr noundef nonnull %i.zm) #19
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  br i1 %i.zf, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.zq = load i64, ptr @indent, align 8, !tbaa !18
  %i.zr = add i64 %i.zq, -3
  store i64 %i.zr, ptr @indent, align 8, !tbaa !18
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %i.zs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 256, ptr noundef nonnull @.str.76, ptr noundef nonnull %i.yt) #19 ; 0 uses
  %i.zt = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef %3, ptr noundef nonnull %i.zp, ptr noundef nonnull %i.t) ; 2 uses
  %.not581 = icmp eq ptr %i.zt, null
  br i1 %.not581, label %.thread754, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.zu = call i32 @H5free_memory(ptr noundef nonnull %i.yt) #19 ; 0 uses
  %i.zv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 256, ptr noundef nonnull @.str.77, i64 noundef %i.yx) #19 ; 0 uses
  %i.zw = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef %3, ptr noundef nonnull %i.zt, ptr noundef nonnull %i.t) ; 3 uses
  %.not582 = icmp eq ptr %i.zw, null
  br i1 %.not582, label %.thread754, label %bb.kr

._crit_edge.loopexit:                             ; preds = %bb.kr
  %.pre = load i64, ptr @indent, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.kq
  %i.zx = phi i64 [ %i.yr, %bb.kq ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %.10452.lcssa = phi ptr [ %.036.i, %bb.kq ], [ %i.zw, %._crit_edge.loopexit ]
  %i.zy = add i64 %i.zx, -3
  store i64 %i.zy, ptr @indent, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.zz = icmp ult i64 %i.zx, 80
  br i1 %i.zz, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 32, i64 %i.zx, i1 false)
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.zx
  store i8 0, ptr %i.aaa, align 1, !tbaa !9
  br label %indentation.exit709

bb.ll:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(51) %i.c, ptr noundef nonnull align 1 dereferenceable(51) @.str.87, i64 51, i1 false)
  br label %indentation.exit709

indentation.exit709:                              ; preds = %bb.lk, %bb.ll
  %i.aab = call fastcc noundef ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef %3, ptr noundef nonnull %.10452.lcssa, ptr noundef nonnull %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.not576 = icmp eq ptr %i.aab, null
  br i1 %.not576, label %.thread754, label %bb.lm

bb.lm:                                            ; preds = %indentation.exit709
  store i16 125, ptr %i.t, align 16
  %i.aac = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef %3, ptr noundef nonnull %i.aab, ptr noundef nonnull %i.t) ; 2 uses
  %.not577 = icmp eq ptr %i.aac, null
  br i1 %.not577, label %.thread754, label %bb.ln

.thread754:                                       ; preds = %bb.lj, %.lr.ph, %indentation.exit707, %bb.kw, %bb.li, %bb.ks, %bb.kp, %bb.lb, %H5LTdtype_to_text.exit.thread, %bb.ld, %indentation.exit709, %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #19
  br label %realloc_and_append.exit.thread

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #19
  br label %.thread727

bb.lo:                                            ; preds = %bb.i
  %i.aad = load i64, ptr %3, align 8, !tbaa !18
  %i.aae = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.aad, ptr noundef nonnull @.str.78) #19 ; 0 uses
  %i.aaf = load i64, ptr @indent, align 8, !tbaa !18 ; 2 uses
  %i.aag = add i64 %i.aaf, 3
  store i64 %i.aag, ptr @indent, align 8, !tbaa !18
  %i.aah = add i64 %i.aaf, 6                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.aai = icmp ult i64 %i.aah, 80
  br i1 %i.aai, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 32, i64 %i.aah, i1 false)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aah
  store i8 0, ptr %i.aaj, align 1, !tbaa !9
  br label %indentation.exit710

bb.lq:                                            ; preds = %bb.lo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(51) %i.b, ptr noundef nonnull align 1 dereferenceable(51) @.str.87, i64 51, i1 false)
  br label %indentation.exit710

indentation.exit710:                              ; preds = %bb.lp, %bb.lq
  %i.aak = call fastcc noundef ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %.036.i, ptr noundef nonnull %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not571 = icmp eq ptr %i.aak, null
  br i1 %.not571, label %realloc_and_append.exit.thread, label %bb.lr

bb.lr:                                            ; preds = %indentation.exit710
  %i.aal = call i64 @H5Tget_super(i64 noundef %0) #19 ; 3 uses
  %i.aam = icmp slt i64 %i.aal, 0
  br i1 %i.aam, label %realloc_and_append.exit.thread, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.aan = call fastcc ptr @append_dtype_super_text(i64 noundef %i.aal, ptr noundef %i.aak, ptr noundef nonnull %3, i1 noundef zeroext %4) ; 2 uses
  %i.aao = call i32 @H5Tclose(i64 noundef %i.aal) #19 ; 0 uses
  %.not572.not = icmp eq ptr %i.aan, null
  br i1 %.not572.not, label %realloc_and_append.exit.thread, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  store i16 10, ptr %i.t, align 16
  %i.aap = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %i.aan, ptr noundef nonnull %i.t) ; 2 uses
  %.not573 = icmp eq ptr %i.aap, null
  br i1 %.not573, label %realloc_and_append.exit.thread, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.aaq = load i64, ptr @indent, align 8, !tbaa !18 ; 4 uses
  %i.aar = add i64 %i.aaq, -3
  store i64 %i.aar, ptr @indent, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.aas = icmp ult i64 %i.aaq, 80
  br i1 %i.aas, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 32, i64 %i.aaq, i1 false)
  %i.aat = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aaq
  store i8 0, ptr %i.aat, align 1, !tbaa !9
  br label %indentation.exit711

bb.lw:                                            ; preds = %bb.lu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(51) %i.a, ptr noundef nonnull align 1 dereferenceable(51) @.str.87, i64 51, i1 false)
  br label %indentation.exit711

indentation.exit711:                              ; preds = %bb.lv, %bb.lw
  %i.aau = call fastcc noundef ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %i.aap, ptr noundef nonnull %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not574 = icmp eq ptr %i.aau, null
  br i1 %.not574, label %realloc_and_append.exit.thread, label %bb.lx

bb.lx:                                            ; preds = %indentation.exit711
  store i16 125, ptr %i.t, align 16
  %i.aav = call fastcc ptr @realloc_and_append(i1 noundef zeroext %4, ptr noundef nonnull %3, ptr noundef nonnull %i.aau, ptr noundef nonnull %i.t) ; 2 uses
  %.not575 = icmp eq ptr %i.aav, null
  br i1 %.not575, label %realloc_and_append.exit.thread, label %.thread727

bb.ly:                                            ; preds = %bb.i
  %i.aaw = load i64, ptr %3, align 8, !tbaa !18
  %i.aax = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.aaw, ptr noundef nonnull @.str.79) #19 ; 0 uses
  br label %.thread727

bb.lz:                                            ; preds = %bb.i
  %i.aay = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.aaz = trunc nuw i8 %i.aay to i1
  %i.aba = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.abb = trunc nuw i8 %i.aba to i1
  %i.abc = select i1 %i.aaz, i1 true, i1 %i.abb
  br i1 %i.abc, label %bb.mb, label %bb.ma, !prof !16

bb.ma:                                            ; preds = %bb.lz
  %i.abd = tail call i32 @H5open() #19            ; 0 uses
  br label %bb.mb

bb.mb:                                            ; preds = %bb.lz, %bb.ma
  %i.abe = load i64, ptr @H5T_STD_REF_DSETREG_g, align 8, !tbaa !18
  %i.abf = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.abe) #19
  %i.abg = icmp eq i32 %i.abf, 1
  %i.abh = load i64, ptr %3, align 8, !tbaa !18   ; 2 uses
  br i1 %i.abg, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.abi = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.abh, ptr noundef nonnull @.str.81) #19 ; 0 uses
  br label %.thread727

bb.md:                                            ; preds = %bb.mb
  %i.abj = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.abh, ptr noundef nonnull @.str.82) #19 ; 0 uses
  br label %.thread727

bb.me:                                            ; preds = %bb.i
  %i.abk = load i64, ptr %3, align 8, !tbaa !18
  %i.abl = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.036.i, i64 noundef %i.abk, ptr noundef nonnull @.str.83) #19 ; 0 uses
  br label %.thread727

realloc_and_append.exit.thread:                   ; preds = %bb.ls, %bb.jv, %bb.jk, %bb.ko, %bb.lx, %bb.lr, %bb.lt, %indentation.exit711, %indentation.exit710, %bb.ka, %bb.ju, %bb.jw, %indentation.exit704, %indentation.exit703, %bb.jq, %bb.jj, %bb.jl, %bb.jm, %indentation.exit702, %indentation.exit701, %bb.jf, %indentation.exit698, %bb.iu, %indentation.exit699, %bb.jb, %indentation.exit700, %bb.iq, %indentation.exit, %bb.gm, %indentation.exit694, %bb.gv, %indentation.exit695, %bb.hi, %bb.hl, %bb.ht, %bb.ii, %bb.il, %bb.ij, %bb.ig, %bb.if, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hx, %bb.hw, %bb.hu, %bb.hr, %bb.hq, %indentation.exit696, %bb.im, %indentation.exit697, %bb.hk, %bb.hj, %bb.hg, %bb.hd, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.gf, %bb.a, %bb.f, %.thread754, %.thread743, %bb.h, %bb.g
  br label %.thread727

.thread727:                                       ; preds = %bb.lx, %bb.ka, %bb.jq, %bb.ln, %.thread747, %bb.jf, %bb.iq, %bb.ly, %bb.me, %bb.q, %bb.y, %bb.ag, %bb.ao, %bb.aw, %bb.be, %bb.bm, %bb.bu, %bb.cc, %bb.ck, %bb.cs, %bb.da, %bb.di, %bb.dj, %bb.de, %bb.cw, %bb.co, %bb.cg, %bb.by, %bb.bq, %bb.bi, %bb.ba, %bb.as, %bb.ak, %bb.ac, %bb.u, %bb.m, %bb.dr, %bb.dz, %bb.eh, %bb.ep, %bb.ex, %bb.ff, %bb.fn, %bb.fv, %bb.ga, %bb.fz, %bb.fr, %bb.fj, %bb.fb, %bb.et, %bb.el, %bb.ed, %bb.dv, %bb.dn, %bb.md, %bb.mc, %bb.i, %realloc_and_append.exit.thread
  %.0441 = phi ptr [ null, %realloc_and_append.exit.thread ], [ %.036.i, %bb.mc ], [ %.036.i, %bb.ly ], [ %.036.i, %bb.i ], [ %.036.i, %bb.md ], [ %.036.i, %bb.me ], [ %.036.i, %bb.m ], [ %.036.i, %bb.q ], [ %.036.i, %bb.u ], [ %.036.i, %bb.y ], [ %.036.i, %bb.ac ], [ %.036.i, %bb.ag ], [ %.036.i, %bb.ak ], [ %.036.i, %bb.ao ], [ %.036.i, %bb.as ], [ %.036.i, %bb.aw ], [ %.036.i, %bb.ba ], [ %.036.i, %bb.be ], [ %.036.i, %bb.bi ], [ %.036.i, %bb.bm ], [ %.036.i, %bb.bq ], [ %.036.i, %bb.bu ], [ %.036.i, %bb.by ], [ %.036.i, %bb.cc ], [ %.036.i, %bb.cg ], [ %.036.i, %bb.ck ], [ %.036.i, %bb.co ], [ %.036.i, %bb.cs ], [ %.036.i, %bb.cw ], [ %.036.i, %bb.da ], [ %.036.i, %bb.de ], [ %.036.i, %bb.di ], [ %.036.i, %bb.dj ], [ %.036.i, %bb.dn ], [ %.036.i, %bb.dr ], [ %.036.i, %bb.dv ], [ %.036.i, %bb.dz ], [ %.036.i, %bb.ed ], [ %.036.i, %bb.eh ], [ %.036.i, %bb.el ], [ %.036.i, %bb.ep ], [ %.036.i, %bb.et ], [ %.036.i, %bb.ex ], [ %.036.i, %bb.fb ], [ %.036.i, %bb.ff ], [ %.036.i, %bb.fj ], [ %.036.i, %bb.fn ], [ %.036.i, %bb.fr ], [ %.036.i, %bb.fv ], [ %.036.i, %bb.fz ], [ %.036.i, %bb.ga ], [ %i.aav, %bb.lx ], [ %i.uu, %bb.iq ], [ %i.xi, %bb.ka ], [ %i.wp, %bb.jq ], [ %i.yl, %.thread747 ], [ %i.aac, %bb.ln ], [ %i.vu, %bb.jf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #19
  ret ptr %.0441
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @realloc_and_append(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %0, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not44 = icmp eq ptr %3, null
  %i.a = load i64, ptr %1, align 8, !tbaa !18     ; 6 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20 ; 2 uses
  br i1 %.not44, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #20
  %i.d = add i64 %i.b, 1
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = sub i64 %i.a, %i.e
  %i.g = icmp slt i64 %i.f, 512
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = and i64 %i.e, -1024
  %i.i = add i64 %i.a, 1024
  %i.j = add i64 %i.i, %i.h
  br label %.sink.split

.critedge:                                        ; preds = %bb.c
  %i.k = sub i64 %i.b, %i.a
  %i.l = icmp sgt i64 %i.k, -513
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.m = add i64 %i.a, 1024
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ %i.m, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  store i64 %.sink, ptr %1, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %.critedge
  %i.n = phi i64 [ %i.a, %bb.d ], [ %i.a, %.critedge ], [ %.sink, %.sink.split ]
  %i.o = tail call ptr @realloc(ptr noundef nonnull %2, i64 noundef %i.n) #22 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %2) #19
  br label %bb.n

.thread:                                          ; preds = %bb.g, %bb.b
  %.1 = phi ptr [ %2, %bb.b ], [ %i.o, %bb.g ]    ; 8 uses
  %.not45 = icmp eq ptr %3, null
  br i1 %.not45, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1) #20 ; 3 uses
  %i.r = load i64, ptr %1, align 8, !tbaa !18
  %i.s = add i64 %i.r, -1                         ; 4 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #20
  %i.v = add i64 %i.u, %i.q
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.1, ptr noundef nonnull dereferenceable(1) %3) #19 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.y = sub nuw i64 %i.s, %i.q
  %i.z = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %.1, ptr noundef nonnull %3, i64 noundef %i.y) #19 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 %i.s
  store i8 0, ptr %i.aa, align 1, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.a, %.thread, %bb.k, %bb.l, %bb.m
  %.036 = phi ptr [ %.1, %.thread ], [ %.1, %bb.m ], [ %.1, %bb.l ], [ %.1, %bb.k ], [ null, %bb.h ], [ null, %bb.a ]
  ret ptr %.036
}

declare i32 @H5Tequal(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @H5Tget_strpad(i64 noundef) local_unnamed_addr #1

declare i32 @H5Tget_cset(i64 noundef) local_unnamed_addr #1

declare i32 @H5Tis_variable_str(i64 noundef) local_unnamed_addr #1

declare i32 @H5Tset_cset(i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @H5Tget_order(i64 noundef) local_unnamed_addr #1

declare i32 @H5Tset_order(i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @H5Tget_tag(i64 noundef) local_unnamed_addr #1

declare i32 @H5free_memory(ptr noundef) local_unnamed_addr #1

declare i64 @H5Tget_super(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @append_dtype_super_text(i64 noundef range(i64 0, -9223372036854775808) %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 1024, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noalias dereferenceable_or_null(1024) ptr @calloc(i64 noundef 1024, i64 noundef 1) #24, !inline_history !33
  %i.d = call ptr @H5LT_dtype_to_text(i64 noundef %0, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef nonnull %i.a, i1 noundef zeroext true), !inline_history !33 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %H5LTdtype_to_text.exit.thread, label %bb.b

H5LTdtype_to_text.exit.thread:                    ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20, !inline_history !33
  %i.e = add i64 %4, 1                            ; 3 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !18
  tail call void @free(ptr noundef nonnull %i.d) #19, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 1) #24 ; 6 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr @H5_libterm_g, align 1, !range !14 ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.h, i1 true, i1 %i.j
  br i1 %i.k, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %6 = tail call i32 @H5open() #19                ; 0 uses
  %.pre = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14
  %.pre27 = load i8, ptr @H5_libterm_g, align 1, !range !14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = phi i8 [ %i.i, %bb.d ], [ %.pre27, %bb.e ] ; 2 uses
  %i.m = phi i8 [ %i.g, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.n = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !18
  %i.o = trunc nuw i8 %i.m to i1
  %i.p = trunc nuw i8 %i.l to i1
  %i.q = select i1 %i.o, i1 true, i1 %i.p
  br i1 %i.q, label %bb.h, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %7 = tail call i32 @H5open() #19                ; 0 uses
  %.pre28 = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14
  %.pre29 = load i8, ptr @H5_libterm_g, align 1, !range !14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.r = phi i8 [ %i.l, %bb.f ], [ %.pre29, %bb.g ]
  %i.s = phi i8 [ %i.m, %bb.f ], [ %.pre28, %bb.g ]
  %i.t = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !18
  %i.u = trunc nuw i8 %i.s to i1
  %i.v = trunc nuw i8 %i.r to i1
  %i.w = select i1 %i.u, i1 true, i1 %i.v
  br i1 %i.w, label %bb.j, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %8 = tail call i32 @H5open() #19                ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.x = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %9 = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.append_dtype_super_text, i32 noundef 2230, i64 noundef %i.n, i64 noundef %i.t, i64 noundef %i.x, ptr noundef nonnull @.str.3) #19 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  %i.y = call ptr @H5LT_dtype_to_text(i64 noundef %0, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %i.b, i1 noundef zeroext false), !inline_history !33
  %.not33.i = icmp eq ptr %i.y, null
  br i1 %.not33.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %5) #19
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.b, align 8, !tbaa !18
  %i.aa = getelementptr i8, ptr %5, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  store i8 0, ptr %i.ab, align 1, !tbaa !9
  %10 = tail call fastcc ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %5)
  tail call void @free(ptr noundef nonnull %5) #19
  br label %bb.n

bb.n:                                             ; preds = %H5LTdtype_to_text.exit.thread, %bb.m, %bb.b, %bb.l, %bb.j
  %.1 = phi ptr [ null, %bb.j ], [ null, %H5LTdtype_to_text.exit.thread ], [ null, %bb.l ], [ null, %bb.b ], [ %10, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @print_enum(i64 noundef %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = tail call i32 @H5Tget_nmembers(i64 noundef %0) #19 ; 7 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.loopexit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @H5Tget_super(i64 noundef %0) #19 ; 7 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.thread141, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @H5Tget_sign(i64 noundef %i.e) #19
  %i.h = icmp eq i32 %i.g, 0
  %i.i = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.j, i1 true, i1 %i.l
  br i1 %i.m, label %.lr.ph.preheader, label %.lr.ph.preheader.sink.split, !prof !16

.lr.ph.preheader.sink.split:                      ; preds = %bb.c
  %i.n = tail call i32 @H5open() #19              ; 0 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph.preheader.sink.split
  %H5T_NATIVE_UINT_g.val = load i64, ptr @H5T_NATIVE_UINT_g, align 8
  %H5T_NATIVE_INT_g.val = load i64, ptr @H5T_NATIVE_INT_g, align 8
  %.094 = select i1 %i.h, i64 %H5T_NATIVE_UINT_g.val, i64 %H5T_NATIVE_INT_g.val ; 4 uses
  %i.o = tail call i64 @H5Tget_size(i64 noundef %i.e) #19 ; 2 uses
  %i.p = tail call i64 @H5Tget_size(i64 noundef %.094) #19 ; 2 uses
  %i.q = zext nneg i32 %i.c to i64                ; 3 uses
  %i.r = tail call noalias ptr @calloc(i64 noundef %i.q, i64 noundef 8) #24 ; 7 uses
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.o)
  %i.t = tail call noalias ptr @calloc(i64 noundef %i.q, i64 noundef %i.s) #24 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.v = tail call ptr @H5Tget_member_name(i64 noundef %0, i32 noundef %i.u) #19 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.v, ptr %i.w, align 8, !tbaa !31
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.y = mul i64 %i.o, %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  %i.aa = tail call i32 @H5Tget_member_value(i64 noundef %0, i32 noundef %i.u, ptr noundef %i.z) #19
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %i.ac = icmp sgt i64 %.094, 0
  br i1 %i.ac, label %bb.f, label %.lr.ph150

bb.f:                                             ; preds = %._crit_edge
  %i.ad = tail call i32 @H5Tconvert(i64 noundef %i.e, i64 noundef %.094, i64 noundef %i.q, ptr noundef %i.t, ptr noundef null, i64 noundef 0) #19
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph150

.lr.ph150:                                        ; preds = %._crit_edge, %bb.f
  %i.af = add i64 %4, 3                           ; 3 uses
  %i.ag = icmp ult i64 %i.af, 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  %wide.trip.count163 = zext nneg i32 %i.c to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.n
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count163
  br i1 %exitcond164.not, label %.lr.ph152.preheader, label %bb.h, !llvm.loop !41

.lr.ph152.preheader:                              ; preds = %bb.g
  %wide.trip.count169 = zext nneg i32 %i.c to i64
  br label %.lr.ph152

bb.h:                                             ; preds = %.lr.ph150, %bb.g
  %indvars.iv159 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next160, %bb.g ] ; 3 uses
  %.099147 = phi ptr [ %1, %.lr.ph150 ], [ %i.ba, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 32, i64 %i.af, i1 false)
  store i8 0, ptr %i.ah, align 1, !tbaa !9
  br label %indentation.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(51) %i.a, ptr noundef nonnull align 1 dereferenceable(51) @.str.87, i64 51, i1 false)
  br label %indentation.exit

indentation.exit:                                 ; preds = %bb.i, %bb.j
  %i.ai = call fastcc noundef ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef nonnull %.099147, ptr noundef nonnull %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %indentation.exit
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv159
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 256, ptr noundef nonnull @.str.88, ptr noundef %i.ak) #19
  %i.am = call fastcc ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.b) ; 2 uses
  %.not115 = icmp eq ptr %i.am, null
  br i1 %.not115, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = sub nsw i32 19, %i.al
  %i.ao = call i32 @llvm.smax.i32(i32 %i.an, i32 3)
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 32, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !9
  %i.as = call fastcc ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef nonnull %i.am, ptr noundef nonnull %i.b) ; 2 uses
  %.not116 = icmp eq ptr %i.as, null
  br i1 %.not116, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call i32 @H5Tget_sign(i64 noundef %.094) #19
  %i.au = icmp eq i32 %i.at, 0
  %i.av = mul i64 %i.p, %indvars.iv159
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %.str.89..str.90 = select i1 %i.au, ptr @.str.89, ptr @.str.90
  %i.ay = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 256, ptr noundef nonnull %.str.89..str.90, i32 noundef %i.ax) #19 ; 0 uses
  %i.az = call fastcc ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef nonnull %i.as, ptr noundef nonnull %i.b) ; 2 uses
  %.not117 = icmp eq ptr %i.az, null
  br i1 %.not117, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, i64 3, i1 false)
  %i.ba = call fastcc ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef nonnull %i.az, ptr noundef nonnull %i.b) ; 3 uses
  %.not118 = icmp eq ptr %i.ba, null
  br i1 %.not118, label %.loopexit, label %bb.g

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %.lr.ph152
  %indvars.iv165 = phi i64 [ 0, %.lr.ph152.preheader ], [ %indvars.iv.next166, %.lr.ph152 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv165
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = call i32 @H5free_memory(ptr noundef %i.bc) #19 ; 0 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge153, label %.lr.ph152, !llvm.loop !42

._crit_edge153:                                   ; preds = %.lr.ph152
  call void @free(ptr noundef nonnull %i.r) #19
  call void @free(ptr noundef nonnull %i.t) #19
  br label %.thread141.sink.split

.loopexit.thread:                                 ; preds = %bb.a
  %i.be = icmp eq i32 %i.c, 0
  br i1 %i.be, label %.thread, label %.thread141

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %indentation.exit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.f
  %.not119 = icmp eq ptr %i.r, null
  br i1 %.not119, label %bb.q, label %.lr.ph155.preheader

.thread:                                          ; preds = %.loopexit.thread
  %i.bf = tail call fastcc ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef nonnull %1, ptr noundef nonnull @.str.71)
  %i.bg = add i64 %4, 5
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 32, i64 %i.bg, i1 false)
  %i.bh = getelementptr i8, ptr %i.b, i64 %4
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  store i8 0, ptr %i.bi, align 1, !tbaa !9
  %i.bj = call fastcc ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef %i.bf, ptr noundef nonnull %i.b)
  %i.bk = call fastcc ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef %i.bj, ptr noundef nonnull @.str.91) ; 0 uses
  br label %bb.q

.lr.ph155.preheader:                              ; preds = %.loopexit
  %wide.trip.count174 = zext nneg i32 %i.c to i64
  br label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.p
  %indvars.iv171 = phi i64 [ 0, %.lr.ph155.preheader ], [ %indvars.iv.next172, %bb.p ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv171
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 2 uses
  %.not121 = icmp eq ptr %i.bm, null
  br i1 %.not121, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph155
end_hunk_1
