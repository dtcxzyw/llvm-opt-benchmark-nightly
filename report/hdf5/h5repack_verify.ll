Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5repack_verify?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@h5repack_verify:bb.a
  br i1 %.not347, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @trav_table_free(ptr noundef nonnull %i.wg) #8
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.wh = load i32, ptr %i.l, align 4, !tbaa !12
  %.not348 = icmp eq i32 %i.wh, 0
  %i.wi = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.wj = load ptr, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  br i1 %.not348, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.wk = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.wi, ptr noundef %i.wj) #8 ; 0 uses
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  %i.wl = call i32 @H5Eset_auto1(ptr noundef %i.wi, ptr noundef %i.wj) #8 ; 0 uses
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @free(ptr noundef %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5Epush2(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i64 @H5Fopen(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @H5Dopen2(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @H5Dget_space(i64 noundef) local_unnamed_addr #3

declare i64 @H5Dget_create_plist(i64 noundef) local_unnamed_addr #3

declare i64 @H5Dget_type(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @verify_filters(i64 noundef range(i64 0, -9223372036854775808) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca [256 x i32], align 16             ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca [256 x i8], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = tail call i32 @H5Pget_nfilters(i64 noundef %0) #8 ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.loopexit69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 0
  %i.h = icmp eq i32 %2, 1
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 8, !tbaa !61
  %i.j = icmp eq i32 %i.i, 0
  %spec.select = zext i1 %i.j to i32
  br label %.loopexit69

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.e, %2
  br i1 %.not, label %.preheader76, label %.loopexit69

.preheader76:                                     ; preds = %bb.d
  %.not104 = icmp eq i32 %2, 0
  br i1 %.not104, label %.loopexit69, label %.lr.ph83

.lr.ph83:                                         ; preds = %.preheader76
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph83, %.loopexit
  %indvars.iv.a = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next.a, %.loopexit ] ; 3 uses
  store i64 256, ptr %i.c, align 8, !tbaa !14
  %i.l = trunc nuw nsw i64 %indvars.iv.a to i32
  %i.m = call i32 @H5Pget_filter2(i64 noundef %0, i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef 256, ptr noundef nonnull %i.d, ptr noundef null) #8 ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.loopexit69, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %indvars.iv.a ; 11 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !61
  %.not56 = icmp eq i32 %i.m, %i.p
  br i1 %.not56, label %bb.g, label %.loopexit69

bb.g:                                             ; preds = %bb.f
  switch i32 %i.m, label %bb.t [
    i32 0, label %.loopexit
    i32 2, label %bb.h
    i32 4, label %bb.l
    i32 5, label %bb.o
    i32 6, label %.preheader70
    i32 3, label %bb.q
    i32 1, label %bb.q
  ]

.preheader70:                                     ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.b, align 16, !tbaa !12
  %i.s = load i32, ptr %i.q, align 8, !tbaa !12
  %.not59 = icmp eq i32 %i.r, %i.s
  br i1 %.not59, label %bb.p, label %.loopexit69

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.c, align 8, !tbaa !14
  %.not64 = icmp eq i64 %i.t, 1
  br i1 %.not64, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1032
  %i.v = load i64, ptr %i.u, align 8, !tbaa !62
  %.not65 = icmp eq i64 %i.v, 0
  br i1 %.not65, label %bb.j, label %.loopexit69

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = call i64 @H5Tget_size(i64 noundef %1) #8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit69, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load i32, ptr %i.b, align 16, !tbaa !12
  %i.z = zext i32 %i.y to i64
  %.not66 = icmp eq i64 %i.w, %i.z
  br i1 %.not66, label %.loopexit, label %.loopexit69

bb.l:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !14
  %.not61 = icmp eq i64 %i.aa, 4
  br i1 %.not61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 1032
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !62
  %.not62 = icmp eq i64 %i.ac, 2
  br i1 %.not62, label %bb.n, label %.loopexit69

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %.not63 = icmp eq i32 %i.ad, %i.af
  br i1 %.not63, label %.loopexit, label %.loopexit69

bb.o:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 1032
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !62
  %.not60 = icmp eq i64 %i.ah, 0
  br i1 %.not60, label %.loopexit, label %.loopexit69

bb.p:                                             ; preds = %.preheader70
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %.not59.1 = icmp eq i32 %i.ai, %i.ak
  br i1 %.not59.1, label %.loopexit, label %.loopexit69

bb.q:                                             ; preds = %bb.g, %bb.g
  %i.al = load i64, ptr %i.c, align 8, !tbaa !14  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 1032
  %i.an = load i64, ptr %i.am, align 8, !tbaa !62
  %.not57 = icmp eq i64 %i.al, %i.an
  br i1 %.not57, label %.preheader73, label %.loopexit69

.preheader73:                                     ; preds = %bb.q
  %.not105 = icmp eq i64 %i.al, 0
  br i1 %.not105, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %4 = add i32 %.178, 1                           ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.ap = icmp ugt i64 %i.al, %5
  br i1 %i.ap, label %bb.s, label %.loopexit, !llvm.loop !57

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %i.aq = phi i64 [ 0, %.lr.ph ], [ %5, %bb.r ]   ; 2 uses
  %.178 = phi i32 [ 0, %.lr.ph ], [ %4, %bb.r ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aq
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %.not58 = icmp eq i32 %i.as, %i.au
  br i1 %.not58, label %bb.r, label %.loopexit69

bb.t:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.c, align 8, !tbaa !14  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 1032
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !62
  %.not67 = icmp eq i64 %i.av, %i.ax
  br i1 %.not67, label %.preheader, label %.loopexit69

.preheader:                                       ; preds = %bb.t
  %.not106 = icmp eq i64 %i.av, 0
  br i1 %.not106, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %6 = add i32 %.280, 1                           ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.az = icmp ugt i64 %i.av, %7
  br i1 %i.az, label %bb.v, label %.loopexit, !llvm.loop !58

bb.v:                                             ; preds = %.lr.ph81, %bb.u
  %i.ba = phi i64 [ 0, %.lr.ph81 ], [ %7, %bb.u ] ; 2 uses
  %.280 = phi i32 [ 0, %.lr.ph81 ], [ %6, %bb.u ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %.not68 = icmp eq i32 %i.bc, %i.be
  br i1 %.not68, label %bb.u, label %.loopexit69

.loopexit:                                        ; preds = %bb.r, %bb.u, %bb.p, %.preheader73, %.preheader, %bb.g, %bb.k, %bb.n, %bb.o
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit69, label %bb.e, !llvm.loop !59

.loopexit69:                                      ; preds = %bb.e, %bb.f, %bb.i, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.q, %bb.t, %.loopexit, %.preheader70, %bb.p, %bb.s, %bb.v, %bb.c, %.preheader76, %bb.d, %bb.a
  %.050 = phi i32 [ 0, %bb.v ], [ -1, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.d ], [ 0, %bb.s ], [ 1, %.preheader76 ], [ 0, %.preheader70 ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.k ], [ -1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.f ], [ -1, %bb.e ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.p ], [ 1, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.050
}

declare i32 @H5Pclose(i64 noundef) local_unnamed_addr #3

declare i32 @H5Sclose(i64 noundef) local_unnamed_addr #3

declare i32 @H5Dclose(i64 noundef) local_unnamed_addr #3

declare i32 @H5Tclose(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @h5trav_set_index(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @trav_table_init(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @h5trav_gettable(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @init_packobject(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @trav_table_free(ptr noundef) local_unnamed_addr #3

declare i64 @H5Fget_create_plist(i64 noundef) local_unnamed_addr #3

declare i32 @H5Pget_file_space_strategy(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Pget_file_space_page_size(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Eauto_is_v2(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Eget_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Eset_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Eget_auto1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Eset_auto1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Fclose(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @h5repack_cmp_pl(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 22 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %union.anon.0, align 8              ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 6568
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 6688
  %i.i = load i8, ptr %i.h, align 8, !tbaa !65, !range !33, !noundef !34
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 6689
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66, !range !33, !noundef !34
  %i.m = trunc nuw i8 %i.l to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i1 [ true, %bb.a ], [ %i.m, %bb.b ]
  %i.o = tail call i64 @h5tools_fopen(ptr noundef %0, i32 noundef 0, i64 noundef %i.g, i1 noundef zeroext %i.n, ptr noundef null, i64 noundef 0) #8 ; 6 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @enable_error_stack, align 4, !tbaa !12
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !14 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  %i.u = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr @H5E_tools_g, align 8, !tbaa !14
  %i.x = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !14
  %i.y = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.s, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.h5repack_cmp_pl, i32 noundef 389, i64 noundef %i.u, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull @.str.22) #8 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull @.str.22) #11 ; 0 uses
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !16
  %fputc223 = tail call i32 @fputc(i32 10, ptr %i.ab) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 6576
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 6690
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !68, !range !33, !noundef !34
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 6691
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !69, !range !33, !noundef !34
  %i.aj = trunc nuw i8 %i.ai to i1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi i1 [ true, %bb.h ], [ %i.aj, %bb.i ]
  %i.al = tail call i64 @h5tools_fopen(ptr noundef %1, i32 noundef 0, i64 noundef %i.ad, i1 noundef zeroext %i.ak, ptr noundef null, i64 noundef 0) #8 ; 74 uses
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr @enable_error_stack, align 4, !tbaa !12
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ap = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !14 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  %i.ar = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1
  %or.cond3 = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = load i64, ptr @H5E_tools_g, align 8, !tbaa !14
  %i.au = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !14
  %i.av = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ap, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.h5repack_cmp_pl, i32 noundef 392, i64 noundef %i.ar, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.21, ptr noundef %1, ptr noundef nonnull @.str.22) #8 ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.21, ptr noundef %1, ptr noundef nonnull @.str.22) #11 ; 0 uses
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !16
  %fputc222 = tail call i32 @fputc(i32 10, ptr %i.ay) ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.j
  %i.az = load i32, ptr @sort_by, align 4, !tbaa !12
  %i.ba = load i32, ptr @sort_order, align 4, !tbaa !12
  tail call void @h5trav_set_index(i32 noundef %i.az, i32 noundef %i.ba) #8
  call void @trav_table_init(i64 noundef %i.o, ptr noundef nonnull %i.c) #8
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.bc = call i32 @h5trav_gettable(i64 noundef %i.o, ptr noundef %i.bb) #8
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !25
  %.not475 = icmp eq i64 %i.bg, 0
  br i1 %.not475, label %.loopexit, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr @enable_error_stack, align 4, !tbaa !12
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.bj = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !14 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  %i.bl = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, -1
end_hunk_0
