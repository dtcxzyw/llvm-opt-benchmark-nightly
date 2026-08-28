Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fdt?download=true
inline.NumInlined: 70
inline.NumDeleted: 6
begin_hunk_0_@fdt_next_node:bb.a
  %i.b = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.c = icmp sgt i32 %1, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = and i32 %1, 3
  %or.cond.i = icmp eq i32 %i.d, 0
  br i1 %or.cond.i, label %bb.c, label %fdt_check_node_offset_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @fdt_next_tag(ptr noundef readonly %0, i32 noundef %1, ptr noundef nonnull %i.a)
  %.not2.i = icmp eq i32 %i.e, 1
  br i1 %.not2.i, label %fdt_check_node_offset_.exit, label %fdt_check_node_offset_.exit.thread

fdt_check_node_offset_.exit.thread:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

fdt_check_node_offset_.exit:                      ; preds = %bb.c
  %i.f = load i32, ptr %i.a, align 4              ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.f, ptr %i.b, align 4, !tbaa !13
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %fdt_check_node_offset_.exit, %bb.a
  %i.h = phi i32 [ %i.f, %fdt_check_node_offset_.exit ], [ 0, %bb.a ]
  %.not18 = icmp eq ptr %2, null
  br i1 %.not18, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.d, %.split.us
  %i.i = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.j = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %i.i, ptr noundef nonnull %i.b)
  switch i32 %i.j, label %.split.us [
    i32 9, label %.split25.us
    i32 1, label %.thread
  ], !llvm.loop !16

.split:                                           ; preds = %bb.d, %.backedge
  %i.k = phi i32 [ %.pre, %.backedge ], [ %i.h, %bb.d ] ; 2 uses
  %i.l = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %i.k, ptr noundef nonnull %i.b)
  switch i32 %i.l, label %.backedge [
    i32 9, label %.split25.us
    i32 2, label %bb.e
    i32 1, label %.split27.us
  ]

.backedge:                                        ; preds = %bb.e, %.split
  %.pre = load i32, ptr %i.b, align 4, !tbaa !13
  br label %.split, !llvm.loop !16

.split27.us:                                      ; preds = %.split
  %i.m = load i32, ptr %2, align 4, !tbaa !13
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %2, align 4, !tbaa !13
  br label %.thread

bb.e:                                             ; preds = %.split
  %i.o = load i32, ptr %2, align 4, !tbaa !13     ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %2, align 4, !tbaa !13
  %i.q = icmp slt i32 %i.o, 1
  br i1 %i.q, label %bb.f, label %.backedge

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.b, align 4, !tbaa !13
  br label %.thread

.split25.us:                                      ; preds = %.split, %.split.us
  %i.s = load i32, ptr %i.b, align 4, !tbaa !13   ; 3 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %.split25.us
  %i.u = icmp ne i32 %i.s, -8
  %i.v = icmp ne ptr %2, null
  %or.cond = or i1 %i.v, %i.u
  %spec.select = select i1 %or.cond, i32 %i.s, i32 -1
  br label %.thread

.thread:                                          ; preds = %.split.us, %.split27.us, %fdt_check_node_offset_.exit.thread, %bb.g, %.split25.us, %fdt_check_node_offset_.exit, %bb.f
  %.0 = phi i32 [ %i.r, %bb.f ], [ -1, %.split25.us ], [ %i.f, %fdt_check_node_offset_.exit ], [ -4, %fdt_check_node_offset_.exit.thread ], [ %spec.select, %bb.g ], [ %i.k, %.split27.us ], [ %i.i, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, -2147483648) i32 @fdt_first_subnode(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = icmp sgt i32 %1, -1
  br i1 %i.c, label %bb.b, label %.split.i.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = and i32 %1, 3
  %or.cond.i.i = icmp eq i32 %i.d, 0
  br i1 %or.cond.i.i, label %bb.c, label %fdt_check_node_offset_.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @fdt_next_tag(ptr noundef readonly %0, i32 noundef %1, ptr noundef nonnull %i.a)
  %.not2.i.i = icmp eq i32 %i.e, 1
  br i1 %.not2.i.i, label %fdt_check_node_offset_.exit.i, label %fdt_check_node_offset_.exit.thread.i

fdt_check_node_offset_.exit.thread.i:             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %fdt_next_node.exit

fdt_check_node_offset_.exit.i:                    ; preds = %bb.c
  %i.f = load i32, ptr %i.a, align 4              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %fdt_next_node.exit, label %.split.i.preheader

.split.i.preheader:                               ; preds = %fdt_check_node_offset_.exit.i, %bb.a
  %.ph = phi i32 [ 0, %bb.a ], [ %i.f, %fdt_check_node_offset_.exit.i ]
  br label %.split.i

.split.i:                                         ; preds = %.split.i.preheader, %.backedge.i
  %i.h = phi i32 [ %.pre.i, %.backedge.i ], [ %.ph, %.split.i.preheader ] ; 2 uses
  %i.i = call i32 @fdt_next_tag(ptr noundef readonly %0, i32 noundef %i.h, ptr noundef nonnull %i.b)
  switch i32 %i.i, label %.backedge.i [
    i32 9, label %.split25.us.i
    i32 2, label %bb.d
    i32 1, label %fdt_next_node.exit
  ]

.backedge.i:                                      ; preds = %.split.i
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !13
  br label %.split.i, !llvm.loop !16

bb.d:                                             ; preds = %.split.i
  %i.j = load i32, ptr %i.b, align 4, !tbaa !13
  br label %fdt_next_node.exit

.split25.us.i:                                    ; preds = %.split.i
  %i.k = load i32, ptr %i.b, align 4, !tbaa !13
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.k, i32 -1)
  br label %fdt_next_node.exit

