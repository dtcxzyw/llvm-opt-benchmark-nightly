Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_handle_eXIf:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !192
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.a) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.j, null
  br i1 %.not27.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 range(i64 0, 4294967296) %i.a, i1 false)
  store ptr %i.j, ptr %i.b, align 8, !tbaa !59, !alias.scope !192
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 %i.a, ptr %i.k, align 8, !tbaa !60, !alias.scope !192
  br label %png_crc_read.exit

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.l = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %bb.k

png_crc_read.exit:                                ; preds = %bb.f, %bb.c
  %.021.i = phi ptr [ %i.c, %bb.c ], [ %i.j, %bb.f ] ; 4 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.a) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.a) #13
  %i.m = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %png_crc_read.exit
  %i.n = load i32, ptr %.021.i, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %bb.i [
    i32 1296891946, label %bb.j
    i32 1229531648, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #13
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.h
  tail call void @png_set_eXIf_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %.021.i) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %png_crc_read.exit, %bb.j, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.i ], [ 3, %bb.j ], [ 0, %png_crc_read.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_gAMA(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.j, %i.q
  %i.s = or disjoint i32 %i.r, %i.n
  %i.t = or disjoint i32 %i.s, %i.f               ; 2 uses
  %i.u = icmp slt i32 %i.f, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.30) #13
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @png_set_gAMA_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %i.t) #13
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !82
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.t, ptr %i.v, align 4, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %png_crc_read.exit, %bb.d
  %.0 = phi i32 [ 0, %png_crc_read.exit ], [ 0, %bb.d ], [ 3, %bb.f ], [ 3, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_hIST(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = lshr i32 %2, 1                           ; 3 uses
  %i.d = and i32 %2, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load i16, ptr %i.e, align 8, !tbaa !83
  %i.g = zext i16 %i.f to i32
  %i.h = icmp ne i32 %i.c, %i.g
  %i.i = icmp ugt i32 %2, 513
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not22 = icmp eq i32 %i.c, 0
  br i1 %.not22, label %._crit_edge, label %png_crc_read.exit.preheader

png_crc_read.exit.preheader:                      ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %png_crc_read.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.30) #13
  br label %bb.e

png_crc_read.exit:                                ; preds = %png_crc_read.exit.preheader, %png_crc_read.exit
  %indvars.iv = phi i64 [ 0, %png_crc_read.exit.preheader ], [ %indvars.iv.next, %png_crc_read.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2) #13
  %i.l = load i8, ptr %i.b, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i16
  %i.n = shl nuw i16 %i.m, 8
  %i.o = load i8, ptr %i.j, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.n, %i.p
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.q, ptr %i.r, align 2, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %png_crc_read.exit, !llvm.loop !193

._crit_edge:                                      ; preds = %png_crc_read.exit, %.preheader
  %i.s = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not20 = icmp eq i32 %i.s, 0
  br i1 %.not20, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  call void @png_set_hIST(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %.018 = phi i32 [ 0, %bb.c ], [ 3, %bb.d ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_iCCP(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [81 x i8], align 16               ; 19 uses
  %i.c = alloca [132 x i8], align 16              ; 14 uses
  %i.d = alloca [1024 x i8], align 16             ; 8 uses
  %i.e = alloca i64, align 8                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %spec.select = tail call i32 @llvm.umin.i32(i32 %2, i32 81) ; 4 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %spec.select to i64        ; 2 uses
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.g) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.g) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.h = sub nuw i32 %2, %spec.select             ; 3 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !45
  %i.i = icmp ult i32 %i.h, 11
  br i1 %i.i, label %.thread146, label %.preheader

.preheader:                                       ; preds = %png_crc_read.exit
  %invariant.umin = call i32 @llvm.umin.i32(i32 %2, i32 80) ; 3 uses
  %or.cond123171.not = icmp eq i32 %2, 0
  br i1 %or.cond123171.not, label %.thread155, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %invariant.umin to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %2, 16
  br i1 %min.iters.check, label %.lr.ph.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 112          ; 6 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !8
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.j = icmp eq <16 x i8> %wide.load.fr, zeroinitializer ; 2 uses
  %i.k = bitcast <16 x i1> %i.j to i16
  %.not186 = icmp eq i16 %i.k, 0
  br i1 %.not186, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.l = icmp eq i64 %n.vec, 16
  br i1 %i.l, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.interim
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !8
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.n = icmp eq <16 x i8> %wide.load.fr.1, zeroinitializer ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not186.1 = icmp eq i16 %i.o, 0
  br i1 %.not186.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.1
  %i.p = icmp eq i64 %n.vec, 32
  br i1 %i.p, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.interim.1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.q, align 16, !tbaa !8
  %wide.load.fr.2 = freeze <16 x i8> %wide.load.2
  %i.r = icmp eq <16 x i8> %wide.load.fr.2, zeroinitializer ; 2 uses
  %i.s = bitcast <16 x i1> %i.r to i16
  %.not186.2 = icmp eq i16 %i.s, 0
  br i1 %.not186.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.2
  %i.t = icmp eq i64 %n.vec, 48
  br i1 %i.t, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.interim.2
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load.3 = load <16 x i8>, ptr %i.u, align 16, !tbaa !8
  %wide.load.fr.3 = freeze <16 x i8> %wide.load.3
  %i.v = icmp eq <16 x i8> %wide.load.fr.3, zeroinitializer ; 2 uses
  %i.w = bitcast <16 x i1> %i.v to i16
  %.not186.3 = icmp eq i16 %i.w, 0
  br i1 %.not186.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.3
  %i.x = icmp eq i64 %n.vec, 64
  br i1 %i.x, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.interim.3
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %wide.load.4 = load <16 x i8>, ptr %i.y, align 16, !tbaa !8
  %wide.load.fr.4 = freeze <16 x i8> %wide.load.4
  %i.z = icmp eq <16 x i8> %wide.load.fr.4, zeroinitializer ; 2 uses
  %i.aa = bitcast <16 x i1> %i.z to i16
  %.not186.4 = icmp eq i16 %i.aa, 0
  br i1 %.not186.4, label %middle.block, label %vector.early.exit

middle.block:                                     ; preds = %vector.body.4, %vector.body.interim.3, %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

vector.early.exit:                                ; preds = %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %index.lcssa = phi i64 [ 0, %vector.ph ], [ 16, %vector.body.1 ], [ 32, %vector.body.2 ], [ 48, %vector.body.3 ], [ 64, %vector.body.4 ]
  %.lcssa = phi <16 x i1> [ %i.j, %vector.ph ], [ %i.n, %vector.body.1 ], [ %i.r, %vector.body.2 ], [ %i.v, %vector.body.3 ], [ %i.z, %vector.body.4 ]
  %i.ab = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa, i1 false)
  %i.ac = add i64 %index.lcssa, %i.ab
  br label %.critedge.split.loop.exit

.thread146:                                       ; preds = %png_crc_read.exit
  %i.ad = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.preheader187, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader187 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %.not = icmp eq i8 %i.af, 0
  br i1 %.not, label %.critedge.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !194

.critedge.split.loop.exit:                        ; preds = %.lr.ph, %vector.early.exit
  %indvars.iv.lcssa = phi i64 [ %i.ac, %vector.early.exit ], [ %indvars.iv, %.lr.ph ]
  %i.ag = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %middle.block, %.critedge.split.loop.exit
  %.084.lcssa = phi i32 [ %i.ag, %.critedge.split.loop.exit ], [ %invariant.umin, %middle.block ], [ %invariant.umin, %bb.c ] ; 3 uses
  %i.ah = add nsw i32 %.084.lcssa, -1
  %or.cond = icmp ult i32 %i.ah, 79
  br i1 %or.cond, label %bb.d, label %.thread155

bb.d:                                             ; preds = %.critedge
  %i.ai = add nuw nsw i32 %.084.lcssa, 1          ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, %spec.select
  br i1 %i.aj, label %bb.e, label %.thread155

bb.e:                                             ; preds = %bb.d
  %i.ak = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.f, label %.thread155

bb.f:                                             ; preds = %bb.e
  %i.ao = call fastcc i32 @png_inflate_claim(ptr noundef %0, i32 noundef 1766015824)
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.aq = add nuw nsw i32 %.084.lcssa, 2          ; 2 uses
  %i.ar = sub nuw nsw i32 %spec.select, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 132, ptr %i.e, align 8, !tbaa !84
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.at, ptr %i.au, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.ar, ptr %i.av, align 8, !tbaa !32
  call fastcc void @png_inflate_read(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.e, i32 noundef 0)
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !84
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %.thread160

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %i.c, align 16
  %i.az = call i32 @llvm.bswap.i32(i32 %i.ay)     ; 5 uses
  %i.ba = call i32 @png_icc_check_length(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.az) #13
  %.not113 = icmp eq i32 %i.ba, 0
  br i1 %.not113, label %.thread164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !68
  %i.bd = zext i8 %i.bc to i32
  %i.be = call i32 @png_icc_check_header(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.az, ptr noundef nonnull %i.c, i32 noundef %i.bd) #13
  %.not114 = icmp eq i32 %i.be, 0
  br i1 %.not114, label %.thread164, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bg = load i8, ptr %i.bf, align 16, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 129
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 130
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 131
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bn = zext i32 %i.az to i64                   ; 2 uses
  %i.bo = call fastcc ptr @png_read_buffer(ptr noundef nonnull %0, i64 noundef %i.bn) ; 5 uses
  %.not115 = icmp eq ptr %i.bo, null
  br i1 %.not115, label %.thread164, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = zext i8 %i.bg to i64
  %i.bq = shl nuw nsw i64 %i.bp, 24
  %i.br = zext i8 %i.bi to i64
  %i.bs = shl nuw nsw i64 %i.br, 16
  %i.bt = or disjoint i64 %i.bs, %i.bq
  %i.bu = zext i8 %i.bk to i64
  %i.bv = shl nuw nsw i64 %i.bu, 8
  %i.bw = or disjoint i64 %i.bt, %i.bv
  %i.bx = zext i8 %i.bm to i64
  %i.by = or disjoint i64 %i.bw, %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(132) %i.bo, ptr noundef nonnull align 16 dereferenceable(132) %i.c, i64 132, i1 false)
  %i.bz = mul nuw nsw i64 %i.by, 12
  %i.ca = and i64 %i.bz, 4294967292               ; 3 uses
  store i64 %i.ca, ptr %i.e, align 8, !tbaa !84
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 132 ; 2 uses
  call fastcc void @png_inflate_read(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.cb, ptr noundef %i.e, i32 noundef 0)
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !84
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.l, label %.thread164.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ce = call i32 @png_icc_check_tag_table(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.az, ptr noundef nonnull %i.bo) #13
  %.not116 = icmp eq i32 %i.ce, 0
  br i1 %.not116, label %.thread164, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nsw i64 %i.bn, -132
  %i.cg = sub nsw i64 %i.cf, %i.ca
  store i64 %i.cg, ptr %i.e, align 8, !tbaa !84
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  call fastcc void @png_inflate_read(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.ch, ptr noundef %i.e, i32 noundef 1)
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !45  ; 2 uses
  %.not117 = icmp eq i32 %i.ci, 0
  br i1 %.not117, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !29
  %i.cl = and i32 %i.ck, 1048576
  %.not118 = icmp eq i32 %i.cl, 0
  br i1 %.not118, label %.thread164, label %.thread

