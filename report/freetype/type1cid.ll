Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/type1cid?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@cid_compute_fd_and_offsets:bb.a
  %.013.i.epil.init = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.an, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0812.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aq, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod101 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013.i.epil = phi ptr [ %i.as, %.lr.ph.i.epil ], [ %.013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0812.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.0812.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ar = shl i64 %.0812.i.epil, 8
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.epil, i64 1
  %i.at = load i8, ptr %.013.i.epil, align 1, !tbaa !72
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !261

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa99 = phi i64 [ %i.aq, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.av, %.lr.ph.i.epil ]
  %i.aw = zext i32 %i.v to i64
  %scevgep.i = getelementptr i8, ptr %i.u, i64 %i.aw
  br label %cid_get_offset.exit

cid_get_offset.exit:                              ; preds = %bb.c, %._crit_edge.loopexit.i
  %.08.lcssa.i = phi i64 [ 0, %bb.c ], [ %.lcssa99, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.u, %bb.c ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 3 uses
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !116 ; 8 uses
  %.not10.i52 = icmp eq i32 %i.ax, 0
  br i1 %.not10.i52, label %cid_get_offset.exit73, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %cid_get_offset.exit
  %xtraiter102 = and i32 %i.ax, 3                 ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 4
  br i1 %i.ay, label %.lr.ph.i53.epil.preheader, label %.lr.ph.i53.preheader.new

.lr.ph.i53.preheader.new:                         ; preds = %.lr.ph.i53.preheader
  %unroll_iter107 = and i32 %i.ax, -4
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader.new
  %.013.i54 = phi ptr [ %.0.lcssa.i, %.lr.ph.i53.preheader.new ], [ %i.bp, %.lr.ph.i53 ] ; 5 uses
  %.0812.i55 = phi i64 [ 0, %.lr.ph.i53.preheader.new ], [ %i.bs, %.lr.ph.i53 ]
  %niter108 = phi i32 [ 0, %.lr.ph.i53.preheader.new ], [ %niter108.next.3, %.lr.ph.i53 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i54, i64 1
  %i.ba = load i8, ptr %.013.i54, align 1, !tbaa !72
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl i64 %.0812.i55, 16
  %i.bd = shl nuw nsw i64 %i.bb, 8
  %i.be = or disjoint i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i54, i64 2
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !72
  %i.bh = zext i8 %i.bg to i64
  %i.bi = or disjoint i64 %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i54, i64 3
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !72
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl i64 %i.bi, 16
  %i.bn = shl nuw nsw i64 %i.bl, 8
  %i.bo = or disjoint i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i54, i64 4 ; 2 uses
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !72
  %i.br = zext i8 %i.bq to i64
  %i.bs = or disjoint i64 %i.bo, %i.br            ; 3 uses
  %niter108.next.3 = add nuw i32 %niter108, 4     ; 2 uses
  %niter108.ncmp.3 = icmp eq i32 %niter108.next.3, %unroll_iter107
  br i1 %niter108.ncmp.3, label %cid_get_offset.exit62.unr-lcssa, label %.lr.ph.i53, !llvm.loop !260

cid_get_offset.exit62.unr-lcssa:                  ; preds = %.lr.ph.i53
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %cid_get_offset.exit62, label %.lr.ph.i53.epil.preheader

.lr.ph.i53.epil.preheader:                        ; preds = %cid_get_offset.exit62.unr-lcssa, %.lr.ph.i53.preheader
  %.013.i54.epil.init = phi ptr [ %.0.lcssa.i, %.lr.ph.i53.preheader ], [ %i.bp, %cid_get_offset.exit62.unr-lcssa ]
  %.0812.i55.epil.init = phi i64 [ 0, %.lr.ph.i53.preheader ], [ %i.bs, %cid_get_offset.exit62.unr-lcssa ]
  %lcmp.mod106 = icmp ne i32 %xtraiter102, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.i53.epil

.lr.ph.i53.epil:                                  ; preds = %.lr.ph.i53.epil, %.lr.ph.i53.epil.preheader
  %.013.i54.epil = phi ptr [ %i.bu, %.lr.ph.i53.epil ], [ %.013.i54.epil.init, %.lr.ph.i53.epil.preheader ] ; 2 uses
  %.0812.i55.epil = phi i64 [ %i.bx, %.lr.ph.i53.epil ], [ %.0812.i55.epil.init, %.lr.ph.i53.epil.preheader ]
  %epil.iter103 = phi i32 [ %epil.iter103.next, %.lr.ph.i53.epil ], [ 0, %.lr.ph.i53.epil.preheader ]
  %i.bt = shl i64 %.0812.i55.epil, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i54.epil, i64 1
  %i.bv = load i8, ptr %.013.i54.epil, align 1, !tbaa !72
  %i.bw = zext i8 %i.bv to i64
  %i.bx = or disjoint i64 %i.bt, %i.bw            ; 2 uses
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %cid_get_offset.exit62, label %.lr.ph.i53.epil, !llvm.loop !263

cid_get_offset.exit62:                            ; preds = %.lr.ph.i53.epil, %cid_get_offset.exit62.unr-lcssa
  %.lcssa98 = phi i64 [ %i.bs, %cid_get_offset.exit62.unr-lcssa ], [ %i.bx, %.lr.ph.i53.epil ] ; 2 uses
  %i.by = zext i32 %i.ax to i64
  %scevgep.i59 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.by
  %i.bz = zext i32 %i.v to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %scevgep.i59, i64 %i.bz ; 2 uses
  %xtraiter109 = and i32 %i.ax, 3                 ; 3 uses
  %i.cb = icmp ult i32 %i.ax, 4
  br i1 %i.cb, label %.lr.ph.i64.epil.preheader, label %cid_get_offset.exit62.new

cid_get_offset.exit62.new:                        ; preds = %cid_get_offset.exit62
  %unroll_iter114 = and i32 %i.ax, -4
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.lr.ph.i64, %cid_get_offset.exit62.new
  %.013.i65 = phi ptr [ %i.ca, %cid_get_offset.exit62.new ], [ %i.cs, %.lr.ph.i64 ] ; 5 uses
  %.0812.i66 = phi i64 [ 0, %cid_get_offset.exit62.new ], [ %i.cv, %.lr.ph.i64 ]
  %niter115 = phi i32 [ 0, %cid_get_offset.exit62.new ], [ %niter115.next.3, %.lr.ph.i64 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i65, i64 1
  %i.cd = load i8, ptr %.013.i65, align 1, !tbaa !72
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl i64 %.0812.i66, 16
  %i.cg = shl nuw nsw i64 %i.ce, 8
  %i.ch = or disjoint i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i65, i64 2
  %i.cj = load i8, ptr %i.cc, align 1, !tbaa !72
  %i.ck = zext i8 %i.cj to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i65, i64 3
  %i.cn = load i8, ptr %i.ci, align 1, !tbaa !72
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl i64 %i.cl, 16
  %i.cq = shl nuw nsw i64 %i.co, 8
  %i.cr = or disjoint i64 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i65, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cm, align 1, !tbaa !72
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cr, %i.cu            ; 3 uses
  %niter115.next.3 = add i32 %niter115, 4         ; 2 uses
  %niter115.ncmp.3 = icmp eq i32 %niter115.next.3, %unroll_iter114
  br i1 %niter115.ncmp.3, label %cid_get_offset.exit73.loopexit.unr-lcssa, label %.lr.ph.i64, !llvm.loop !260

cid_get_offset.exit73.loopexit.unr-lcssa:         ; preds = %.lr.ph.i64
  %lcmp.mod111.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %cid_get_offset.exit73, label %.lr.ph.i64.epil.preheader

.lr.ph.i64.epil.preheader:                        ; preds = %cid_get_offset.exit73.loopexit.unr-lcssa, %cid_get_offset.exit62
  %.013.i65.epil.init = phi ptr [ %i.ca, %cid_get_offset.exit62 ], [ %i.cs, %cid_get_offset.exit73.loopexit.unr-lcssa ]
  %.0812.i66.epil.init = phi i64 [ 0, %cid_get_offset.exit62 ], [ %i.cv, %cid_get_offset.exit73.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i32 %xtraiter109, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.lr.ph.i64.epil

.lr.ph.i64.epil:                                  ; preds = %.lr.ph.i64.epil, %.lr.ph.i64.epil.preheader
  %.013.i65.epil = phi ptr [ %i.cx, %.lr.ph.i64.epil ], [ %.013.i65.epil.init, %.lr.ph.i64.epil.preheader ] ; 2 uses
  %.0812.i66.epil = phi i64 [ %i.da, %.lr.ph.i64.epil ], [ %.0812.i66.epil.init, %.lr.ph.i64.epil.preheader ]
  %epil.iter110 = phi i32 [ %epil.iter110.next, %.lr.ph.i64.epil ], [ 0, %.lr.ph.i64.epil.preheader ]
  %i.cw = shl i64 %.0812.i66.epil, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i65.epil, i64 1
  %i.cy = load i8, ptr %.013.i65.epil, align 1, !tbaa !72
  %i.cz = zext i8 %i.cy to i64
  %i.da = or disjoint i64 %i.cw, %i.cz            ; 2 uses
  %epil.iter110.next = add i32 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i32 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %cid_get_offset.exit73, label %.lr.ph.i64.epil, !llvm.loop !264

cid_get_offset.exit73:                            ; preds = %cid_get_offset.exit73.loopexit.unr-lcssa, %.lr.ph.i64.epil, %cid_get_offset.exit
  %.08.lcssa.i6079 = phi i64 [ 0, %cid_get_offset.exit ], [ %.lcssa98, %.lr.ph.i64.epil ], [ %.lcssa98, %cid_get_offset.exit73.loopexit.unr-lcssa ] ; 2 uses
  %.08.lcssa.i71 = phi i64 [ 0, %cid_get_offset.exit ], [ %i.cv, %cid_get_offset.exit73.loopexit.unr-lcssa ], [ %i.da, %.lr.ph.i64.epil ] ; 3 uses
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %cid_get_offset.exit73
  store i64 %.08.lcssa.i, ptr %2, align 8, !tbaa !110
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %cid_get_offset.exit73
  %.not48 = icmp eq ptr %3, null
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %.08.lcssa.i6079, ptr %3, align 8, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not49 = icmp eq ptr %4, null
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.08.lcssa.i71, ptr %4, align 8, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !101
  %i.dd = zext i32 %i.dc to i64
  %.not50 = icmp ult i64 %.08.lcssa.i, %i.dd
  br i1 %.not50, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !71
  %i.dg = icmp ugt i64 %.08.lcssa.i71, %i.df
  br i1 %i.dg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = icmp ugt i64 %.08.lcssa.i6079, %.08.lcssa.i71
  %spec.select = select i1 %i.dh, i32 9, i32 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.038.ph = phi i32 [ 9, %bb.j ], [ 9, %bb.i ], [ %spec.select, %bb.k ]
  tail call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.b) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %bb.l
  %.03883 = phi i32 [ %.038.ph, %bb.l ], [ %i.p, %bb.a ], [ %i.s, %bb.b ]
  ret i32 %.03883
}

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #5

declare i32 @ps_property_set(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #5

declare i32 @ps_property_get(ptr noundef, ptr noundef, ptr noundef) #5

declare hidden ptr @FT_Get_Module_Interface(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cid_hex_to_binary(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr %.192.val, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = tail call i32 @FT_Stream_Seek(ptr noundef %.192.val, i64 noundef %2) #14 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not78 = icmp eq i64 %1, 0
  br i1 %.not78, label %.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.192.val, i64 8
  br label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %bb.m, %.lr.ph.lr.ph
  %.053.ph71 = phi i8 [ 1, %.lr.ph.lr.ph ], [ %i.ac, %bb.m ] ; 2 uses
  %.055.ph69 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.156, %bb.m ] ; 7 uses
  %.057.ph68 = phi ptr [ %i.a, %.lr.ph.lr.ph ], [ %.259.us, %bb.m ]
  %.060.ph67 = phi ptr [ %i.a, %.lr.ph.lr.ph ], [ %i.ad, %bb.m ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.j
  %.05723.us = phi ptr [ %.259.us, %bb.j ], [ %.057.ph68, %.lr.ph.split.us.preheader ] ; 2 uses
  %.06022.us = phi ptr [ %i.u, %bb.j ], [ %.060.ph67, %.lr.ph.split.us.preheader ] ; 2 uses
  %.not74.us = icmp ult ptr %.06022.us, %.05723.us
  br i1 %.not74.us, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.e = call i64 @FT_Stream_Pos(ptr noundef %.192.val) #14 ; 3 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %i.g = icmp eq i64 %i.f, %i.e
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 %i.f, %i.e
  %i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 256)
  %i.j = call i32 @FT_Stream_Read(ptr noundef nonnull %.192.val, ptr noundef nonnull %i.a, i64 noundef %i.i) #14 ; 2 uses
  %.not75.us = icmp eq i32 %i.j, 0
  br i1 %.not75.us, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = call i64 @FT_Stream_Pos(ptr noundef nonnull %.192.val) #14
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.m = sub i64 0, %i.e
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  %.262.us = phi ptr [ %i.a, %bb.e ], [ %.06022.us, %.lr.ph.split.us ] ; 3 uses
  %.259.us = phi ptr [ %i.n, %bb.e ], [ %.05723.us, %.lr.ph.split.us ] ; 2 uses
  %i.o = load i8, ptr %.262.us, align 1, !tbaa !72 ; 6 uses
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i8 %i.o, -97
  %or.cond.us = icmp ult i8 %i.s, 6
  br i1 %or.cond.us, label %.split43.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add i8 %i.o, -65
  %or.cond78.us = icmp ult i8 %i.t, 6
  br i1 %or.cond78.us, label %.split48.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.o, label %.thread [
    i8 32, label %bb.j
    i8 9, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
    i8 12, label %bb.j
    i8 0, label %bb.j
    i8 62, label %.loopexit
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.262.us, i64 1
  br label %.lr.ph.split.us

.split.us:                                        ; preds = %bb.f
  %i.v = trunc nuw nsw i32 %i.q to i8
  br label %.loopexit

.split43.us:                                      ; preds = %bb.g
  %i.w = add nsw i8 %i.o, -87
  br label %.loopexit

.split48.us:                                      ; preds = %bb.h
  %i.x = add nsw i8 %i.o, -55
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.split43.us, %.split48.us, %.split.us
  %.054 = phi i8 [ %i.v, %.split.us ], [ %i.w, %.split43.us ], [ %i.x, %.split48.us ], [ 0, %bb.i ] ; 2 uses
  %.not77 = phi i1 [ true, %.split.us ], [ true, %.split43.us ], [ true, %.split48.us ], [ false, %bb.i ]
  %.not76 = icmp eq i8 %.053.ph71, 0
  br i1 %.not76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.y = shl nuw i8 %.054, 4
  br label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.z = load i8, ptr %.055.ph69, align 1, !tbaa !72
  %i.aa = add i8 %i.z, %.054
  %i.ab = getelementptr inbounds nuw i8, ptr %.055.ph69, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink = phi i8 [ %i.aa, %bb.l ], [ %i.y, %bb.k ]
  %.156 = phi ptr [ %i.ab, %bb.l ], [ %.055.ph69, %bb.k ] ; 3 uses
  store i8 %.sink, ptr %.055.ph69, align 1, !tbaa !72
  %i.ac = xor i8 %.053.ph71, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.262.us, i64 1
  %i.ae = icmp ult ptr %.156, %i.c
  %or.cond = select i1 %.not77, i1 %i.ae, i1 false
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %.thread, !llvm.loop !265

.thread:                                          ; preds = %bb.m, %bb.i, %bb.c, %bb.d, %bb.b, %bb.a
  %.164 = phi i32 [ %i.b, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.d ], [ 160, %bb.c ], [ 160, %bb.i ], [ 0, %bb.m ]
  %.3 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.055.ph69, %bb.i ], [ %.055.ph69, %bb.d ], [ %.055.ph69, %bb.c ], [ %.156, %bb.m ]
  %i.af = ptrtoint ptr %.3 to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  store i64 %i.ah, ptr %3, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.164
}

declare hidden void @FT_Stream_OpenMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cid_read_subrs(ptr nofree noundef captures(none) initializes((600, 608)) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !101
  %i.j = zext i32 %i.i to i64
  %i.k = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 16, i64 noundef 0, i64 noundef %i.j, ptr noundef null, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162
  %i.m = load i32, ptr %i.a, align 4, !tbaa !21
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.preheader169, label %.loopexit170

.preheader169:                                    ; preds = %bb.a
  %i.n = load i32, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %.not189 = icmp eq i32 %i.n, 0
  br i1 %.not189, label %.loopexit170, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader169
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread161
  %i.t = phi i32 [ %i.n, %.lr.ph ], [ %i.eq, %.thread161 ]
  %indvars.iv214 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next215, %.thread161 ] ; 2 uses
end_hunk_0
begin_hunk_1_@FT_Matrix_Check
declare hidden zeroext i8 @FT_Matrix_Check(ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @FT_Get_Module(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @cid_load_glyph(ptr noundef %0, i32 noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %2 = alloca %struct.FT_Data_, align 8           ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.PS_Decoder_, align 8        ; 6 uses
  %4 = alloca %struct.CFF_SubFontRec_, align 8    ; 4 uses
  %5 = alloca %struct.FT_Incremental_MetricsRec_, align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !285  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !286
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !287  ; 7 uses
  %i.q = icmp ne ptr %i.p, null                   ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !291
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !295
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !297
  %i.v = call i32 %i.s(ptr noundef %i.u, i32 noundef %1, ptr noundef nonnull %2) #14 ; 2 uses
  store i32 %i.v, ptr %i.b, align 4, !tbaa !21
  %.not118 = icmp eq i32 %i.v, 0
  br i1 %.not118, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !298  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 552 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !117  ; 6 uses
  %i.aa = icmp ult i32 %i.x, %i.z
  br i1 %i.aa, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq i32 %i.z, 0
  br i1 %.not10.i, label %cid_get_offset.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ab = load ptr, ptr %2, align 8, !tbaa !300   ; 2 uses
  %xtraiter = and i32 %i.z, 3                     ; 3 uses
  %i.ac = icmp ult i32 %i.z, 4
  br i1 %i.ac, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.z, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi ptr [ %i.ab, %.lr.ph.i.preheader.new ], [ %i.at, %.lr.ph.i ] ; 5 uses
  %.0812.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aw, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.ae = load i8, ptr %.013.i, align 1, !tbaa !72
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl i64 %.0812.i, 16
  %i.ah = shl nuw nsw i64 %i.af, 8
  %i.ai = or disjoint i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i, i64 2
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !72
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i, i64 3
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !72
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl i64 %i.am, 16
  %i.ar = shl nuw nsw i64 %i.ap, 8
  %i.as = or disjoint i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.au = load i8, ptr %i.an, align 1, !tbaa !72
  %i.av = zext i8 %i.au to i64
  %i.aw = or disjoint i64 %i.as, %i.av            ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %cid_get_offset.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !260

cid_get_offset.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cid_get_offset.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %cid_get_offset.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi ptr [ %i.ab, %.lr.ph.i.preheader ], [ %i.at, %cid_get_offset.exit.loopexit.unr-lcssa ]
  %.0812.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aw, %cid_get_offset.exit.loopexit.unr-lcssa ]
  %lcmp.mod145 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013.i.epil = phi ptr [ %i.ay, %.lr.ph.i.epil ], [ %.013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0812.i.epil = phi i64 [ %i.bb, %.lr.ph.i.epil ], [ %.0812.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ax = shl i64 %.0812.i.epil, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.epil, i64 1
  %i.az = load i8, ptr %.013.i.epil, align 1, !tbaa !72
  %i.ba = zext i8 %i.az to i64
  %i.bb = or disjoint i64 %i.ax, %i.ba            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %cid_get_offset.exit, label %.lr.ph.i.epil, !llvm.loop !301

cid_get_offset.exit:                              ; preds = %cid_get_offset.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.d
  %.08.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.aw, %cid_get_offset.exit.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph.i.epil ] ; 3 uses
  store i64 %.08.lcssa.i, ptr %i.a, align 8, !tbaa !110
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !101
  %i.be = zext i32 %i.bd to i64
  %.not119 = icmp ult i64 %.08.lcssa.i, %i.be
  br i1 %.not119, label %bb.f, label %bb.e

bb.e:                                             ; preds = %cid_get_offset.exit
  store i32 9, ptr %i.b, align 4, !tbaa !21
  br label %.thread

bb.f:                                             ; preds = %cid_get_offset.exit
  %i.bf = sub i32 %i.x, %i.z
  %i.bg = zext i32 %i.bf to i64                   ; 3 uses
  %i.bh = call ptr @ft_mem_qalloc(ptr noundef %i.j, i64 noundef %i.bg, ptr noundef nonnull %i.b) #14 ; 3 uses
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !21
  %.not120 = icmp eq i32 %i.bi, 0
  br i1 %.not120, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %2, align 8, !tbaa !300
  %i.bk = load i32, ptr %i.y, align 8, !tbaa !117
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bm, i64 %i.bg, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !291
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !302
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !297
  call void %i.bp(ptr noundef %i.bq, ptr noundef nonnull %2) #14
  %i.br = load i32, ptr %i.b, align 4, !tbaa !21
  %.not121 = icmp eq i32 %i.br, 0
  br i1 %.not121, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.h, %bb.c
  %.0105.ph = phi ptr [ null, %bb.c ], [ %i.bh, %bb.h ], [ null, %bb.e ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.aa

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.bs = call fastcc i32 @cid_compute_fd_and_offsets(ptr noundef nonnull %i.f, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 2 uses
  store i32 %i.bs, ptr %i.b, align 4, !tbaa !21
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %bb.k, label %.thread132

bb.k:                                             ; preds = %bb.j
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !110
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.thread132, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = call ptr @ft_mem_qalloc(ptr noundef %i.j, i64 noundef %i.bv, ptr noundef nonnull %i.b) #14 ; 4 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !21
  %.not116 = icmp eq i32 %i.by, 0
  br i1 %.not116, label %bb.m, label %.thread132

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 584
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !115
  %i.cb = add i64 %i.ca, %i.bu
  %i.cc = call i32 @FT_Stream_ReadAt(ptr noundef %i.h, i64 noundef %i.cb, ptr noundef %i.bx, i64 noundef %i.bv) #14 ; 2 uses
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !21
  %.not117 = icmp eq i32 %i.cc, 0
  br i1 %.not117, label %bb.n, label %.thread132

.thread132:                                       ; preds = %bb.k, %bb.j, %bb.m, %bb.l
  %.2107.ph = phi ptr [ %i.bx, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ %i.bx, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.aa

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %.pre = load i64, ptr %i.a, align 8, !tbaa !110
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %i.cd = phi i64 [ %.08.lcssa.i, %bb.i ], [ %.pre, %bb.n ] ; 2 uses
  %.3108 = phi ptr [ %i.bh, %bb.i ], [ %i.bx, %bb.n ] ; 7 uses
  %.2104 = phi i64 [ %i.bg, %bb.i ], [ %i.bv, %bb.n ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !162
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !274
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2716
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !303
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !163
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2720
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !304
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !102
  %i.cp = getelementptr inbounds nuw [336 x i8], ptr %i.co, i64 %i.cd ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false), !tbaa.struct !223
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !305
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !266 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2712
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !306
  %i.cx = icmp sgt i32 %i.cv, -1                  ; 2 uses
  %narrow = select i1 %i.cx, i32 %i.cv, i32 0     ; 2 uses
  %spec.select = zext i32 %narrow to i64          ; 4 uses
  %i.cy = icmp ult i64 %.2104, %spec.select
  br i1 %i.cy, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.cx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !272
  call void %i.da(ptr noundef %.3108, i64 noundef %.2104, i16 noundef zeroext 4330) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !307
  %.not122 = icmp eq i8 %i.dc, 0
  br i1 %.not122, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !209
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !308
  %i.dh = getelementptr inbounds nuw i8, ptr %.3108, i64 %spec.select
  %i.di = trunc i64 %.2104 to i32
  %i.dj = sub i32 %i.di, %narrow
  %i.dk = call i32 %i.dg(ptr noundef nonnull %0, ptr noundef %i.dh, i32 noundef %i.dj) #14 ; 2 uses
  store i32 %i.dk, ptr %i.b, align 4, !tbaa !21
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !309
  call void %i.dm(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1) #14
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !310
  call void %i.do(ptr noundef nonnull %i.f, ptr noundef nonnull %i.cp, ptr noundef nonnull %4) #14
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 1056
  store ptr %4, ptr %i.dp, align 8, !tbaa !311
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !209
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !321
  %i.du = getelementptr inbounds nuw i8, ptr %.3108, i64 %spec.select ; 2 uses
  %i.dv = sub i64 %.2104, %spec.select            ; 2 uses
  %i.dw = call i32 %i.dt(ptr noundef nonnull %3, ptr noundef %i.du, i64 noundef %i.dv) #14 ; 3 uses
  store i32 %i.dw, ptr %i.b, align 4, !tbaa !21
  %i.dx = and i32 %i.dw, 255
  %i.dy = icmp eq i32 %i.dx, 164
  br i1 %i.dy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !322
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 304
  store i8 0, ptr %i.eb, align 8, !tbaa !206
  %i.ec = load ptr, ptr %i.dq, align 8, !tbaa !209
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !321
  %i.ef = call i32 %i.ee(ptr noundef nonnull %3, ptr noundef %i.du, i64 noundef %i.dv) #14 ; 2 uses
  store i32 %i.ef, ptr %i.b, align 4, !tbaa !21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.eg = phi i32 [ %i.ef, %bb.u ], [ %i.dw, %bb.t ]
  %.099 = phi i8 [ 1, %bb.u ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  store i32 9, ptr %i.b, align 4, !tbaa !21
  br label %bb.aa

bb.x:                                             ; preds = %bb.v, %bb.s
  %i.eh = phi i32 [ %i.eg, %bb.v ], [ %i.dk, %bb.s ]
  %.2101.ph = phi i8 [ %.099, %bb.v ], [ 0, %bb.s ] ; 3 uses
  %i.ei = icmp eq i32 %i.eh, 0
  %or.cond5 = and i1 %i.q, %i.ei
  br i1 %or.cond5, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !291
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !323
  %.not123 = icmp eq ptr %i.el, null
  br i1 %.not123, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !225
  %i.eo = call i64 @FT_RoundFix(i64 noundef %i.en) #14
  %i.ep = ashr i64 %i.eo, 16
  store i64 %i.ep, ptr %5, align 8, !tbaa !324
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.eq, align 8, !tbaa !326
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !227
  %i.et = call i64 @FT_RoundFix(i64 noundef %i.es) #14
  %i.eu = ashr i64 %i.et, 16
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !327
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !328
  %i.ey = call i64 @FT_RoundFix(i64 noundef %i.ex) #14
  %i.ez = ashr i64 %i.ey, 16
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !329
  %i.fb = load ptr, ptr %i.p, align 8, !tbaa !291
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !323
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !297
  %i.fg = call i32 %i.fd(ptr noundef %i.ff, i32 noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %5) #14
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !21
  %i.fh = load i64, ptr %5, align 8, !tbaa !324
  %i.fi = shl nsw i64 %i.fh, 16
  store i64 %i.fi, ptr %i.em, align 8, !tbaa !225
  %i.fj = load <2 x i64>, ptr %i.ev, align 8, !tbaa !110
  %i.fk = shl nsw <2 x i64> %i.fj, splat (i64 16)
  store <2 x i64> %i.fk, ptr %i.er, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %.thread132, %.thread, %bb.z, %bb.y, %bb.x
  %.4 = phi ptr [ %.3108, %bb.z ], [ %.3108, %bb.y ], [ %.3108, %bb.x ], [ %.3108, %bb.w ], [ %.0105.ph, %.thread ], [ %.2107.ph, %.thread132 ]
  %.3 = phi i8 [ %.2101.ph, %bb.z ], [ %.2101.ph, %bb.y ], [ %.2101.ph, %bb.x ], [ 0, %bb.w ], [ 0, %.thread ], [ 0, %.thread132 ]
  call void @ft_mem_free(ptr noundef %i.j, ptr noundef %.4) #14
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !322
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 305
  store i8 %.3, ptr %i.fn, align 1, !tbaa !208
  %i.fo = load i32, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.fo
}

declare i64 @FT_RoundFix(i64 noundef) local_unnamed_addr #5

declare void @FT_Outline_Transform(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @FT_Outline_Translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @ft_synthesize_vertical_metrics(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_ReadAt(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Request_Metrics(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

end_hunk_1
