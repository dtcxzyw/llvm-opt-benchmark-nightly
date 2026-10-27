Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_file_open?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mca_common_ompio_file_close:bb.a
  call void @free(ptr noundef nonnull %i.bk) #14
  store ptr null, ptr %i.bj, align 8, !tbaa !73
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !76 ; 2 uses
  %.not123 = icmp eq ptr %i.bm, null
  br i1 %.not123, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.bm) #14
  store ptr null, ptr %i.bl, align 8, !tbaa !76
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !54 ; 8 uses
  %.not124 = icmp eq ptr %i.bo, null
  br i1 %.not124, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !88
  %i.br = icmp ugt i32 %i.bq, 5
  br i1 %i.br, label %bb.an, label %opal_convertor_cleanup.exit, !prof !70

bb.an:                                            ; preds = %bb.am
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 80 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !89
  call void @free(ptr noundef %i.bt) #14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !89
  store i32 5, ptr %i.bp, align 8, !tbaa !88
  %.pre = load ptr, ptr %i.bn, align 8, !tbaa !54
  br label %opal_convertor_cleanup.exit

opal_convertor_cleanup.exit:                      ; preds = %bb.am, %bb.an
  %i.bv = phi ptr [ %i.bo, %bb.am ], [ %.pre, %bb.an ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store ptr null, ptr %i.bw, align 8, !tbaa !143
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store i32 0, ptr %i.bx, align 8, !tbaa !144
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store i32 134217760, ptr %i.by, align 4, !tbaa !145
  call void @free(ptr noundef %i.bv) #14
  store ptr null, ptr %i.bn, align 8, !tbaa !54
  br label %bb.ao

bb.ao:                                            ; preds = %opal_convertor_cleanup.exit, %bb.al
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !55 ; 8 uses
  %.not125 = icmp eq ptr %i.ca, null
  br i1 %.not125, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !88
  %i.cd = icmp ugt i32 %i.cc, 5
  br i1 %i.cd, label %bb.aq, label %opal_convertor_cleanup.exit135, !prof !70

bb.aq:                                            ; preds = %bb.ap
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 80 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !89
  call void @free(ptr noundef %i.cf) #14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 144
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !89
  store i32 5, ptr %i.cb, align 8, !tbaa !88
  %.pre136 = load ptr, ptr %i.bz, align 8, !tbaa !55
  br label %opal_convertor_cleanup.exit135

opal_convertor_cleanup.exit135:                   ; preds = %bb.ap, %bb.aq
  %i.ch = phi ptr [ %i.ca, %bb.ap ], [ %.pre136, %bb.aq ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store ptr null, ptr %i.ci, align 8, !tbaa !143
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  store i32 0, ptr %i.cj, align 8, !tbaa !144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  store i32 134217760, ptr %i.ck, align 4, !tbaa !145
  call void @free(ptr noundef %i.ch) #14
  store ptr null, ptr %i.bz, align 8, !tbaa !55
  br label %bb.ar

bb.ar:                                            ; preds = %opal_convertor_cleanup.exit135, %bb.ao
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !80 ; 2 uses
  %.not126 = icmp eq ptr %i.cm, null
  br i1 %.not126, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.cm) #14
  store ptr null, ptr %i.cl, align 8, !tbaa !80
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !137 ; 2 uses
  %.not127 = icmp eq ptr %i.co, null
  br i1 %.not127, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.co) #14
  store ptr null, ptr %i.cn, align 8, !tbaa !137
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !61
  call void @free(ptr noundef %i.cq) #14
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !138 ; 2 uses
  %.not128 = icmp eq ptr %i.cs, null
  br i1 %.not128, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.cs) #14
  store ptr null, ptr %i.cr, align 8, !tbaa !138
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !29
  %.not129 = icmp eq ptr %i.cu, @ompi_mpi_datatype_null
  br i1 %.not129, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cv = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.ct) #14 ; 0 uses
  store ptr @ompi_mpi_datatype_null, ptr %i.ct, align 8, !tbaa !29
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !77
  %.not130 = icmp eq ptr %i.cx, @ompi_mpi_datatype_null
  br i1 %.not130, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cy = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.cw) #14 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !78
  %.not131 = icmp eq ptr %i.da, @ompi_mpi_datatype_null
  br i1 %.not131, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.db = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.cz) #14 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !79
  %.not132 = icmp eq ptr %i.dd, @ompi_mpi_datatype_null
  br i1 %.not132, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.de = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.dc) #14 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !30
  %.not133 = icmp eq ptr %i.df, @ompi_mpi_comm_null
  br i1 %.not133, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !63
  %i.di = and i32 %i.dh, 64
  %.not134 = icmp eq i32 %i.di, 0
  br i1 %.not134, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.dj = call i32 @ompi_comm_free(ptr noundef nonnull %i.b) #14 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.a, %bb.b, %bb.d
  %.083 = phi i32 [ 0, %bb.a ], [ %i.l, %bb.d ], [ 0, %bb.b ], [ %.4, %bb.bh ], [ %.4, %bb.bg ], [ %.4, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.083
}

declare i32 @mca_common_ompio_empty_print_queue(ptr noundef) local_unnamed_addr #2