fdt_next_node.exit:                               ; preds = %.split.i, %.split25.us.i, %fdt_check_node_offset_.exit.thread.i, %fdt_check_node_offset_.exit.i, %bb.d
  %i.l = phi i1 [ true, %fdt_check_node_offset_.exit.i ], [ true, %.split25.us.i ], [ true, %fdt_check_node_offset_.exit.thread.i ], [ true, %bb.d ], [ false, %.split.i ]
  %.0.i = phi i32 [ %i.f, %fdt_check_node_offset_.exit.i ], [ %spec.select, %.split25.us.i ], [ -4, %fdt_check_node_offset_.exit.thread.i ], [ %i.j, %bb.d ], [ %i.h, %.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.m = icmp slt i32 %.0.i, 0
  %or.cond = or i1 %i.m, %i.l
  %. = select i1 %or.cond, i32 -1, i32 %.0.i
  ret i32 %.
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, -2147483648) i32 @fdt_next_subnode(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not.i.old = icmp eq ptr %0, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %.019 = phi i32 [ 1, %bb.a ], [ %i.cz, %bb.o ]
  %.0 = phi i32 [ %1, %bb.a ], [ %i.bi, %bb.o ]   ; 3 uses
  %i.l = icmp sgt i32 %.0, -1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = and i32 %.0, 3
  %or.cond.i.i = icmp eq i32 %i.m, 0
  br i1 %or.cond.i.i, label %bb.d, label %fdt_check_node_offset_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @fdt_next_tag(ptr noundef readonly %0, i32 noundef %.0, ptr noundef nonnull %i.a)
  %.not2.i.i = icmp eq i32 %i.n, 1
  br i1 %.not2.i.i, label %fdt_check_node_offset_.exit.i, label %fdt_check_node_offset_.exit.thread.i

fdt_check_node_offset_.exit.thread.i:             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %fdt_next_node.exit.thread

fdt_check_node_offset_.exit.i:                    ; preds = %bb.d
  %i.o = load i32, ptr %i.a, align 4              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %fdt_next_node.exit.thread, label %bb.e

bb.e:                                             ; preds = %fdt_check_node_offset_.exit.i, %bb.b
  %i.q = phi i32 [ %i.o, %fdt_check_node_offset_.exit.i ], [ 0, %bb.b ] ; 3 uses
  %i.r = load i8, ptr %i.b, align 1, !tbaa !12    ; 2 uses
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw i32 %i.s, 24
  %i.u = load i8, ptr %i.c, align 1, !tbaa !12    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = or disjoint i32 %i.w, %i.t
  %i.y = load i8, ptr %i.d, align 1, !tbaa !12    ; 2 uses
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.x, %i.aa
  %i.ac = load i8, ptr %i.e, align 1, !tbaa !12   ; 2 uses
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad            ; 3 uses
  %i.af = add i32 %i.ae, %i.q                     ; 3 uses
  %i.ag = icmp ult i32 %i.af, %i.q
  %i.ah = icmp ugt i32 %i.af, -5
  %or.cond43 = or i1 %i.ag, %i.ah
  br i1 %or.cond43, label %fdt_next_node.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ai = load i8, ptr %i.f, align 1, !tbaa !12
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 24
  %i.al = load i8, ptr %i.g, align 1, !tbaa !12
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 16
  %i.ao = or disjoint i32 %i.an, %i.ak
  %i.ap = load i8, ptr %i.h, align 1, !tbaa !12
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ao, %i.ar
  %i.at = load i8, ptr %i.i, align 1, !tbaa !12
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = zext i8 %i.u to i64
  %i.ax = shl nuw nsw i64 %i.aw, 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.az = zext i8 %i.r to i64
  %i.ba = shl nuw nsw i64 %i.az, 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = zext i8 %i.y to i64
  %i.bd = shl nuw nsw i64 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %i.bf = zext i8 %i.ac to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.backedge.i
  %i.bh = phi i32 [ %i.af, %.lr.ph ], [ %i.cs, %.backedge.i ]
  %i.bi = phi i32 [ %i.q, %.lr.ph ], [ %i.cr, %.backedge.i ] ; 7 uses
  %.144 = phi i32 [ %.019, %.lr.ph ], [ %.2, %.backedge.i ] ; 6 uses
  %i.bj = add nuw i32 %i.bh, 4
  %i.bk = icmp ugt i32 %i.bj, %i.av
  br i1 %i.bk, label %fdt_next_node.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = load i32, ptr %i.j, align 1
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bl) ; 2 uses
  %i.bn = icmp ugt i32 %i.bm, 16                  ; 2 uses
  %i.bo = add i32 %i.bi, 4                        ; 7 uses
  br i1 %i.bn, label %bb.h, label %fdt_offset_ptr.exit13._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.bp = load i32, ptr %i.k, align 1
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  %i.br = icmp ugt i32 %i.bo, %i.bq
  %or.cond34 = or i1 %.not.i.old, %i.br
  br i1 %or.cond34, label %fdt_next_node.exit.thread, label %fdt_offset_ptr.exit13._crit_edge

