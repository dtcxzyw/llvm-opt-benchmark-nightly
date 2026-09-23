Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/sio_engine?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@do_sio:bb.a
  %i.ue = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.sb, i64 noundef 4102, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.t, i32 noundef 114) #17 ; 0 uses
  %i.uf = call i32 @remove(ptr noundef nonnull %i.sb) #17 ; 0 uses
  %i.ug = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.sb, i64 noundef 4102, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.t, i32 noundef 103) #17 ; 0 uses
  %i.uh = call i32 @remove(ptr noundef nonnull %i.sb) #17 ; 0 uses
  %i.ui = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.sb, i64 noundef 4102, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.t, i32 noundef 108) #17 ; 0 uses
  %i.uj = call i32 @remove(ptr noundef nonnull %i.sb) #17 ; 0 uses
  %i.uk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.sb, i64 noundef 4102, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.t, i32 noundef 111) #17 ; 0 uses
  %i.ul = call i32 @remove(ptr noundef nonnull %i.sb) #17 ; 0 uses
  br label %.loopexit.i96

bb.fa:                                            ; preds = %bb.ez
  %i.um = call i32 @remove(ptr noundef nonnull %i.t) #17 ; 0 uses
  br label %.loopexit.i96

.loopexit.i96:                                    ; preds = %.lr.ph.i98, %bb.fa, %.preheader26.preheader.i, %bb.ew, %.preheader.i97
  %i.un = load i64, ptr @fapl, align 8, !tbaa !16
  %i.uo = call i32 @H5Pclose(i64 noundef %i.un) #17 ; 0 uses
  br label %do_cleanupfile.exit

do_cleanupfile.exit:                              ; preds = %bb.ei, %bb.el, %bb.en, %.loopexit.i96
  call void @free(ptr noundef %i.sb) #17
  br label %bb.fb