bb.o:                                             ; preds = %bb.m
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !84
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %.thread164.sink.split

.thread:                                          ; preds = %bb.n
  %i.co = load i64, ptr %i.e, align 8, !tbaa !84
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.p, label %.thread164.sink.split

bb.p:                                             ; preds = %.thread
  call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cq = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %i.ci, i32 noundef 0) ; 0 uses
  %.not120 = icmp eq ptr %1, null
  br i1 %.not120, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 16, i32 noundef 0) #13
  %i.cr = call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef %i.ak) #13 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !195
  %.not121 = icmp eq ptr %i.cr, null
  br i1 %.not121, label %.thread167, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cr, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.ak, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.az, ptr %i.ct, align 8, !tbaa !196
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.bo, ptr %i.cu, align 8, !tbaa !197
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr null, ptr %i.cv, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !198
  %i.cy = or i32 %i.cx, 16
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !198
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !199
  %i.db = or i32 %i.da, 4096
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !199
  br label %bb.u

.thread160:                                       ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.de, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread155

bb.t:                                             ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !34
  br label %.thread155

bb.u:                                             ; preds = %bb.q, %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.dh, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.w

.thread164.sink.split:                            ; preds = %bb.k, %.thread, %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !34
  br label %.thread164

.thread164:                                       ; preds = %.thread164.sink.split, %bb.n, %bb.l, %bb.j, %bb.i, %bb.h
  %.595.ph.ph = phi ptr [ null, %bb.h ], [ null, %bb.i ], [ @.str.34, %bb.n ], [ @.str.22, %bb.j ], [ null, %bb.l ], [ %i.dj, %.thread164.sink.split ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.dk, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread155

.thread167:                                       ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.dl, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.v

.thread155:                                       ; preds = %.critedge, %bb.d, %bb.e, %bb.t, %.preheader, %.thread160, %.thread164
  %.9144159 = phi ptr [ %i.dd, %.thread160 ], [ %.595.ph.ph, %.thread164 ], [ @.str.36, %.critedge ], [ @.str.35, %bb.e ], [ @.str.35, %bb.d ], [ %i.dg, %bb.t ], [ @.str.36, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !45
  %i.dn = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %i.dm, i32 noundef 0) ; 0 uses
  %.not122 = icmp eq ptr %.9144159, null
  br i1 %.not122, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread167, %.thread155
  %.9144158170 = phi ptr [ @.str.22, %.thread167 ], [ %.9144159, %.thread155 ]
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull %.9144158170) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %.thread146, %.thread155, %bb.v
  %.7106 = phi i32 [ 3, %bb.u ], [ 0, %bb.v ], [ 0, %.thread155 ], [ 0, %.thread146 ]
  ret i32 %.7106
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_iTXt(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %3 = alloca %struct.png_text_struct, align 8    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %.critedge114

bb.c:                                             ; preds = %bb.a
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !35
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  br label %.critedge114

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.h = add i32 %2, 1
  %i.i = zext i32 %i.h to i64                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59, !alias.scope !205 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.m = load i64, ptr %i.l, align 8, !tbaa !37, !alias.scope !205
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.p = load i64, ptr %i.o, align 8, !tbaa !60, !alias.scope !205
  %i.q = icmp ult i64 %i.p, %i.i
  br i1 %i.q, label %bb.h, label %png_crc_read.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !alias.scope !205
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.r = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.i) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.r, null
  br i1 %.not27.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 range(i64 0, 4294967296) %i.i, i1 false)
  store ptr %i.r, ptr %i.j, align 8, !tbaa !59, !alias.scope !205
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 %i.i, ptr %i.s, align 8, !tbaa !60, !alias.scope !205
  br label %png_crc_read.exit

