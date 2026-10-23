Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/ortho?download=true
inline.NumInlined: 116
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@chancmpid:bb.a
  %i.a = load double, ptr %0, align 8, !tbaa !177 ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !177 ; 2 uses
  %i.c = fcmp ogt double %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !178
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !178
  %i.h = fcmp ugt double %i.e, %i.g
  %. = zext i1 %i.h to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = fcmp olt double %i.a, %i.b
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !178
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !178
  %i.n = fcmp ult double %i.k, %i.m
  %.12 = sext i1 %i.n to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %., %bb.b ], [ %.12, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @free_graph(ptr noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @add_np_edges(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.segment, align 8            ; 8 uses
  %2 = alloca %struct.segment, align 8            ; 8 uses
  %i.a = tail call ptr @dtflatten(ptr noundef %0) #16 ; 2 uses
  %.not31 = icmp eq ptr %i.a, null
  br i1 %.not31, label %.thread27, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph33, %.thread
  %.01732 = phi ptr [ %i.a, %.lr.ph33 ], [ %i.ah, %.thread ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01732, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = tail call ptr @dtflatten(ptr noundef %i.e) #16 ; 2 uses
  %.not2129 = icmp eq ptr %i.f, null
  br i1 %.not2129, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.030 = phi ptr [ %i.ag, %.critedge ], [ %i.f, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.030, i64 32 ; 4 uses
  %i.h = getelementptr i8, ptr %.030, i64 48
  %.val = load i64, ptr %i.h, align 8, !tbaa !71  ; 4 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.030, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73   ; 2 uses
  %.not3947.i.not = icmp eq i64 %.val, 1
  br i1 %.not3947.i.not, label %.critedge, label %.preheader.i

.critedge40.loopexit.i:                           ; preds = %bb.m
  %i.l = add nuw i64 %i.m, 1                      ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.l, %.val
  br i1 %exitcond50.not.i, label %.critedge, label %.preheader.i, !llvm.loop !179

.preheader.i:                                     ; preds = %bb.c, %.critedge40.loopexit.i
  %i.m = phi i64 [ %i.l, %.critedge40.loopexit.i ], [ 1, %bb.c ] ; 3 uses
  %.03148.i = phi i64 [ %i.m, %.critedge40.loopexit.i ], [ 0, %bb.c ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %.preheader.i
  %.046.i = phi i64 [ %i.m, %.preheader.i ], [ %i.af, %bb.m ] ; 4 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.o = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.g, i64 noundef %.03148.i) #16
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.s = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.g, i64 noundef %.046.i) #16
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.q, i64 80, i1 false)
  %i.v = load i8, ptr %2, align 8, !tbaa !61, !range !12, !noundef !13 ; 2 uses
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load i8, ptr %1, align 8, !tbaa !61, !range !12, !noundef !13
  %.not.i.i = icmp eq i8 %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %.thread27.sink.split

bb.e:                                             ; preds = %bb.d
  %i.y = load double, ptr %i.b, align 8, !tbaa !78
  %i.z = load double, ptr %i.c, align 8, !tbaa !78
  %i.aa = fcmp une double %i.y, %i.z
  br i1 %i.aa, label %.thread27.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call fastcc i32 @segCmp(ptr noundef nonnull byval(%struct.segment) align 8 %2, ptr noundef nonnull byval(%struct.segment) align 8 %1, i32 noundef 4, i32 noundef 2)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = tail call fastcc i32 @segCmp(ptr noundef nonnull byval(%struct.segment) align 8 %2, ptr noundef nonnull byval(%struct.segment) align 8 %1, i32 noundef 3, i32 noundef 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.ph.i = phi i32 [ %i.ac, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ad = icmp sgt i32 %.0.i.ph.i, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @insert_edge(ptr noundef %i.k, i64 noundef %.03148.i, i64 noundef %.046.i) #16
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i32 %.0.i.ph.i, -1
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @insert_edge(ptr noundef %i.k, i64 noundef %.046.i, i64 noundef %.03148.i) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.af = add i64 %.046.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %.val
  br i1 %exitcond.not.i, label %.critedge40.loopexit.i, label %bb.d, !llvm.loop !180

.critedge:                                        ; preds = %.critedge40.loopexit.i, %bb.c, %.lr.ph
  %i.ag = load ptr, ptr %.030, align 8, !tbaa !74 ; 2 uses
  %.not21 = icmp eq ptr %i.ag, null
  br i1 %.not21, label %.thread, label %.lr.ph, !llvm.loop !181

.thread:                                          ; preds = %.critedge, %bb.b
  %i.ah = load ptr, ptr %.01732, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %.thread27, label %bb.b, !llvm.loop !182

.thread27.sink.split:                             ; preds = %bb.e, %bb.d
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %.thread27

.thread27:                                        ; preds = %.thread, %.thread27.sink.split, %bb.a
  %i.ai = phi i32 [ 0, %bb.a ], [ -1, %.thread27.sink.split ], [ 0, %.thread ]
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @add_p_edges(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %.138.i178.i = alloca %struct.segment, align 8  ; 8 uses
  %.0.i37.i179.i = alloca %struct.segment, align 8 ; 8 uses
  %.138.i.i = alloca %struct.segment, align 8     ; 8 uses
  %.0.i37.i.i = alloca %struct.segment, align 8   ; 8 uses
  %i.a = tail call ptr @dtflatten(ptr noundef %0) #16 ; 2 uses
  %.not118 = icmp eq ptr %i.a, null
  br i1 %.not118, label %addPEdges.exit, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i37.i.i, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.138.i.i, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i37.i179.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.138.i178.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph120, %addPEdges.exit.thread99
  %.014119 = phi ptr [ %i.a, %.lr.ph120 ], [ %i.kd, %addPEdges.exit.thread99 ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.014119, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.h = tail call ptr @dtflatten(ptr noundef %i.g) #16 ; 2 uses
  %.not17116 = icmp eq ptr %i.h, null
  br i1 %.not17116, label %addPEdges.exit.thread99, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.0117 = phi ptr [ %i.kc, %.loopexit ], [ %i.h, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0117, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0117, i64 32 ; 64 uses
  %i.l = getelementptr i8, ptr %.0117, i64 48     ; 2 uses
  %.val177286.i = load i64, ptr %i.l, align 8, !tbaa !71
  %.not175287.i = icmp ugt i64 %.val177286.i, 1
  br i1 %.not175287.i, label %.preheader.i, label %.loopexit

.critedge.loopexit.i:                             ; preds = %is_parallel.exit.thread.i
  %i.m = add nuw i64 %i.n, 1                      ; 2 uses
  %.not175.i = icmp ult i64 %i.m, %.val.i
  br i1 %.not175.i, label %.preheader.i, label %.loopexit, !llvm.loop !183

.preheader.i:                                     ; preds = %.lr.ph, %.critedge.loopexit.i
  %i.n = phi i64 [ %i.m, %.critedge.loopexit.i ], [ 1, %.lr.ph ] ; 3 uses
  %.0166288.i = phi i64 [ %i.n, %.critedge.loopexit.i ], [ 0, %.lr.ph ] ; 19 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %is_parallel.exit.thread.i
  %.0285.i = phi i64 [ %i.kb, %is_parallel.exit.thread.i ], [ %i.n, %.preheader.i ] ; 20 uses
  %i.o = tail call zeroext i1 @edge_exists(ptr noundef %i.j, i64 noundef %.0166288.i, i64 noundef %.0285.i) #16
  br i1 %i.o, label %is_parallel.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = tail call zeroext i1 @edge_exists(ptr noundef %i.j, i64 noundef %.0285.i, i64 noundef %.0166288.i) #16
  br i1 %i.p, label %is_parallel.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.r = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.k, i64 noundef %.0166288.i) #16
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 4 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.v = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.k, i64 noundef %.0285.i) #16
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 4 uses
  %.sroa.3229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.3229.0.copyload.i = load double, ptr %.sroa.3229.0..sroa_idx.i, align 8
  %.sroa.4230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.4230.0.copyload.i = load double, ptr %.sroa.4230.0..sroa_idx.i, align 8
  %.sroa.5231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.5231.0.copyload.i = load i32, ptr %.sroa.5231.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.3.0.copyload.i = load double, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.y = fcmp oeq double %.sroa.3.0.copyload.i, %.sroa.3229.0.copyload.i
  %i.z = fcmp oeq double %.sroa.4.0.copyload.i, %.sroa.4230.0.copyload.i
  %or.cond.i = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = icmp eq i32 %.sroa.5.0.copyload.i, %.sroa.5231.0.copyload.i
  %or.cond266.i = select i1 %or.cond.i, i1 %i.aa, i1 false
  br i1 %or.cond266.i, label %is_parallel.exit.i, label %is_parallel.exit.thread.i

is_parallel.exit.i:                               ; preds = %bb.d
  %.sroa.6227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %.sroa.6227.0.copyload.i = load i32, ptr %.sroa.6227.0..sroa_idx.i, align 4
  %.sroa.6232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %.sroa.6232.0.copyload.i = load i32, ptr %.sroa.6232.0..sroa_idx.i, align 4
  %i.ab = icmp eq i32 %.sroa.6227.0.copyload.i, %.sroa.6232.0.copyload.i
  br i1 %i.ab, label %bb.e, label %is_parallel.exit.thread.i

bb.e:                                             ; preds = %is_parallel.exit.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.ad = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.k, i64 noundef %.0166288.i) #16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.ak = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.k, i64 noundef %.0285.i) #16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp ne ptr %i.ao, null
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.aq = icmp eq ptr %i.ao, null
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.as = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.k, i64 noundef %.0166288.i) #16
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !78
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.ba = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.k, i64 noundef %.0285.i) #16
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !78
  %i.bh = fcmp une double %i.ay, %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0167.shrunk.i = phi i1 [ %i.ap, %bb.f ], [ true, %bb.g ], [ %i.bh, %bb.h ] ; 5 uses
  %.0167.i = zext i1 %.0167.shrunk.i to i32       ; 6 uses
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.bj = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.k, i64 noundef %.0166288.i) #16
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.bn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.k, i64 noundef %.0285.i) #16
  %.sroa.4235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %.sroa.4235.0.copyload236.i = load ptr, ptr %.sroa.4235.0..sroa_idx.i, align 8 ; 2 uses
  %.not57.i.i = icmp eq ptr %.sroa.4235.0.copyload236.i, null
  br i1 %.not57.i.i, label %.loopexit271.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.pn.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.0.i34.i.sroa.speculated.i, %bb.l ] ; 2 uses
  %.0.i59.i.i = phi ptr [ %.sroa.4235.0.copyload236.i, %.lr.ph.i.i ], [ %.sroa.4235.0.copyload.i, %bb.l ] ; 9 uses
  %.02058.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bu, %bb.l ] ; 4 uses
  %.sroa.5243.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 72
  %.sroa.5243.0.i = load ptr, ptr %.sroa.5243.0.in.i, align 8
  %.sroa.4241.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 64
  %.sroa.4241.0.i = load ptr, ptr %.sroa.4241.0.in.i, align 8
  %.0.i34.i.sroa.speculated.i = select i1 %.0167.shrunk.i, ptr %.sroa.5243.0.i, ptr %.sroa.4241.0.i ; 7 uses
  %.not28.i.i = icmp eq ptr %.0.i34.i.sroa.speculated.i, null
  br i1 %.not28.i.i, label %.loopexit271.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.0.i3436.sroa.3.0..0.i34.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i34.i.sroa.speculated.i, i64 16
  %.0.i3436.sroa.3.0.copyload.i.i = load double, ptr %.0.i3436.sroa.3.0..0.i34.sroa_idx.i.i, align 8
  %.0.i3436.sroa.4.0..0.i34.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i34.i.sroa.speculated.i, i64 24
  %.0.i3436.sroa.4.0.copyload.i.i = load double, ptr %.0.i3436.sroa.4.0..0.i34.sroa_idx.i.i, align 8
  %.0.i3436.sroa.5.0..0.i34.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i34.i.sroa.speculated.i, i64 32
  %.0.i3436.sroa.5.0.copyload.i.i = load i32, ptr %.0.i3436.sroa.5.0..0.i34.sroa_idx.i.i, align 8 ; 2 uses
  %.0.i35.sroa.3.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i59.i.i, i64 16
  %.0.i35.sroa.3.0.copyload.i.i = load double, ptr %.0.i35.sroa.3.0..0.i.sroa_idx.i.i, align 8 ; 2 uses
  %.0.i35.sroa.4.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i59.i.i, i64 24
  %.0.i35.sroa.4.0.copyload.i.i = load double, ptr %.0.i35.sroa.4.0..0.i.sroa_idx.i.i, align 8
  %.0.i35.sroa.5.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i59.i.i, i64 32
  %.0.i35.sroa.5.0.copyload.i.i = load i32, ptr %.0.i35.sroa.5.0..0.i.sroa_idx.i.i, align 8 ; 2 uses
  %i.bq = fcmp oeq double %.0.i35.sroa.3.0.copyload.i.i, %.0.i3436.sroa.3.0.copyload.i.i
  %i.br = fcmp oeq double %.0.i35.sroa.4.0.copyload.i.i, %.0.i3436.sroa.4.0.copyload.i.i
  %or.cond.i.i = select i1 %i.bq, i1 %i.br, i1 false
  %i.bs = icmp eq i32 %.0.i35.sroa.5.0.copyload.i.i, %.0.i3436.sroa.5.0.copyload.i.i
  %or.cond50.i.i = select i1 %or.cond.i.i, i1 %i.bs, i1 false
  br i1 %or.cond50.i.i, label %is_parallel.exit.i.i, label %is_parallel.exit.thread.i.i