bb.fb:                                            ; preds = %bb.e, %do_cleanupfile.exit, %bb.eh, %bb.dy, %bb.cu, %bb.cr, %bb.ci, %bb.ap, %bb.m, %bb.j, %bb.h, %bb.d
  %.055 = phi ptr [ null, %bb.d ], [ %i.au, %bb.ap ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.m ], [ %i.au, %do_cleanupfile.exit ], [ %i.au, %bb.eh ], [ %i.au, %bb.dy ], [ %i.au, %bb.cu ], [ %i.au, %bb.cr ], [ %i.au, %bb.ci ], [ null, %bb.e ]
  %.054 = phi i32 [ -1, %bb.d ], [ -1, %bb.ap ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.m ], [ 0, %do_cleanupfile.exit ], [ -1, %bb.eh ], [ -1, %bb.dy ], [ -1, %bb.cu ], [ -1, %bb.cr ], [ -1, %bb.ci ], [ -1, %bb.e ]
  %.053 = phi ptr [ null, %bb.d ], [ %i.t, %bb.ap ], [ %i.t, %bb.h ], [ %i.t, %bb.j ], [ %i.t, %bb.m ], [ %i.t, %do_cleanupfile.exit ], [ %i.t, %bb.eh ], [ %i.t, %bb.dy ], [ %i.t, %bb.cu ], [ %i.t, %bb.cr ], [ %i.t, %bb.ci ], [ null, %bb.e ]
  switch i32 %i.o, label %do_fclose.exit102 [
    i32 0, label %bb.fc
    i32 1, label %bb.ff
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.up = load i32, ptr %3, align 8, !tbaa !12    ; 2 uses
  %.not64 = icmp eq i32 %i.up, -1
  br i1 %.not64, label %do_fclose.exit102, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.uq = call i32 @close(i32 noundef %i.up) #17
  %.not.i99 = icmp eq i32 %i.uq, 0
  br i1 %.not.i99, label %do_fclose.exit102, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ur = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite8.i100 = call i64 @fwrite(ptr nonnull @.str.52, i64 24, i64 1, ptr %i.ur) #23 ; 0 uses
  br label %do_fclose.exit102

bb.ff:                                            ; preds = %bb.fb
  %i.us = load i64, ptr %3, align 8, !tbaa !12    ; 2 uses
  %.not63 = icmp eq i64 %i.us, -1
  br i1 %.not63, label %do_fclose.exit102, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ut = call i32 @H5Fclose(i64 noundef %i.us) #17
  %i.uu = icmp slt i32 %i.ut, 0
  br i1 %i.uu, label %bb.fh, label %do_fclose.exit102

bb.fh:                                            ; preds = %bb.fg
  %i.uv = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite.i104 = call i64 @fwrite(ptr nonnull @.str.53, i64 23, i64 1, ptr %i.uv) #23 ; 0 uses
  br label %do_fclose.exit102

do_fclose.exit102:                                ; preds = %bb.fg, %bb.fd, %bb.fh, %bb.fe, %bb.fb, %bb.ff, %bb.fc
  call void @free(ptr noundef %.055) #17
  call void @free(ptr noundef %.053) #17
  store i32 %.054, ptr %1, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @io_time_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare ptr @io_time_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @do_fopen(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 3, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  switch i32 %i.a, label %bb.p [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, 3
  %.not27 = icmp eq i32 %i.b, 0
  %. = select i1 %.not27, i32 0, i32 578
  %i.c = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %1, i32 noundef %., i32 noundef 384) #17 ; 2 uses
  store i32 %i.c, ptr %2, align 8, !tbaa !12
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.49, ptr noundef nonnull %1) #18 ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i64 @set_vfd(ptr noundef nonnull %0) ; 2 uses
  store i64 %i.g, ptr @fapl, align 8, !tbaa !16
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.27, i64 33, i64 1, ptr %i.i) #23 ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.j = load i8, ptr @H5_libinit_g, align 1, !tbaa !26, !range !27, !noundef !28
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load i8, ptr @H5_libterm_g, align 1, !range !27
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.k, i1 true, i1 %i.m
  br i1 %i.n, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @H5open() #17              ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = load i64, ptr @H5P_CLS_FILE_CREATE_ID_g, align 8, !tbaa !16
  %i.q = tail call i64 @H5Pcreate(i64 noundef %i.p) #17 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !56
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i32 @H5Pset_file_space_strategy(i64 noundef %i.q, i32 noundef 1, i1 noundef zeroext false, i64 noundef 1) #17 ; 0 uses
  %i.u = load i64, ptr %i.r, align 8, !tbaa !56
  %i.v = tail call i32 @H5Pset_file_space_page_size(i64 noundef %i.q, i64 noundef %i.u) #17 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.x = load i64, ptr %i.w, align 8, !tbaa !57   ; 2 uses
  %.not25 = icmp eq i64 %i.x, 0
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr @fapl, align 8, !tbaa !16
  %i.z = tail call i32 @H5Pset_page_buffer_size(i64 noundef %i.y, i64 noundef %i.x, i32 noundef 0, i32 noundef 0) #17 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.aa = and i32 %3, 3
  %.not26 = icmp eq i32 %i.aa, 0
  %i.ab = load i64, ptr @fapl, align 8, !tbaa !16 ; 2 uses
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call i64 @H5Fcreate(ptr noundef nonnull %1, i32 noundef 2, i64 noundef %i.q, i64 noundef %i.ab) #17
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ad = tail call i64 @H5Fopen(ptr noundef nonnull %1, i32 noundef 0, i64 noundef %i.ab) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge = phi i64 [ %i.ad, %bb.m ], [ %i.ac, %bb.l ] ; 2 uses
  store i64 %storemerge, ptr %2, align 8, !tbaa !12
  %i.ae = icmp slt i64 %storemerge, 0
  br i1 %i.ae, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.50, ptr noundef nonnull %1) #18 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str, i32 noundef %i.a) #18 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.n, %bb.p, %bb.o, %bb.e, %bb.c
  %.0 = phi i32 [ -1, %bb.p ], [ -1, %bb.c ], [ 0, %bb.b ], [ -1, %bb.e ], [ -1, %bb.o ], [ 0, %bb.n ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @set_vfd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 5 uses
  %i.b = alloca [7 x i64], align 16               ; 6 uses
  %i.c = alloca [7 x ptr], align 16               ; 11 uses
  %i.d = alloca [7 x i64], align 16               ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20
  %i.g = load i8, ptr @H5_libinit_g, align 1, !tbaa !26, !range !27, !noundef !28
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr @H5_libterm_g, align 1, !range !27
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.h, i1 true, i1 %i.j
  br i1 %i.k, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @H5open() #17              ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !16
  %i.n = tail call i64 @H5Pcreate(i64 noundef %i.m) #17 ; 8 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.f, label %bb.l [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @H5Pset_fapl_sec2(i64 noundef %i.n) #17
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.r = tail call i32 @H5Pset_fapl_stdio(i64 noundef %i.n) #17
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.t = tail call i32 @H5Pset_fapl_core(i64 noundef %i.n, i64 noundef 1048576, i1 noundef zeroext true) #17
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.v = tail call i32 @H5Pset_fapl_split(i64 noundef %i.n, ptr noundef nonnull @.str.13, i64 noundef 0, ptr noundef nonnull @.str.14, i64 noundef 0) #17
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  %i.x = tail call noalias dereferenceable_or_null(7168) ptr @calloc(i64 noundef 1, i64 noundef 7168) #19 ; 10 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.z = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 1024, ptr noundef nonnull @.str.15, i32 noundef 109) #17 ; 0 uses
  store ptr %i.x, ptr %i.c, align 16, !tbaa !22
  store i64 0, ptr %i.d, align 16, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1024 ; 2 uses
  %i.ab = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aa, i64 noundef 1024, ptr noundef nonnull @.str.15, i32 noundef 115) #17 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2048 ; 2 uses
  %i.af = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 1024, ptr noundef nonnull @.str.15, i32 noundef 98) #17 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ae, ptr %i.ag, align 16, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1844674407370955161, ptr %i.ah, align 16, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 3072 ; 2 uses
  %i.aj = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ai, i64 noundef 1024, ptr noundef nonnull @.str.15, i32 noundef 114) #17 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 3689348814741910322, ptr %i.al, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 4096 ; 2 uses
  %i.an = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.am, i64 noundef 1024, ptr noundef nonnull @.str.15, i32 noundef 103) #17 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.am, ptr %i.ao, align 16, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 5534023222112865483, ptr %i.ap, align 16, !tbaa !16
  store <6 x i64> zeroinitializer, ptr %i.b, align 16, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 5120 ; 2 uses
  %i.ar = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aq, i64 noundef 1024, ptr noundef nonnull @.str.15, i32 noundef 108) #17 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 7378697629483820644, ptr %i.at, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.au, align 16, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 6144 ; 2 uses
  %i.aw = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.av, i64 noundef 1024, ptr noundef nonnull @.str.15, i32 noundef 111) #17 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.av, ptr %i.ax, align 16, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 9223372036854775805, ptr %i.ay, align 16, !tbaa !16
  %i.az = call i32 @H5Pset_fapl_multi(i64 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext false) #17
  %i.ba = icmp sgt i32 %i.az, -1
  call void @free(ptr noundef nonnull %i.x) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %i.ba, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.bb = tail call i32 @H5Pset_fapl_family(i64 noundef %i.n, i64 noundef 1048576, i64 noundef 0) #17
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %.preheader.preheader, %bb.g, %bb.e
  br label %bb.l

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %.critedge, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %.preheader.preheader, %bb.j, %bb.k
  %.2 = phi i64 [ -1, %.critedge ], [ -1, %bb.c ], [ %i.n, %bb.k ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %.preheader.preheader ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.d ]
  ret i64 %.2
}

