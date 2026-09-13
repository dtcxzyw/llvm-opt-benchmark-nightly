Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5LT?download=true
inline.NumInlined: 32
inline.NumDeleted: 2
begin_hunk_0_@realloc_and_append:bb.a
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
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20, !inline_history !33
  %i.f = add i64 %i.e, 1                          ; 3 uses
  store i64 %i.f, ptr %i.b, align 8, !tbaa !18
  call void @free(ptr noundef nonnull %i.d) #19, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #24 ; 6 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load i8, ptr @H5_libterm_g, align 1, !range !14 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.j, i1 true, i1 %i.l
  br i1 %i.m, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @H5open() #19                   ; 0 uses
  %.pre = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14
  %.pre27 = load i8, ptr @H5_libterm_g, align 1, !range !14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = phi i8 [ %i.k, %bb.d ], [ %.pre27, %bb.e ] ; 2 uses
  %i.p = phi i8 [ %i.i, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.q = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !18
  %i.r = trunc nuw i8 %i.p to i1
  %i.s = trunc nuw i8 %i.o to i1
  %i.t = select i1 %i.r, i1 true, i1 %i.s
  br i1 %i.t, label %bb.h, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @H5open() #19                   ; 0 uses
  %.pre28 = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14
  %.pre29 = load i8, ptr @H5_libterm_g, align 1, !range !14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = phi i8 [ %i.o, %bb.f ], [ %.pre29, %bb.g ]
  %i.w = phi i8 [ %i.p, %bb.f ], [ %.pre28, %bb.g ]
  %i.x = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !18
  %i.y = trunc nuw i8 %i.w to i1
  %i.z = trunc nuw i8 %i.v to i1
  %i.aa = select i1 %i.y, i1 true, i1 %i.z
  br i1 %i.aa, label %bb.j, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 @H5open() #19                  ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ac = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !18
  %i.ad = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.append_dtype_super_text, i32 noundef 2230, i64 noundef %i.q, i64 noundef %i.x, i64 noundef %i.ac, ptr noundef nonnull @.str.3) #19 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  %i.ae = call ptr @H5LT_dtype_to_text(i64 noundef %0, ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.b, i1 noundef zeroext false), !inline_history !33
  %.not33.i = icmp eq ptr %i.ae, null
  br i1 %.not33.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.h) #19
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.af = load i64, ptr %i.b, align 8, !tbaa !18
  %i.ag = getelementptr i8, ptr %i.h, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  store i8 0, ptr %i.ah, align 1, !tbaa !9
  %i.ai = call fastcc ptr @realloc_and_append(i1 noundef zeroext %3, ptr noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  call void @free(ptr noundef nonnull %i.h) #19
  br label %bb.n

bb.n:                                             ; preds = %H5LTdtype_to_text.exit.thread, %bb.m, %bb.b, %bb.l, %bb.j
  %.1 = phi ptr [ null, %bb.j ], [ null, %H5LTdtype_to_text.exit.thread ], [ null, %bb.l ], [ null, %bb.b ], [ %i.ai, %bb.m ]
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
  call void @free(ptr noundef nonnull %i.bm) #19
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph155, %bb.o
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !43

._crit_edge156:                                   ; preds = %bb.p
  call void @free(ptr noundef %i.r) #19
  br label %bb.q

bb.q:                                             ; preds = %.thread, %._crit_edge156, %.loopexit
  %.095198 = phi i64 [ -1, %.thread ], [ %i.e, %._crit_edge156 ], [ %i.e, %.loopexit ] ; 2 uses
  %.096194 = phi ptr [ null, %.thread ], [ %i.t, %._crit_edge156 ], [ %i.t, %.loopexit ] ; 2 uses
  %.not120 = icmp eq ptr %.096194, null
  br i1 %.not120, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %.096194) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = icmp sgt i64 %.095198, -1
  br i1 %i.bn, label %.thread141.sink.split, label %.thread141

.thread141.sink.split:                            ; preds = %bb.s, %._crit_edge153
  %.095198.sink = phi i64 [ %i.e, %._crit_edge153 ], [ %.095198, %bb.s ]
  %.098.ph = phi ptr [ %i.ba, %._crit_edge153 ], [ null, %bb.s ]
  %i.bo = call i32 @H5Tclose(i64 noundef %.095198.sink) #19 ; 0 uses
  br label %.thread141

.thread141:                                       ; preds = %.thread141.sink.split, %.loopexit.thread, %bb.b, %bb.s
  %.098 = phi ptr [ null, %bb.b ], [ null, %.loopexit.thread ], [ null, %bb.s ], [ %.098.ph, %.thread141.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret ptr %.098
}

declare i32 @H5Tget_array_ndims(i64 noundef) local_unnamed_addr #1

declare i32 @H5Tget_array_dims2(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @H5Tget_nmembers(i64 noundef) local_unnamed_addr #1

declare ptr @H5Tget_member_name(i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @H5Tget_member_type(i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @H5Tget_member_offset(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5LTget_attribute_string(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @H5Oopen(i64 noundef %0, ptr noundef nonnull %1, i64 noundef 0) #19 ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @H5LT_get_attribute_disk(i64 noundef %i.c, ptr noundef nonnull %2, ptr noundef %3)
  %i.f = tail call i32 @H5Oclose(i64 noundef %i.c) #19
  %.lobit = ashr i32 %i.f, 31
  %.inv = icmp sgt i32 %i.e, -1
  %spec.select = select i1 %.inv, i32 %.lobit, i32 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %spec.select, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5LT_get_attribute_disk(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @H5Aopen(i64 noundef %0, ptr noundef %1, i64 noundef 0) #19 ; 5 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @H5Aget_type(i64 noundef %i.a) #19 ; 4 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @H5Aread(i64 noundef %i.a, i64 noundef %i.c, ptr noundef %2) #19
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @H5Tclose(i64 noundef %i.c) #19
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @H5Aclose(i64 noundef %i.a) #19
  %.lobit = ashr i32 %i.i, 31
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = tail call i32 @H5Tclose(i64 noundef %i.c) #19 ; 0 uses
  %i.k = tail call i32 @H5Aclose(i64 noundef %i.a) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.f ], [ %.lobit, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5LTget_attribute_char(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5open() #19              ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = load i64, ptr @H5T_NATIVE_SCHAR_g, align 8, !tbaa !18
  %i.h = tail call fastcc i32 @H5LT_get_attribute_mem(i64 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.g, ptr noundef %3)
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5LT_get_attribute_mem(i64 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @H5Oopen(i64 noundef %0, ptr noundef nonnull %1, i64 noundef 0) #19 ; 5 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %.thread23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @H5Aopen(i64 noundef %i.c, ptr noundef nonnull %2, i64 noundef 0) #19 ; 6 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @H5Aread(i64 noundef %i.e, i64 noundef %3, ptr noundef %4) #19
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @H5Aclose(i64 noundef %i.e) #19
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
