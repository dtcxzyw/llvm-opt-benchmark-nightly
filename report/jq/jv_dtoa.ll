Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv_dtoa?download=true
inline.NumInlined: 82
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@multadd:bb.a
  %i.x = add nsw i64 %i.w, %i.r                   ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %.027, i64 12 ; 2 uses
  store i32 %i.z, ptr %i.t, align 4, !tbaa !27
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !27
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.e
  %i.ae = add nsw i64 %i.ad, %i.y                 ; 2 uses
  %i.af = lshr i64 %i.ae, 32                      ; 3 uses
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.027, i64 16 ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !27
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !71

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.027.epil.init = phi ptr [ %i.c, %bb.a ], [ %i.ah, %.unr-lcssa ]
  %.0.epil.init = phi i64 [ %i.d, %bb.a ], [ %i.af, %.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.027.epil = phi ptr [ %.027.epil.init, %.epil.preheader ], [ %i.ao, %bb.c ] ; 3 uses
  %.0.epil = phi i64 [ %.0.epil.init, %.epil.preheader ], [ %i.am, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = load i32, ptr %.027.epil, align 4, !tbaa !27
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.e
  %i.al = add nsw i64 %i.ak, %.0.epil             ; 2 uses
  %i.am = lshr i64 %i.al, 32                      ; 2 uses
  %i.an = trunc i64 %i.al to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %.027.epil, i64 4
  store i32 %i.an, ptr %.027.epil, align 4, !tbaa !27
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !72

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %.unr-lcssa ], [ %i.am, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %.epilog-lcssa
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %.not32 = icmp slt i32 %i.b, %i.aq
  br i1 %.not32, label %Bfree.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %i.at = add nsw i32 %i.as, 1                    ; 3 uses
  %i.au = icmp slt i32 %i.as, 7
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16 ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.az = shl nuw i32 1, %i.at                    ; 2 uses
  %i.ba = add nsw i32 %i.az, -1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 32
  %i.be = tail call ptr @jv_mem_alloc(i64 noundef %i.bd) #10 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %i.at, ptr %i.bf, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 %i.az, ptr %i.bg, align 4, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi ptr [ %i.ax, %bb.g ], [ %i.be, %bb.h ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  store i32 0, ptr %i.bh, align 4, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !28
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = add nsw i64 %i.bm, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bj, i64 %i.bn, i1 false)
  %i.bo = load i32, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 7
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @jv_mem_free(ptr noundef nonnull %1) #10
  br label %Bfree.exit

bb.k:                                             ; preds = %bb.i
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16
  store ptr %i.bs, ptr %1, align 8, !tbaa !18
  store ptr %1, ptr %i.br, align 8, !tbaa !16
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.k, %bb.j, %bb.d
  %.029 = phi ptr [ %1, %bb.d ], [ %.0.i, %bb.j ], [ %.0.i, %bb.k ] ; 3 uses
  %i.bt = trunc nuw i64 %.lcssa to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.029, i64 24
  %i.bv = add nsw i32 %i.b, 1
  %i.bw = sext i32 %i.b to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bw
  store i32 %i.bt, ptr %i.bx, align 4, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %.029, i64 20
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %Bfree.exit, %.epilog-lcssa
  %.1 = phi ptr [ %.029, %Bfree.exit ], [ %1, %.epilog-lcssa ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @quorem(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %cmp.exit.thread2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.g = add nsw i32 %i.b, -1                     ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %.ptr80.ptr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.idx = shl nsw i64 %i.h, 2                     ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %.idx
  %.ptr81 = getelementptr i8, ptr %i.j, i64 24    ; 2 uses
  %i.k = load i32, ptr %.ptr81, align 4, !tbaa !27 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !27
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = udiv i32 %i.k, %i.m                      ; 4 uses
  %.not = icmp ugt i32 %i.m, %i.k
  br i1 %.not, label %bb.f, label %.preheader9

.preheader9:                                      ; preds = %bb.b
  %i.o = zext i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader9, %bb.c
  %.069 = phi ptr [ %i.ad, %bb.c ], [ %.ptr80.ptr, %.preheader9 ] ; 3 uses
  %.064 = phi ptr [ %i.p, %bb.c ], [ %i.f, %.preheader9 ] ; 2 uses
  %.062 = phi i64 [ %i.ab, %bb.c ], [ 0, %.preheader9 ]
  %.0 = phi i64 [ %i.u, %bb.c ], [ 0, %.preheader9 ]
  %i.p = getelementptr inbounds nuw i8, ptr %.064, i64 4 ; 2 uses
  %i.q = load i32, ptr %.064, align 4, !tbaa !27
  %i.r = zext i32 %i.q to i64
  %i.s = mul nuw i64 %i.r, %i.o
  %i.t = add nuw i64 %i.s, %.0                    ; 2 uses
  %i.u = lshr i64 %i.t, 32
  %i.v = load i32, ptr %.069, align 4, !tbaa !27
  %i.w = zext i32 %i.v to i64
  %i.x = and i64 %i.t, 4294967295
  %i.y = add nuw nsw i64 %.062, %i.x
  %i.z = sub nsw i64 %i.w, %i.y                   ; 2 uses
  %i.aa = lshr i64 %i.z, 32
  %i.ab = and i64 %i.aa, 1
  %i.ac = trunc i64 %i.z to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %.069, i64 4
  store i32 %i.ac, ptr %.069, align 4, !tbaa !27
  %.not78 = icmp ugt ptr %i.p, %i.i
  br i1 %.not78, label %bb.d, label %bb.c, !llvm.loop !73

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %.ptr81, align 4, !tbaa !27
  %.not79 = icmp eq i32 %i.ae, 0
  br i1 %.not79, label %.preheader8, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %i.c, align 4, !tbaa !28
  br label %bb.f

.preheader8:                                      ; preds = %bb.d
  %i.af = icmp sgt i32 %i.b, 2
  br i1 %i.af, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader8
  %.067.add13 = add nsw i64 %.idx, 20
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.067.add15 = phi i64 [ %.067.add, %bb.e ], [ %.067.add13, %.lr.ph.preheader ] ; 3 uses
  %.07114 = phi i32 [ %i.ah, %bb.e ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.ptr = getelementptr inbounds i8, ptr %0, i64 %.067.add15
  %i.ag = load i32, ptr %.ptr, align 4, !tbaa !27
  %.not82 = icmp eq i32 %i.ag, 0
  br i1 %.not82, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.ah = add nsw i32 %.07114, -1                 ; 2 uses
  %.067.add = add nsw i64 %.067.add15, -4
  %i.ai = icmp sgt i64 %.067.add15, 28
  br i1 %i.ai, label %.lr.ph, label %.critedge, !llvm.loop !74

.critedge:                                        ; preds = %.lr.ph, %bb.e, %.preheader8
  %.071.lcssa = phi i32 [ %i.g, %.preheader8 ], [ %i.ah, %bb.e ], [ %.07114, %.lr.ph ] ; 3 uses
  store i32 %.071.lcssa, ptr %i.c, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.critedge, %bb.b
  %i.aj = phi i32 [ %.pre, %._crit_edge ], [ %.071.lcssa, %.critedge ], [ %i.d, %bb.b ] ; 3 uses
  %.172 = phi i32 [ %i.g, %._crit_edge ], [ %.071.lcssa, %.critedge ], [ %i.g, %bb.b ] ; 4 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !28  ; 2 uses
  %.not.i = icmp eq i32 %i.aj, %i.ak
  br i1 %.not.i, label %bb.g, label %cmp.exit

bb.g:                                             ; preds = %bb.f
  %i.al = sext i32 %i.aj to i64                   ; 2 uses
  %.idx.i = shl nsw i64 %i.al, 2
  %.add.i = add nsw i64 %.idx.i, 24
  %i.am = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.017.idx.i = phi i64 [ %.add.i, %bb.g ], [ %.017.add.i, %bb.j ] ; 2 uses
  %.0.i = phi ptr [ %i.am, %bb.g ], [ %i.ao, %bb.j ]
  %.017.add.i = add nsw i64 %.017.idx.i, -4       ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %0, i64 %.017.add.i
  %i.an = load i32, ptr %.ptr.i, align 4, !tbaa !27 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.0.i, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27 ; 2 uses
  %.not23.i = icmp eq i32 %i.an, %i.ap
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ult i32 %i.an, %i.ap
  br i1 %i.aq, label %cmp.exit.thread2, label %cmp.exit.thread.preheader

bb.j:                                             ; preds = %bb.h
  %.not24.i = icmp sgt i64 %.017.idx.i, 28
  br i1 %.not24.i, label %bb.h, label %cmp.exit.thread.preheader

cmp.exit:                                         ; preds = %bb.f
  %.not4 = icmp slt i32 %i.aj, %i.ak
  br i1 %.not4, label %cmp.exit.thread2, label %cmp.exit.thread.preheader

cmp.exit.thread.preheader:                        ; preds = %bb.j, %bb.i, %cmp.exit
  br label %cmp.exit.thread

cmp.exit.thread:                                  ; preds = %cmp.exit.thread.preheader, %cmp.exit.thread
  %.170 = phi ptr [ %i.bb, %cmp.exit.thread ], [ %.ptr80.ptr, %cmp.exit.thread.preheader ] ; 3 uses
  %.165 = phi ptr [ %i.ar, %cmp.exit.thread ], [ %i.f, %cmp.exit.thread.preheader ] ; 2 uses
  %.163 = phi i64 [ %i.az, %cmp.exit.thread ], [ 0, %cmp.exit.thread.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.165, i64 4 ; 2 uses
  %i.as = load i32, ptr %.165, align 4, !tbaa !27
  %i.at = zext i32 %i.as to i64
  %i.au = load i32, ptr %.170, align 4, !tbaa !27
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %.163, %i.at
  %i.ax = sub nsw i64 %i.av, %i.aw                ; 2 uses
  %i.ay = lshr i64 %i.ax, 32
  %i.az = and i64 %i.ay, 1
  %i.ba = trunc i64 %i.ax to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.170, i64 4
  store i32 %i.ba, ptr %.170, align 4, !tbaa !27
  %.not83 = icmp ugt ptr %i.ar, %i.i
  br i1 %.not83, label %bb.k, label %cmp.exit.thread, !llvm.loop !75

bb.k:                                             ; preds = %cmp.exit.thread
  %i.bc = add i32 %i.n, 1                         ; 2 uses
  %i.bd = sext i32 %.172 to i64
  %.idx85 = shl nsw i64 %i.bd, 2                  ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 %.idx85
  %.ptr87 = getelementptr i8, ptr %i.be, i64 24
  %i.bf = load i32, ptr %.ptr87, align 4, !tbaa !27
  %.not84 = icmp eq i32 %i.bf, 0
  br i1 %.not84, label %.preheader, label %cmp.exit.thread2

.preheader:                                       ; preds = %bb.k
  %i.bg = icmp sgt i32 %.172, 1
  br i1 %i.bg, label %.lr.ph21.preheader, label %.critedge2

.lr.ph21.preheader:                               ; preds = %.preheader
  %.168.add18 = add nuw nsw i64 %.idx85, 20
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %bb.l
  %.168.add20 = phi i64 [ %.168.add, %bb.l ], [ %.168.add18, %.lr.ph21.preheader ] ; 3 uses
  %.219 = phi i32 [ %i.bi, %bb.l ], [ %.172, %.lr.ph21.preheader ] ; 2 uses
  %.ptr86 = getelementptr inbounds i8, ptr %0, i64 %.168.add20
  %i.bh = load i32, ptr %.ptr86, align 4, !tbaa !27
  %.not88 = icmp eq i32 %i.bh, 0
  br i1 %.not88, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %.lr.ph21
  %i.bi = add nsw i32 %.219, -1                   ; 2 uses
  %.168.add = add nsw i64 %.168.add20, -4
  %i.bj = icmp sgt i64 %.168.add20, 28
  br i1 %i.bj, label %.lr.ph21, label %.critedge2, !llvm.loop !76

.critedge2:                                       ; preds = %.lr.ph21, %bb.l, %.preheader
  %.2.lcssa = phi i32 [ %.172, %.preheader ], [ %i.bi, %bb.l ], [ %.219, %.lr.ph21 ]
  store i32 %.2.lcssa, ptr %i.c, align 4, !tbaa !28
  br label %cmp.exit.thread2

cmp.exit.thread2:                                 ; preds = %bb.i, %cmp.exit, %.critedge2, %bb.k, %bb.a
  %.073 = phi i32 [ 0, %bb.a ], [ %i.bc, %bb.k ], [ %i.bc, %.critedge2 ], [ %i.n, %cmp.exit ], [ %i.n, %bb.i ]
  ret i32 %.073
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jvp_dtoa_fmt(ptr nofree noundef captures(none) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) %1, double noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = call ptr @jvp_dtoa(ptr noundef %0, double noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 10 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !27
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.044 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 11 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !27   ; 9 uses
  %i.h = icmp eq i32 %i.g, 9999
  br i1 %i.h, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  %.145 = phi ptr [ %i.k, %.preheader ], [ %.044, %bb.c ] ; 2 uses
  %.041 = phi ptr [ %i.i, %.preheader ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.041, i64 1
  %i.j = load i8, ptr %.041, align 1, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.145, i64 1
  store i8 %i.j, ptr %.145, align 1, !tbaa !21
  %.not57 = icmp eq i8 %i.j, 0
  br i1 %.not57, label %.loopexit, label %.preheader, !llvm.loop !77

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %i.g, -3
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %i.g to i64
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.d to i64
  %reass.sub = sub i64 %i.o, %i.p
  %i.q = add i64 %reass.sub, 15
  %i.r = icmp slt i64 %i.q, %i.m
  br i1 %i.r, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.t = load i8, ptr %i.d, align 1, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.044, i64 1 ; 2 uses
  store i8 %i.t, ptr %.044, align 1, !tbaa !21
  %i.v = load i8, ptr %i.s, align 1, !tbaa !21
  %.not54 = icmp eq i8 %i.v, 0
  br i1 %.not54, label %.loopexit60, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.044, i64 2 ; 3 uses
  store i8 46, ptr %i.u, align 1, !tbaa !21
  %i.x = load i8, ptr %i.s, align 1, !tbaa !21    ; 2 uses
  store i8 %i.x, ptr %i.w, align 1, !tbaa !21
  %.not5575 = icmp eq i8 %i.x, 0
  br i1 %.not5575, label %.loopexit60, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.g, %.lr.ph79
  %.14277 = phi ptr [ %i.y, %.lr.ph79 ], [ %i.s, %bb.g ]
  %.24676 = phi ptr [ %i.z, %.lr.ph79 ], [ %i.w, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %.14277, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.24676, i64 1 ; 3 uses
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !21   ; 2 uses
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !21
  %.not55 = icmp eq i8 %i.aa, 0
  br i1 %.not55, label %.loopexit60, label %.lr.ph79, !llvm.loop !78

.loopexit60:                                      ; preds = %.lr.ph79, %bb.g, %bb.f
  %.347 = phi ptr [ %i.u, %bb.f ], [ %i.w, %bb.g ], [ %i.z, %.lr.ph79 ] ; 5 uses
end_hunk_0