fdt_offset_ptr.exit13._crit_edge:                 ; preds = %bb.g, %bb.h
  %i.bs = zext nneg i32 %i.bi to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13
  %rev.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.bu) ; 2 uses
  switch i32 %rev.i.i, label %fdt_next_node.exit.thread [
    i32 1, label %.preheader.i.preheader.a
    i32 3, label %bb.k
    i32 9, label %.critedge.i
    i32 2, label %.critedge.i
    i32 4, label %.critedge.i
  ]

.preheader.i.preheader.a:                         ; preds = %fdt_offset_ptr.exit13._crit_edge
  %i.bv = zext i32 %i.bo to i64
  %2 = icmp sgt i32 %i.bo, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader.a, %fdt_offset_ptr.exit
  %indvars.iv = phi i64 [ %i.bv, %.preheader.i.preheader.a ], [ %indvars.iv.next, %fdt_offset_ptr.exit ] ; 5 uses
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = add i32 %i.ae, %i.bw                    ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp samesign ule i64 %indvars.iv, %i.by
  %or.cond.i9.not79 = and i1 %2, %i.bz
  %.not67 = icmp ult i32 %i.bx, %i.av
  %or.cond74 = and i1 %or.cond.i9.not79, %.not67
  br i1 %or.cond74, label %bb.i, label %fdt_next_node.exit.thread

bb.i:                                             ; preds = %.preheader.i
  br i1 %i.bn, label %bb.j, label %fdt_offset_ptr.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = load i32, ptr %i.k, align 1
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %i.cc = zext i32 %i.cb to i64
  %.not = icmp samesign ult i64 %indvars.iv, %i.cc
  br i1 %.not, label %fdt_offset_ptr.exit, label %fdt_next_node.exit.thread

fdt_offset_ptr.exit:                              ; preds = %bb.j, %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !12
  %.not40.i = icmp eq i8 %i.ce, 0
  br i1 %.not40.i, label %.critedge.i.loopexit, label %.preheader.i, !llvm.loop !14

bb.k:                                             ; preds = %fdt_offset_ptr.exit13._crit_edge
  %i.cf = tail call ptr @fdt_offset_ptr(ptr noundef nonnull readonly %0, i32 noundef %i.bo, i32 noundef 4) ; 2 uses
  %.not38.i = icmp eq ptr %i.cf, null
  br i1 %.not38.i, label %fdt_next_node.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !13
  %rev.i44.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.cg) ; 2 uses
  %i.ch = add nuw i32 %i.bi, 12                   ; 2 uses
  %i.ci = add i32 %rev.i44.i, %i.ch               ; 3 uses
  %i.cj = icmp ult i32 %i.bm, 16
  %i.ck = icmp ugt i32 %rev.i44.i, 7
  %or.cond.i = and i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.cl = and i32 %i.ch, 7
  %.not39.i = icmp eq i32 %i.cl, 0
  %i.cm = add nsw i32 %i.ci, 4
  %spec.select.i = select i1 %.not39.i, i32 %i.ci, i32 %i.cm
  br label %.critedge.i