bb.k:                                             ; preds = %bb.e, %bb.i
  %i.t = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %.critedge114

png_crc_read.exit:                                ; preds = %bb.j, %bb.g
  %.021.i = phi ptr [ %i.k, %bb.g ], [ %i.r, %bb.j ] ; 8 uses
  %i.u = zext i32 %2 to i64                       ; 3 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.u) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.u) #13
  %i.v = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not102 = icmp eq i32 %i.v, 0
  br i1 %.not102, label %.preheader, label %.critedge114

.preheader:                                       ; preds = %png_crc_read.exit
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.thread123, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.021.i, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %.not103 = icmp eq i8 %i.x, 0
  br i1 %.not103, label %.critedge.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !202

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.y = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.split.loop.exit
  %.086.lcssa = phi i32 [ %i.y, %.critedge.split.loop.exit ], [ %2, %bb.l ] ; 4 uses
  %i.z = add i32 %.086.lcssa, -80
  %or.cond = icmp ult i32 %i.z, -79
  br i1 %or.cond, label %.thread123, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.aa = add nuw nsw i32 %.086.lcssa, 5
  %i.ab = icmp ugt i32 %i.aa, %2
  br i1 %i.ab, label %.thread123, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = zext nneg i32 %.086.lcssa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8   ; 2 uses
  switch i8 %i.af, label %.thread123 [
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %.thread123

bb.p:                                             ; preds = %bb.n, %bb.o
  %.not106 = icmp ne i8 %i.af, 0                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aj = add nuw nsw i32 %.086.lcssa, 3          ; 4 uses
  %i.ak = icmp ult i32 %i.aj, %2
  br i1 %i.ak, label %.lr.ph135.preheader, label %.critedge4

.lr.ph135.preheader:                              ; preds = %bb.p
  %i.al = zext nneg i32 %i.aj to i64
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.q
  %indvars.iv145 = phi i64 [ %i.al, %.lr.ph135.preheader ], [ %indvars.iv.next146, %bb.q ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.021.i, i64 %indvars.iv145
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %.not104 = icmp eq i8 %i.an, 0
  br i1 %.not104, label %.critedge4.loopexit.split.loop.exit168, label %bb.q

bb.q:                                             ; preds = %.lr.ph135
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next146 to i32
  %exitcond148.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond148.not, label %.critedge4, label %.lr.ph135, !llvm.loop !203

.critedge4.loopexit.split.loop.exit168:           ; preds = %.lr.ph135
  %i.ao = trunc nuw i64 %indvars.iv145 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.q, %.critedge4.loopexit.split.loop.exit168, %bb.p
  %.187.lcssa = phi i32 [ %i.aj, %bb.p ], [ %i.ao, %.critedge4.loopexit.split.loop.exit168 ], [ %2, %bb.q ]
  %i.ap = add i32 %.187.lcssa, 1                  ; 4 uses
  %i.aq = icmp ult i32 %i.ap, %2
  br i1 %i.aq, label %.lr.ph140.preheader, label %.critedge6

.lr.ph140.preheader:                              ; preds = %.critedge4
  %i.ar = zext i32 %i.ap to i64
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %bb.r
  %indvars.iv149 = phi i64 [ %i.ar, %.lr.ph140.preheader ], [ %indvars.iv.next150, %bb.r ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.021.i, i64 %indvars.iv149
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %.not105 = icmp eq i8 %i.at, 0
  br i1 %.not105, label %.critedge6.loopexit.split.loop.exit170, label %bb.r

bb.r:                                             ; preds = %.lr.ph140
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %lftr.wideiv152 = trunc i64 %indvars.iv.next150 to i32
  %exitcond153.not = icmp eq i32 %2, %lftr.wideiv152
  br i1 %exitcond153.not, label %.critedge6, label %.lr.ph140, !llvm.loop !204

.critedge6.loopexit.split.loop.exit170:           ; preds = %.lr.ph140
  %i.au = trunc nuw i64 %indvars.iv149 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %bb.r, %.critedge6.loopexit.split.loop.exit170, %.critedge4
  %.2.lcssa = phi i32 [ %i.ap, %.critedge4 ], [ %i.au, %.critedge6.loopexit.split.loop.exit170 ], [ %2, %bb.r ]
  %i.av = add i32 %.2.lcssa, 1                    ; 5 uses
  %.not107 = icmp ugt i32 %i.av, %2
end_hunk_0
