Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_connected_components?download=true
inline.NumInlined: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@stbcc_query_grid_node_connection:bb.a
  %i.m = icmp eq i16 %i.k, 512
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ashr i32 %4, 5
  %i.o = ashr i32 %3, 5
  %i.p = ashr i32 %2, 5
  %i.q = ashr i32 %1, 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2228244 ; 2 uses
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [139392 x i8], ptr %i.r, i64 %i.s
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [4356 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = zext i16 %i.f to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %.sroa.010.0.copyload = load i32, ptr %i.y, align 4, !tbaa !10
  %i.z = sext i32 %i.n to i64
  %i.aa = getelementptr inbounds [139392 x i8], ptr %i.r, i64 %i.z
  %i.ab = sext i32 %i.o to i64
  %i.ac = getelementptr inbounds [4356 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = zext i16 %i.k to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  %.sroa.0.0.copyload = load i32, ptr %i.af, align 4, !tbaa !10
  %i.ag = icmp eq i32 %.sroa.010.0.copyload, %.sroa.0.0.copyload
  %. = zext i1 %i.ag to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbcc_query_grid_open(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [128 x i8], ptr %i.a, i64 %i.b
  %i.d = ashr i32 %1, 3
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !10
  %i.h = zext i8 %i.g to i32
  %i.i = and i32 %1, 7
  %i.j = lshr i32 %i.h, %i.i
  %i.k = and i32 %i.j, 1
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbcc_get_unique_id(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 131092
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [2048 x i8], ptr %i.a, i64 %i.b
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !8    ; 2 uses
  %i.g = icmp eq i16 %i.f, 512
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ashr i32 %2, 5
  %i.i = ashr i32 %1, 5
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr [139392 x i8], ptr %0, i64 %i.j
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr [4356 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 2228248
  %i.o = zext i16 %i.f to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i32 @stbcc__clump_find(ptr nofree noundef captures(none) %0, i32 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %1, 22
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [139392 x i8], ptr %0, i64 %i.b
  %i.d = lshr i32 %1, 12
  %i.e = and i32 %i.d, 1023
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4356 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2228248
  %i.i = and i32 %1, 4095
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10   ; 2 uses
  %i.m = icmp eq i32 %i.l, %1
  br i1 %i.m, label %common.ret14, label %bb.b

common.ret14:                                     ; preds = %bb.a, %bb.b
  %common.ret14.op = phi i32 [ %i.n, %bb.b ], [ %1, %bb.a ]
  ret i32 %common.ret14.op

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @stbcc__clump_find(ptr noundef nonnull %0, i32 %i.l) ; 2 uses
  store i32 %i.n, ptr %i.k, align 4, !tbaa !10
  br label %common.ret14
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__clump_union(ptr nofree noundef captures(none) %0, i64 %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.sroa.215.0.extract.shift = lshr i64 %1, 32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2228244 ; 3 uses
  %i.b = getelementptr inbounds nuw [139392 x i8], ptr %i.a, i64 %.sroa.215.0.extract.shift
  %i.c = and i64 %1, 4294967295
  %i.d = getelementptr inbounds nuw [4356 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = sext i32 %4 to i64
  %i.i = getelementptr inbounds [139392 x i8], ptr %i.a, i64 %i.h
  %i.j = sext i32 %3 to i64
  %i.k = getelementptr inbounds [4356 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = sext i32 %5 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.g, align 4
  %i.p = tail call i32 @stbcc__clump_find(ptr noundef %0, i32 %i.o) ; 4 uses
  %i.q = load i32, ptr %i.n, align 4
  %i.r = tail call i32 @stbcc__clump_find(ptr noundef %0, i32 %i.q) ; 2 uses
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = lshr i32 %i.p, 22
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [139392 x i8], ptr %i.a, i64 %i.u
  %i.w = lshr i32 %i.p, 12
  %i.x = and i32 %i.w, 1023
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4356 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = and i32 %i.p, 4095
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__build_connected_components_for_clumps(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2228244 ; 4 uses
  br label %.preheader79

.preheader79:                                     ; preds = %bb.a, %bb.e
  %indvars.iv106 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next107, %bb.e ] ; 3 uses
  %i.b = getelementptr inbounds nuw [139392 x i8], ptr %i.a, i64 %indvars.iv106
  %i.c = shl nuw nsw i64 %indvars.iv106, 22
  br label %bb.b

bb.b:                                             ; preds = %.preheader79, %._crit_edge
  %indvars.iv103 = phi i64 [ 0, %.preheader79 ], [ %indvars.iv.next104, %._crit_edge ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4356 x i8], ptr %i.b, i64 %indvars.iv103 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !11    ; 3 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = shl nuw nsw i64 %indvars.iv103, 12
  %i.h = add nuw nsw i64 %i.g, %i.c               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 5 uses
  %i.j = zext i8 %i.f to i64                      ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = icmp ult i8 %i.f, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.j, 252
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.l = or i64 %indvars.iv, %i.h
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.m, ptr %i.n, align 4, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = or i64 %indvars.iv.next, %i.h
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.p, ptr %i.q, align 4, !tbaa !10
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.r = or i64 %indvars.iv.next.1, %i.h
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1
  store i32 %i.s, ptr %i.t, align 4, !tbaa !10
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.u = or i64 %indvars.iv.next.2, %i.h
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.2
  store i32 %i.v, ptr %i.w, align 4, !tbaa !10
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !13

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.x = or i64 %indvars.iv.epil, %i.h
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil
  store i32 %i.y, ptr %i.z, align 4, !tbaa !10
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !15

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %bb.b
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next104, 32
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !17

bb.e:                                             ; preds = %._crit_edge
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, 32
  br i1 %exitcond109.not, label %.preheader77, label %.preheader79, !llvm.loop !18

.preheader77:                                     ; preds = %bb.e, %bb.i
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %bb.i ], [ 0, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [139392 x i8], ptr %i.a, i64 %indvars.iv120
  br label %bb.f

bb.f:                                             ; preds = %.preheader77, %._crit_edge90
  %indvars.iv116 = phi i64 [ 0, %.preheader77 ], [ %indvars.iv.next117, %._crit_edge90 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4356 x i8], ptr %i.aa, i64 %indvars.iv116 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !11  ; 2 uses
  %.not99 = icmp eq i8 %i.ad, 0
  br i1 %.not99, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4100
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph89, %._crit_edge86
  %i.ag = phi i8 [ %i.ad, %.lr.ph89 ], [ %i.by, %._crit_edge86 ]
  %indvars.iv113 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next114, %._crit_edge86 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv113 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !19
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.an = load i8, ptr %i.am, align 4, !tbaa !21
  %.not100 = icmp eq i8 %i.an, 0
  br i1 %.not100, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.g, %stbcc__clump_union.exit
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %stbcc__clump_union.exit ], [ 0, %bb.g ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv110
  %i.ap = load i16, ptr %i.ao, align 2            ; 3 uses
  %i.aq = and i16 %i.ap, 4095
  %i.ar = shl i16 %i.ap, 2
  %i.as = ashr i16 %i.ar, 14
  %i.at = sext i16 %i.as to i64
  %i.au = add i64 %indvars.iv116, %i.at
  %i.av = ashr i16 %i.ap, 14
  %i.aw = sext i16 %i.av to i64
  %i.ax = add i64 %indvars.iv120, %i.aw
  %sext = shl i64 %i.ax, 32
  %i.ay = ashr exact i64 %sext, 32
  %i.az = getelementptr inbounds [139392 x i8], ptr %i.a, i64 %i.ay
  %sext135 = shl i64 %i.au, 32
  %i.ba = ashr exact i64 %sext135, 32
  %i.bb = getelementptr inbounds [4356 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = zext nneg i16 %i.aq to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.ah, align 4
  %i.bg = tail call i32 @stbcc__clump_find(ptr noundef nonnull %0, i32 %i.bf) ; 4 uses
  %i.bh = load i32, ptr %i.be, align 4
  %i.bi = tail call i32 @stbcc__clump_find(ptr noundef nonnull %0, i32 %i.bh) ; 2 uses
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %stbcc__clump_union.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph85
  %i.bk = lshr i32 %i.bg, 22
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [139392 x i8], ptr %i.a, i64 %i.bl
  %i.bn = lshr i32 %i.bg, 12
  %i.bo = and i32 %i.bn, 1023
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4356 x i8], ptr %i.bm, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = and i32 %i.bg, 4095
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  store i32 %i.bi, ptr %i.bu, align 4, !tbaa !10
  br label %stbcc__clump_union.exit

stbcc__clump_union.exit:                          ; preds = %.lr.ph85, %bb.h
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.bv = load i8, ptr %i.am, align 4, !tbaa !21
  %i.bw = zext i8 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv.next111, %i.bw
  br i1 %i.bx, label %.lr.ph85, label %._crit_edge86.loopexit, !llvm.loop !22

._crit_edge86.loopexit:                           ; preds = %stbcc__clump_union.exit
  %.pre = load i8, ptr %i.ac, align 2, !tbaa !11
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.loopexit, %bb.g
  %i.by = phi i8 [ %.pre, %._crit_edge86.loopexit ], [ %i.ag, %bb.g ] ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.bz = zext i8 %i.by to i64
  %i.ca = icmp samesign ult i64 %indvars.iv.next114, %i.bz
  br i1 %i.ca, label %bb.g, label %._crit_edge90, !llvm.loop !23

._crit_edge90:                                    ; preds = %._crit_edge86, %bb.f
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, 32
  br i1 %exitcond119.not, label %bb.i, label %bb.f, !llvm.loop !24

bb.i:                                             ; preds = %._crit_edge90
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next121, 32
  br i1 %exitcond123.not, label %.preheader, label %.preheader77, !llvm.loop !25

.preheader:                                       ; preds = %bb.i, %bb.l
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [139392 x i8], ptr %0, i64 %indvars.iv128
  %i.cc = shl nuw nsw i64 %indvars.iv128, 22
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %._crit_edge96
  %indvars.iv124 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next125, %._crit_edge96 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4356 x i8], ptr %i.cb, i64 %indvars.iv124
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2228246 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !11
  %.not101 = icmp eq i8 %i.cf, 0
  br i1 %.not101, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.j
  %i.cg = shl nuw nsw i64 %indvars.iv124, 12
  %i.ch = add nuw nsw i64 %i.cg, %i.cc
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph95, %bb.k
  %.27493 = phi i32 [ 0, %.lr.ph95 ], [ %i.cl, %bb.k ] ; 2 uses
  %i.cj = or i32 %.27493, %i.ci
  %i.ck = tail call i32 @stbcc__clump_find(ptr noundef nonnull %0, i32 %i.cj) ; 0 uses
  %i.cl = add nuw nsw i32 %.27493, 1              ; 2 uses
  %i.cm = load i8, ptr %i.ce, align 2, !tbaa !11
  %i.cn = zext i8 %i.cm to i32
  %i.co = icmp samesign ult i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.k, label %._crit_edge96, !llvm.loop !26

._crit_edge96:                                    ; preds = %bb.k, %bb.j
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next125, 32
  br i1 %exitcond127.not, label %bb.l, label %bb.j, !llvm.loop !27

bb.l:                                             ; preds = %._crit_edge96
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 32
  br i1 %exitcond131.not, label %bb.m, label %.preheader, !llvm.loop !28

bb.m:                                             ; preds = %bb.l
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__build_all_connections_for_cluster(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x [8 x i8]], align 16         ; 10 uses
  %i.b = alloca [512 x i8], align 16              ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2228244
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [139392 x i8], ptr %i.c, i64 %i.d
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [4356 x i8], ptr %i.e, i64 %i.f ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  %i.h = shl nsw i32 %1, 5                        ; 2 uses
  %i.i = shl nsw i32 %2, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 0, ptr %i.j, align 1, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 131092 ; 8 uses
  %i.o = sext i32 %i.i to i64                     ; 7 uses
  %i.p = sext i32 %i.h to i64                     ; 6 uses
  %i.q = icmp slt i32 %1, -1
  br i1 %i.q, label %.loopexit.3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = add nsw i32 %1, 1
  %i.s = load i32, ptr %i.k, align 4, !tbaa !30
  %.not = icmp sge i32 %i.r, %i.s
  %i.t = icmp slt i32 %2, 0
  %or.cond = or i1 %.not, %i.t
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.l, align 4, !tbaa !32
  %.not122 = icmp slt i32 %2, %i.u
end_hunk_0
