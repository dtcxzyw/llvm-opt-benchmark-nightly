Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/buf_writer?download=true
inline.NumInlined: 32
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@je_buf_writer_init:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %8) #7
  br label %tsdn_rtree_ctx.exit.i

bb.f:                                             ; preds = %tsdn_witness_tsdp_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.f, %.thread.i
  %i.ad = phi ptr [ %i.ab, %.thread.i ], [ %i.aa, %bb.f ] ; 2 uses
  %.0.i5.i = phi ptr [ %8, %.thread.i ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef %0, ptr noundef nonnull %.0.i5.i, i64 noundef %i.ae)
  %i.af = load ptr, ptr %9, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %.val.i = load i64, ptr %i.af, align 8, !tbaa !26
  %i.ag = and i64 %.val.i, 4095
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ag
  %i.ai = load atomic ptr, ptr %i.ah monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  br i1 %i.z, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %tsdn_rtree_ctx.exit.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %6) #7
  br label %tsdn_rtree_ctx.exit.i.i

bb.h:                                             ; preds = %tsdn_rtree_ctx.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i

tsdn_rtree_ctx.exit.i.i:                          ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %6, %bb.g ], [ %i.aj, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.ae)
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !29 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.an = load i8, ptr %i.am, align 1, !tbaa !30, !range !31, !noundef !32
  %i.ao = icmp eq i32 %i.al, 232
  %i.ap = load ptr, ptr %7, align 8               ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  %or.cond.i.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.i.i, label %emap_alloc_ctx_lookup.exit.i, label %bb.i

bb.i:                                             ; preds = %tsdn_rtree_ctx.exit.i.i
  %.val.i.i = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.ar = trunc i64 %.val.i.i to i32
  %i.as = lshr i32 %i.ar, 20
  %i.at = and i32 %i.as, 255                      ; 2 uses
  %i.au = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !33, !range !31, !noundef !32
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = icmp samesign ugt i32 %i.at, 35
  %or.cond.not.i.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = zext nneg i32 %i.at to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !34
  br label %emap_alloc_ctx_lookup.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.bc = and i64 %i.bb, -4096
  %i.bd = load i64, ptr @je_sz_large_pad, align 8, !tbaa !34
  %i.be = sub i64 %i.bc, %i.bd
  br label %emap_alloc_ctx_lookup.exit.i