declare i64 @H5Pcreate(i64 noundef) local_unnamed_addr #2

declare i32 @H5open() local_unnamed_addr #2

declare i32 @H5Pset_fapl_sec2(i64 noundef) local_unnamed_addr #2

declare i32 @H5Pset_fapl_stdio(i64 noundef) local_unnamed_addr #2

declare i32 @H5Pset_fapl_core(i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @H5Pset_fapl_split(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @H5Pset_fapl_multi(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @H5Pset_fapl_family(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare i64 @H5Screate_simple(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Sselect_hyperslab(i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Pset_chunk(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @H5Dcreate2(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5Pclose(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dset_write(i32 noundef range(i32 -2147483648, 2147483647) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 7 uses
  %i.b = alloca [32 x i64], align 16              ; 5 uses
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr @order, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = add nsw i32 %i.e, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = sext i32 %i.f to i64                     ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %.not58 = icmp eq i64 %i.j, 0
  br i1 %.not58, label %.loopexit51, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds [8 x i8], ptr @h5offset, i64 %i.h ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr @offset, i64 %i.h ; 2 uses
  %i.m = icmp sgt i32 %0, 0
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 952
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 956
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.q = add nsw i32 %0, -1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.h ; 2 uses
  br i1 %i.m, label %.lr.ph57.split.us, label %.lr.ph57.split

.lr.ph57.split.us:                                ; preds = %.lr.ph57, %.lr.ph57.split.us
  %.04355.us = phi i64 [ %i.v, %.lr.ph57.split.us ], [ 0, %.lr.ph57 ] ; 3 uses
  store i64 %.04355.us, ptr %i.k, align 8, !tbaa !16
  store i64 %.04355.us, ptr %i.l, align 8, !tbaa !16
  %i.t = tail call fastcc i32 @dset_write(i32 noundef %i.q, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) ; 0 uses
  %i.u = load i64, ptr %i.s, align 8, !tbaa !16
  %i.v = add i64 %i.u, %.04355.us                 ; 2 uses
  %i.w = load i64, ptr %i.i, align 8, !tbaa !16
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %.lr.ph57.split.us, label %.loopexit51, !llvm.loop !58

.lr.ph57.split:                                   ; preds = %.lr.ph57, %bb.q
  %.04355 = phi i64 [ %i.cg, %bb.q ], [ 0, %.lr.ph57 ] ; 3 uses
  store i64 %.04355, ptr %i.k, align 8, !tbaa !16
  store i64 %.04355, ptr %i.l, align 8, !tbaa !16
  %i.y = load i32, ptr %2, align 8, !tbaa !11     ; 2 uses
  switch i32 %i.y, label %bb.p [
    i32 0, label %.preheader
    i32 1, label %bb.b
  ]

.preheader:                                       ; preds = %.lr.ph57.split
  %i.z = load i32, ptr %i.p, align 4, !tbaa !17   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph54.preheader, label %._crit_edge

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @buf_offset, i8 0, i64 %i.ac, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph54.preheader, %.preheader
  store ptr %3, ptr @buf_p, align 8, !tbaa !22
  call fastcc void @posix_buffer_write(i32 noundef 0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.q

bb.b:                                             ; preds = %.lr.ph57.split
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !24
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !60
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load i64, ptr @h5dset_space_id, align 8, !tbaa !16
  %i.ag = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.af, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %.preheader50, label %bb.e

.preheader50:                                     ; preds = %bb.d
  %i.ai = load i32, ptr %i.p, align 4, !tbaa !17  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.37, i32 noundef 649, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit51

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %i.am = phi i32 [ %i.be, %bb.j ], [ %i.ai, %.preheader50 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader50 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @h5offset, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %.not49 = icmp ugt i64 %i.ao, %i.aq
  br i1 %.not49, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @h5count, i64 %indvars.iv
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.at = add i64 %i.as, %i.ao
end_hunk_0