.critedge.i.loopexit:                             ; preds = %fdt_offset_ptr.exit
  %i.cn = trunc nuw i64 %indvars.iv.next to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.m, %bb.l, %fdt_offset_ptr.exit13._crit_edge, %fdt_offset_ptr.exit13._crit_edge, %fdt_offset_ptr.exit13._crit_edge
  %.1.i = phi i32 [ %i.bo, %fdt_offset_ptr.exit13._crit_edge ], [ %i.bo, %fdt_offset_ptr.exit13._crit_edge ], [ %i.bo, %fdt_offset_ptr.exit13._crit_edge ], [ %spec.select.i, %bb.m ], [ %i.ci, %bb.l ], [ %i.cn, %.critedge.i.loopexit ] ; 2 uses
  %i.co = sub nsw i32 %.1.i, %i.bi
  %i.cp = tail call ptr @fdt_offset_ptr(ptr noundef nonnull readonly %0, i32 noundef %i.bi, i32 noundef %i.co)
  %.not42.i = icmp eq ptr %i.cp, null
  br i1 %.not42.i, label %fdt_next_node.exit.thread, label %fdt_next_tag.exit

fdt_next_tag.exit:                                ; preds = %.critedge.i
  %i.cq = add i32 %.1.i, 3                        ; 2 uses
  %i.cr = and i32 %i.cq, -4                       ; 3 uses
  switch i32 %rev.i.i, label %.backedge.i [
    i32 9, label %fdt_next_node.exit.thread
    i32 2, label %bb.n
    i32 1, label %fdt_next_node.exit
  ]

.backedge.i:                                      ; preds = %bb.n, %fdt_next_tag.exit
  %.2 = phi i32 [ %.144, %fdt_next_tag.exit ], [ %i.cw, %bb.n ]
  %i.cs = add i32 %i.ae, %i.cr                    ; 3 uses
  %i.ct = icmp slt i32 %i.cq, 0
  %i.cu = icmp ult i32 %i.cs, %i.cr
  %or.cond.i11 = or i1 %i.ct, %i.cu
  %i.cv = icmp ugt i32 %i.cs, -5
  %or.cond = or i1 %or.cond.i11, %i.cv
  br i1 %or.cond, label %fdt_next_node.exit.thread, label %bb.f, !llvm.loop !16

bb.n:                                             ; preds = %fdt_next_tag.exit
  %i.cw = add nsw i32 %.144, -1
  %i.cx = icmp slt i32 %.144, 1
  br i1 %i.cx, label %fdt_next_node.exit.thread, label %.backedge.i

fdt_next_node.exit:                               ; preds = %fdt_next_tag.exit
  %i.cy = icmp slt i32 %.144, 0
  br i1 %i.cy, label %fdt_next_node.exit.thread, label %bb.o

bb.o:                                             ; preds = %fdt_next_node.exit
  %i.cz = add nuw nsw i32 %.144, 1
  %.not33 = icmp eq i32 %.144, 0
  br i1 %.not33, label %fdt_next_node.exit.thread, label %bb.b, !llvm.loop !17

fdt_next_node.exit.thread:                        ; preds = %fdt_check_node_offset_.exit.i, %bb.o, %fdt_next_node.exit, %bb.e, %bb.n, %bb.h, %bb.f, %.backedge.i, %.critedge.i, %fdt_offset_ptr.exit13._crit_edge, %bb.k, %fdt_next_tag.exit, %.preheader.i, %bb.j, %fdt_check_node_offset_.exit.thread.i
  %.05 = phi i32 [ -1, %.preheader.i ], [ -1, %fdt_check_node_offset_.exit.thread.i ], [ -1, %bb.n ], [ -1, %bb.j ], [ -1, %fdt_next_tag.exit ], [ -1, %bb.k ], [ -1, %fdt_offset_ptr.exit13._crit_edge ], [ -1, %.critedge.i ], [ -1, %.backedge.i ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %fdt_check_node_offset_.exit.i ], [ -1, %bb.e ], [ -1, %fdt_next_node.exit ], [ %i.bi, %bb.o ]
  ret i32 %.05
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local ptr @fdt_find_string_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %i.b = sext i32 %1 to i64
  %i.c = shl i64 %i.a, 32
  %sext = add i64 %i.c, 4294967296
  %i.d = ashr exact i64 %sext, 32                 ; 2 uses
  %i.e = sub nsw i64 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %.not13 = icmp slt i64 %i.e, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.014 = phi ptr [ %i.h, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %bcmp = tail call i32 @bcmp(ptr %.014, ptr nonnull %2, i64 %i.d)
  %i.g = icmp eq i32 %bcmp, 0
  br i1 %i.g, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.014, i64 1 ; 2 uses
  %.not = icmp ugt ptr %i.h, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.012 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.014, %.lr.ph ]
  ret ptr %.012
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -19, 1) i32 @fdt_move(ptr nofree noundef readonly %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fdt_ro_probe_(ptr noundef %0) ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 1
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)  ; 2 uses
  %i.g = icmp ugt i32 %i.f, %2
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %i.f to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %0, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ %i.b, %bb.b ], [ -3, %bb.a ], [ 0, %bb.d ], [ -3, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
end_hunk_0