emap_alloc_ctx_lookup.exit.i:                     ; preds = %bb.k, %bb.j, %tsdn_rtree_ctx.exit.i.i
  %i.bf = phi i64 [ 0, %tsdn_rtree_ctx.exit.i.i ], [ %i.az, %bb.j ], [ %i.be, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.bg = trunc nuw i8 %i.an to i1
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %emap_alloc_ctx_lookup.exit.i
  %i.bh = zext i32 %i.al to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %emap_alloc_ctx_lookup.exit.i, %bb.l
  %.0.i6.i = phi i64 [ %i.bj, %bb.l ], [ %i.bf, %emap_alloc_ctx_lookup.exit.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.bl = atomicrmw add ptr %i.bk, i64 %.0.i6.i monotonic, align 8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.m
  %.sink37 = phi ptr [ %i.ad, %bb.m ], [ %4, %bb.a ]
  %.sink35 = phi i8 [ 1, %bb.m ], [ 0, %bb.a ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sink37, ptr %i.bm, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 %.sink35, ptr %i.bn, align 8, !tbaa !36
  %i.bo = add i64 %5, -1
  br label %bb.o

bb.n:                                             ; preds = %tsdn_witness_tsdp_get.exit.thread.i, %tsdn_witness_tsdp_get.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.bp, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.bq, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread
  %.not2332 = phi i1 [ true, %bb.n ], [ false, %.thread ]
  %.sink = phi i64 [ 0, %bb.n ], [ %i.bo, %.thread ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sink, ptr %i.br, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.bs, align 8, !tbaa !38
  ret i1 %.not2332
}

declare void @je_wrtmessage(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @je_buf_writer_flush(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !20
  %i.g = load ptr, ptr %0, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void %i.g(ptr noundef %i.i, ptr noundef %i.j) #7
  store i64 0, ptr %i.d, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_buf_writer_cb(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  tail call void %i.d(ptr noundef %i.f, ptr noundef %1) #7
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8 ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.h, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %je_buf_writer_flush.exit
  %i.k = phi i64 [ %.pre, %.lr.ph ], [ %i.ab, %je_buf_writer_flush.exit ] ; 5 uses
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %je_buf_writer_flush.exit ] ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %i.m = icmp eq i64 %i.k, %i.l
  %.pre33 = load ptr, ptr %i.a, align 8, !tbaa !35 ; 3 uses
  br i1 %i.m, label %bb.e, label %je_buf_writer_flush.exit

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq ptr %.pre33, null
  br i1 %i.n, label %je_buf_writer_flush.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.pre33, i64 %i.k
  store i8 0, ptr %i.o, align 1, !tbaa !20
  %i.p = load ptr, ptr %0, align 8, !tbaa !12
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void %i.p(ptr noundef %i.q, ptr noundef %i.r) #7, !inline_history !39
  store i64 0, ptr %i.h, align 8, !tbaa !38
  %.pre31 = load i64, ptr %i.i, align 8, !tbaa !37
  %.pre32 = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %je_buf_writer_flush.exit

je_buf_writer_flush.exit:                         ; preds = %bb.f, %bb.e, %bb.d
  %i.s = phi ptr [ %.pre32, %bb.f ], [ null, %bb.e ], [ %.pre33, %bb.d ]
  %i.t = phi i64 [ 0, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.u = phi i64 [ %.pre31, %bb.f ], [ %i.k, %bb.e ], [ %i.l, %bb.d ]
  %i.v = sub nuw i64 %i.g, %.030
  %i.w = sub i64 %i.u, %i.t
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.w) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.030
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %i.z, i64 %i.x, i1 false)
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !38
  %i.ab = add i64 %i.aa, %i.x                     ; 2 uses
  store i64 %i.ab, ptr %i.h, align 8, !tbaa !38
  %i.ac = add i64 %i.x, %.030                     ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.g
  br i1 %i.ad, label %bb.d, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %je_buf_writer_flush.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden void @je_buf_writer_terminate(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %4 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %6 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %7 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %je_buf_writer_flush.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !20
  %i.g = load ptr, ptr %1, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void %i.g(ptr noundef %i.i, ptr noundef %i.j) #7, !inline_history !39
  store i64 0, ptr %i.d, align 8, !tbaa !38
  br label %je_buf_writer_flush.exit

je_buf_writer_flush.exit:                         ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !36, !range !31, !noundef !32
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %buf_writer_free_internal_buf.exit

bb.c:                                             ; preds = %je_buf_writer_flush.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %buf_writer_free_internal_buf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %0, null                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %6) #7
  br label %tsdn_rtree_ctx.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i

tsdn_rtree_ctx.exit.i.i:                          ; preds = %bb.f, %bb.e
  %.0.i14.i.i = phi ptr [ %6, %bb.e ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.q = ptrtoint ptr %i.n to i64                 ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %0, ptr noundef nonnull %.0.i14.i.i, i64 noundef %i.q)
  %i.r = load ptr, ptr %7, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %.val.i = load i64, ptr %i.r, align 8, !tbaa !26
  %i.s = and i64 %.val.i, 4095
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.s
  %i.u = load atomic ptr, ptr %i.t monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  br i1 %i.o, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %tsdn_rtree_ctx.exit.i.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %4) #7
  br label %tsdn_rtree_ctx.exit.i.i.i

bb.h:                                             ; preds = %tsdn_rtree_ctx.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i.i

tsdn_rtree_ctx.exit.i.i.i:                        ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %4, %bb.g ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %0, ptr noundef nonnull %.0.i.i.i.i, i64 noundef %i.q)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.z = load i8, ptr %i.y, align 1, !tbaa !30, !range !31, !noundef !32
  %i.aa = icmp eq i32 %i.x, 232
  %i.ab = load ptr, ptr %5, align 8               ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  %or.cond.i.i.i = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond.i.i.i, label %emap_alloc_ctx_lookup.exit.i.i, label %bb.i

bb.i:                                             ; preds = %tsdn_rtree_ctx.exit.i.i.i
  %.val.i.i = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ad = trunc i64 %.val.i.i to i32
  %i.ae = lshr i32 %i.ad, 20
  %i.af = and i32 %i.ae, 255                      ; 2 uses
  %i.ag = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !33, !range !31, !noundef !32
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = icmp samesign ugt i32 %i.af, 35
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = zext nneg i32 %i.af to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !34
  br label %emap_alloc_ctx_lookup.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !20
  %i.ao = and i64 %i.an, -4096
  %i.ap = load i64, ptr @je_sz_large_pad, align 8, !tbaa !34
  %i.aq = sub i64 %i.ao, %i.ap
  br label %emap_alloc_ctx_lookup.exit.i.i

emap_alloc_ctx_lookup.exit.i.i:                   ; preds = %bb.k, %bb.j, %tsdn_rtree_ctx.exit.i.i.i
  %i.ar = phi i64 [ 0, %tsdn_rtree_ctx.exit.i.i.i ], [ %i.al, %bb.j ], [ %i.aq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.as = trunc nuw i8 %i.z to i1
  br i1 %i.as, label %bb.l, label %idalloctm.exit.i

bb.l:                                             ; preds = %emap_alloc_ctx_lookup.exit.i.i
  %i.at = zext i32 %i.x to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !34
  br label %idalloctm.exit.i

idalloctm.exit.i:                                 ; preds = %bb.l, %emap_alloc_ctx_lookup.exit.i.i
  %.0.i15.i.i = phi i64 [ %i.av, %bb.l ], [ %i.ar, %emap_alloc_ctx_lookup.exit.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ax = atomicrmw sub ptr %i.aw, i64 %.0.i15.i.i monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  br i1 %i.o, label %bb.m, label %bb.n, !prof !21

bb.m:                                             ; preds = %idalloctm.exit.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #7
  br label %tsdn_rtree_ctx.exit.i.i3.i

bb.n:                                             ; preds = %idalloctm.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i3.i

tsdn_rtree_ctx.exit.i.i3.i:                       ; preds = %bb.n, %bb.m
  %.0.i.i.i4.i = phi ptr [ %2, %bb.m ], [ %i.ay, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i.i.i4.i, i64 noundef %i.q)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !30, !range !31, !noundef !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.o, label %emap_alloc_ctx_usize_get.exit.i.i, !prof !19

bb.o:                                             ; preds = %tsdn_rtree_ctx.exit.i.i3.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef nonnull %i.n) #7
  br label %buf_writer_free_internal_buf.exit

emap_alloc_ctx_usize_get.exit.i.i:                ; preds = %tsdn_rtree_ctx.exit.i.i3.i
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef nonnull %i.n)
  br label %buf_writer_free_internal_buf.exit

buf_writer_free_internal_buf.exit:                ; preds = %emap_alloc_ctx_usize_get.exit.i.i, %bb.o, %bb.c, %je_buf_writer_flush.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_buf_writer_pipe(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_0