is_parallel.exit.i.i:                             ; preds = %bb.k
  %.0.i35.sroa.6.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i59.i.i, i64 36
  %.0.i35.sroa.6.0.copyload.i.i = load i32, ptr %.0.i35.sroa.6.0..0.i.sroa_idx.i.i, align 4
  %.0.i3436.sroa.6.0..0.i34.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i34.i.sroa.speculated.i, i64 36
  %.0.i3436.sroa.6.0.copyload.i.i = load i32, ptr %.0.i3436.sroa.6.0..0.i34.sroa_idx.i.i, align 4
  %i.bt = icmp eq i32 %.0.i35.sroa.6.0.copyload.i.i, %.0.i3436.sroa.6.0.copyload.i.i
  br i1 %i.bt, label %bb.l, label %is_parallel.exit.thread.i.i

bb.l:                                             ; preds = %is_parallel.exit.i.i
  %i.bu = add nuw nsw i32 %.02058.i.i, 1          ; 2 uses
  %.sroa.4235.0..0.i59.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i59.i.i, i64 64
  %.sroa.4235.0.copyload.i = load ptr, ptr %.sroa.4235.0..0.i59.i.sroa_idx.i, align 8, !tbaa !48 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.4235.0.copyload.i, null
  br i1 %.not.i.i, label %.loopexit271.i, label %bb.j, !llvm.loop !184