declare i32 @mca_common_ompio_print_time_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_delete(ptr noundef %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.18) #14
  br label %mca_common_ompio_create_incomplete_file_handle.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(456) ptr @calloc(i64 noundef 1, i64 noundef 456) #15 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.19) #14
  br label %mca_common_ompio_create_incomplete_file_handle.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @ompi_mpi_comm_null, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %0, ptr %i.e, align 8, !tbaa !60
  %i.f = tail call i32 @mca_fs_base_file_select(ptr noundef nonnull %i.b, ptr noundef null) #14 ; 2 uses
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.17) #14
  br label %mca_common_ompio_create_incomplete_file_handle.exit.thread.sink.split

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, ptr noundef null) #14
  br label %mca_common_ompio_create_incomplete_file_handle.exit.thread.sink.split

mca_common_ompio_create_incomplete_file_handle.exit.thread.sink.split: ; preds = %bb.f, %bb.g
  %.0.ph = phi i32 [ %i.f, %bb.f ], [ %i.k, %bb.g ]
  tail call void @free(ptr noundef nonnull %i.b) #14
  br label %mca_common_ompio_create_incomplete_file_handle.exit.thread

mca_common_ompio_create_incomplete_file_handle.exit.thread: ; preds = %mca_common_ompio_create_incomplete_file_handle.exit.thread.sink.split, %bb.d, %bb.b
  %.0 = phi i32 [ -2, %bb.d ], [ -1, %bb.b ], [ %.0.ph, %mca_common_ompio_create_incomplete_file_handle.exit.thread.sink.split ]
  ret i32 %.0
}

declare i32 @mca_fs_base_file_unselect(ptr noundef) local_unnamed_addr #2

declare i32 @mca_fbtl_base_file_unselect(ptr noundef) local_unnamed_addr #2

declare i32 @mca_fcoll_base_file_unselect(ptr noundef) local_unnamed_addr #2

declare i32 @mca_sharedfp_base_file_unselect(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @ompi_datatype_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @ompi_comm_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_get_size(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1) #14
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @mca_common_ompio_file_get_position(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i64, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load i64, ptr %i.d, align 8, !tbaa !148  ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load i64, ptr %i.g, align 8, !tbaa !149  ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !150
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !151
  %i.n = sub nsw i64 %i.k, %i.m
  %i.o = sdiv i64 %i.n, %i.b
  %i.p = udiv i64 %i.e, %i.h
  %i.q = mul i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = load i64, ptr %i.r, align 8, !tbaa !152
  %i.t = udiv i64 %i.s, %i.h
  %i.u = add i64 %i.t, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %storemerge = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !68
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @opal_info_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare i32 @ompi_datatype_create_struct(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mca_common_ompio_create_incomplete_file_handle(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.18) #14
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(456) ptr @calloc(i64 noundef 1, i64 noundef 456) #15 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.19) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @ompi_mpi_comm_null, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %0, ptr %i.e, align 8, !tbaa !60
  store ptr %i.b, ptr %1, align 8, !tbaa !154
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mca_common_ompio_decode_datatype(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.opal_convertor_t, align 8   ; 8 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = call i32 @opal_convertor_clone(ptr noundef %5, ptr noundef nonnull %8, i32 noundef 0) #14 ; 0 uses
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = call i32 @opal_convertor_prepare_for_send(ptr noundef nonnull %8, ptr noundef %1, i64 noundef %i.d, ptr noundef %3) #14
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.20) #14
  br label %opal_convertor_cleanup.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !164  ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %4, align 8, !tbaa !81
  store i32 0, ptr %7, align 4, !tbaa !53
  store ptr null, ptr %6, align 8, !tbaa !165
  br label %opal_convertor_cleanup.exit

bb.e:                                             ; preds = %bb.c
  store i32 100, ptr %i.a, align 4, !tbaa !53
  %i.i = call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #16 ; 12 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %.preheader68

.preheader68:                                     ; preds = %bb.e
  %i.k = mul i64 %i.g, %i.d                       ; 2 uses
  %i.l = call i32 @opal_convertor_raw(ptr noundef nonnull %8, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph72, label %._crit_edge73

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.21) #14
  br label %opal_convertor_cleanup.exit

.lr.ph72:                                         ; preds = %.preheader68, %._crit_edge
  %.05971 = phi i64 [ %i.ba, %._crit_edge ], [ %i.k, %.preheader68 ]
  %i.n = load i32, ptr %7, align 4, !tbaa !53
  %i.o = load i32, ptr %i.a, align 4, !tbaa !53
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
  store i32 %i.p, ptr %7, align 4, !tbaa !53
  %i.q = load i64, ptr %4, align 8, !tbaa !81
  %i.r = load i64, ptr %i.b, align 8, !tbaa !81
  %i.s = add i64 %i.r, %i.q
  store i64 %i.s, ptr %4, align 8, !tbaa !81
  %i.t = load ptr, ptr %6, align 8, !tbaa !165
  %i.u = zext i32 %i.p to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = call ptr @realloc(ptr noundef %i.t, i64 noundef %i.v) #17 ; 5 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !165
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.lr.ph72
  %i.y = load i32, ptr %i.a, align 4, !tbaa !53   ; 5 uses
  %.not80 = icmp eq i32 %i.y, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.z = load i32, ptr %7, align 4, !tbaa !53
  %invariant.op = sub i32 %i.z, %i.y              ; 3 uses
  %wide.trip.count = zext i32 %i.y to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aa = icmp eq i32 %i.y, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph72
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.21) #14
  call void @free(ptr noundef nonnull %i.i) #14
end_hunk_0