is_parallel.exit.thread.i.i:                      ; preds = %is_parallel.exit.i.i, %bb.k
  %.0.i35.sroa.5.0.copyload.i.lcssa.i = phi i32 [ %.0.i3436.sroa.5.0.copyload.i.i, %is_parallel.exit.i.i ], [ %.0.i35.sroa.5.0.copyload.i.i, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.0.i37.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.138.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.138.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0.i34.i.sroa.speculated.i, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.0.i37.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0.i59.i.i, i64 80, i1 false)
  %i.bv = load i8, ptr %.0.i37.i.i, align 8, !tbaa !61, !range !12, !noundef !13 ; 2 uses
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = load i8, ptr %.138.i.i, align 8, !tbaa !61, !range !12, !noundef !13
  %.not.i39.i.i = icmp eq i8 %i.bv, %i.bx
  br i1 %.not.i39.i.i, label %bb.m, label %decide_point.exit.i

bb.m:                                             ; preds = %is_parallel.exit.thread.i.i
  %i.by = load double, ptr %i.b, align 8, !tbaa !78
  %i.bz = load double, ptr %i.c, align 8, !tbaa !78
  %i.ca = fcmp une double %i.by, %i.bz
  br i1 %i.ca, label %decide_point.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = tail call fastcc i32 @segCmp(ptr noundef nonnull byval(%struct.segment) align 8 %.0.i37.i.i, ptr noundef nonnull byval(%struct.segment) align 8 %.138.i.i, i32 noundef 4, i32 noundef 2)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cc = tail call fastcc i32 @segCmp(ptr noundef nonnull byval(%struct.segment) align 8 %.0.i37.i.i, ptr noundef nonnull byval(%struct.segment) align 8 %.138.i.i, i32 noundef 3, i32 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i40.ph.i.i = phi i32 [ %i.cc, %bb.p ], [ %i.cb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.0.i37.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.138.i.i)
  %i.cd = add nuw nsw i32 %.02058.i.i, 1
  %.0.i41.sroa.0.0.copyload.i.i = load i64, ptr %.0.i59.i.i, align 8
  %.0.i41.sroa.6.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i59.i.i, i64 36
  %.0.i41.sroa.6.0.copyload.i.i = load i32, ptr %.0.i41.sroa.6.0..0.i.sroa_idx.i.i, align 4
  %.0.i41.sroa.8.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i59.i.i, i64 72
  %.0.i41.sroa.8.0.copyload.i.i = load ptr, ptr %.0.i41.sroa.8.0..0.i.sroa_idx.i.i, align 8
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.x, %bb.q
  %.038.i.i.i = phi i32 [ %spec.select18.i.i.i, %bb.x ], [ %.0.i40.ph.i.i, %bb.q ] ; 2 uses
  %.01537.i.i.i = phi i32 [ %i.cl, %bb.x ], [ 1, %bb.q ] ; 2 uses
end_hunk_0
