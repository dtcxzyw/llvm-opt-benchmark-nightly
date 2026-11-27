Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Copy:bb.a
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ai ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ap, i64 %i.x, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.x ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.ar, i64 %i.x, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.x
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.ai
  %i.av = add i32 %.04861, -4                     ; 2 uses
  %.not57.3 = icmp eq i32 %i.av, 0
  br i1 %.not57.3, label %.loopexit, label %.lr.ph.new, !llvm.loop !38

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.ax = load i32, ptr %1, align 8, !tbaa !27
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw nsw i64 %i.ay, %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.aw, i64 %i.az, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.l, %bb.m, %bb.j
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.c, %bb.b, %bb.a, %.loopexit
  %.050 = phi i32 [ 6, %bb.b ], [ %i.ba, %.loopexit ], [ 0, %bb.c ], [ 33, %bb.a ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @FT_Bitmap_Embolden(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %4 = alloca %struct.FT_Bitmap_, align 8         ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not124 = icmp eq ptr %1, null
  br i1 %.not124, label %bb.av, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %.not125 = icmp eq ptr %i.c, null
  br i1 %.not125, label %bb.av, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp sgt i64 %2, 137438953439
  %i.e = icmp sgt i64 %3, 137438953439
  %or.cond132 = or i1 %i.d, %i.e
  br i1 %or.cond132, label %bb.av, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = trunc i64 %2 to i32
  %i.g = add i32 %i.f, 32
  %i.h = ashr i32 %i.g, 6                         ; 12 uses
  %i.i = trunc i64 %3 to i32
  %i.j = add i32 %i.i, 32
  %i.k = ashr i32 %i.j, 6                         ; 9 uses
  %i.l = or i32 %i.k, %i.h                        ; 2 uses
  %or.cond = icmp eq i32 %i.l, 0
  br i1 %or.cond, label %bb.av, label %bb.f

bb.f:                                             ; preds = %bb.e
  %or.cond3.not = icmp sgt i32 %i.l, -1
  br i1 %or.cond3.not, label %bb.g, label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 4 uses
  %i.n = load i8, ptr %i.m, align 2, !tbaa !30    ; 2 uses
  switch i8 %i.n, label %bb.k [
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 1, label %.thread205
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.av
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.o = call i32 @FT_Bitmap_Convert(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 1) ; 2 uses
  %.not126 = icmp eq i32 %i.o, 0
  br i1 %.not126, label %FT_Bitmap_Done.exit, label %.critedge

FT_Bitmap_Done.exit:                              ; preds = %bb.h
  %i.p = load ptr, ptr %0, align 8, !tbaa !20
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.p, ptr noundef %i.q) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.pre = load i8, ptr %i.m, align 2, !tbaa !30
  br label %bb.k

.thread205:                                       ; preds = %bb.g
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.h, i32 8)
  %i.r = load ptr, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  %i.u = load i32, ptr %1, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !13
  %i.x = tail call i32 @llvm.abs.i32(i32 %i.w, i1 false)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.y = mul nuw nsw i32 %i.h, 3
  br label %.thread

bb.j:                                             ; preds = %bb.g
  %i.z = mul nuw nsw i32 %i.k, 3
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %.0104.ph = phi i32 [ %i.h, %bb.j ], [ %i.y, %bb.i ]
  %.0103.ph = phi i32 [ %i.z, %bb.j ], [ %i.k, %bb.i ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.ad = load i32, ptr %1, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !13
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 false)
  br label %bb.o

bb.k:                                             ; preds = %FT_Bitmap_Done.exit, %bb.g
  %i.ah = phi i8 [ %i.n, %bb.g ], [ %.pre, %FT_Bitmap_Done.exit ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !20    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !31 ; 8 uses
  %i.al = load i32, ptr %1, align 8, !tbaa !27    ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !13
  %i.ao = call i32 @llvm.abs.i32(i32 %i.an, i1 false) ; 6 uses
  switch i8 %i.ah, label %ft_bitmap_assure_buffer.exit [
    i8 1, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 2, label %bb.o
    i8 5, label %bb.o
    i8 6, label %bb.o
  ]

bb.l:                                             ; preds = %.thread205, %bb.k
  %i.ap = phi i32 [ %i.x, %.thread205 ], [ %i.ao, %bb.k ]
  %i.aq = phi ptr [ %i.v, %.thread205 ], [ %i.am, %bb.k ]
  %i.ar = phi i32 [ %i.u, %.thread205 ], [ %i.al, %bb.k ]
  %i.as = phi i32 [ %i.t, %.thread205 ], [ %i.ak, %bb.k ] ; 2 uses
  %i.at = phi ptr [ %i.s, %.thread205 ], [ %i.aj, %bb.k ]
  %i.au = phi ptr [ %i.r, %.thread205 ], [ %i.ai, %bb.k ]
  %.0104208 = phi i32 [ %spec.store.select, %.thread205 ], [ %i.h, %bb.k ] ; 2 uses
  %i.av = add i32 %i.as, %.0104208
  %i.aw = add i32 %i.av, 7
  %i.ax = lshr i32 %i.aw, 3
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ay = add i32 %i.ak, %i.h
  %i.az = add i32 %i.ay, 3
  %i.ba = lshr i32 %i.az, 2
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.bb = add i32 %i.ak, %i.h
  %i.bc = add i32 %i.bb, 1
  %i.bd = lshr i32 %i.bc, 1
  br label %bb.p

bb.o:                                             ; preds = %.thread, %bb.k, %bb.k, %bb.k
  %i.be = phi i32 [ %i.ag, %.thread ], [ %i.ao, %bb.k ], [ %i.ao, %bb.k ], [ %i.ao, %bb.k ]
  %i.bf = phi ptr [ %i.ae, %.thread ], [ %i.am, %bb.k ], [ %i.am, %bb.k ], [ %i.am, %bb.k ]
  %i.bg = phi i32 [ %i.ad, %.thread ], [ %i.al, %bb.k ], [ %i.al, %bb.k ], [ %i.al, %bb.k ]
  %i.bh = phi i32 [ %i.ac, %.thread ], [ %i.ak, %bb.k ], [ %i.ak, %bb.k ], [ %i.ak, %bb.k ] ; 2 uses
  %i.bi = phi ptr [ %i.ab, %.thread ], [ %i.aj, %bb.k ], [ %i.aj, %bb.k ], [ %i.aj, %bb.k ]
  %i.bj = phi ptr [ %i.aa, %.thread ], [ %i.ai, %bb.k ], [ %i.ai, %bb.k ], [ %i.ai, %bb.k ]
  %.0103204 = phi i32 [ %.0103.ph, %.thread ], [ %i.k, %bb.k ], [ %i.k, %bb.k ], [ %i.k, %bb.k ]
  %.0104202 = phi i32 [ %.0104.ph, %.thread ], [ %i.h, %bb.k ], [ %i.h, %bb.k ], [ %i.h, %bb.k ] ; 2 uses
  %i.bk = add i32 %i.bh, %.0104202
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.bl = phi i32 [ %i.ap, %bb.l ], [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %i.be, %bb.o ] ; 6 uses
  %i.bm = phi ptr [ %i.aq, %bb.l ], [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.bf, %bb.o ] ; 6 uses
  %i.bn = phi i32 [ %i.ar, %bb.l ], [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.bg, %bb.o ] ; 10 uses
  %i.bo = phi i32 [ %i.as, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.bh, %bb.o ] ; 3 uses
  %i.bp = phi ptr [ %i.at, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.bi, %bb.o ]
  %i.bq = phi ptr [ %i.au, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ], [ %i.bj, %bb.o ] ; 2 uses
  %.0103203 = phi i32 [ %i.k, %bb.l ], [ %i.k, %bb.m ], [ %i.k, %bb.n ], [ %.0103204, %bb.o ] ; 8 uses
  %.0104200 = phi i32 [ %.0104208, %bb.l ], [ %i.h, %bb.m ], [ %i.h, %bb.n ], [ %.0104202, %bb.o ] ; 7 uses
  %.0123.i = phi i32 [ %i.ax, %bb.l ], [ %i.ba, %bb.m ], [ %i.bd, %bb.n ], [ %i.bk, %bb.o ] ; 8 uses
  %.0122.i = phi i32 [ 1, %bb.l ], [ 2, %bb.m ], [ 4, %bb.n ], [ 8, %bb.o ] ; 3 uses
  %i.br = icmp ne i32 %.0103203, 0
  %.not.i133 = icmp ugt i32 %.0123.i, %i.bl
  %or.cond.i = select i1 %i.br, i1 true, i1 %.not.i133
  br i1 %or.cond.i, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = shl i32 %i.bl, 3
  %i.bt = add i32 %i.bo, %.0104200
  %i.bu = mul i32 %.0122.i, %i.bt                 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, %i.bs
  br i1 %i.bv, label %bb.r, label %thread-pre-split

bb.r:                                             ; preds = %bb.q
  %i.bw = zext i32 %i.bl to i64                   ; 20 uses
  %.not130134.i = icmp eq i32 %i.bn, 0
  br i1 %.not130134.i, label %thread-pre-split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %.0120133.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw ; 4 uses
  %i.by = and i32 %i.bu, 7                        ; 2 uses
  %i.bz = lshr exact i32 65280, %i.by
  %i.ca = lshr i32 %i.bu, 3
  %i.cb = zext nneg i32 %i.ca to i64              ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cb ; 7 uses
  %.not131.i = icmp eq i32 %i.by, 0
  %i.cd = trunc i32 %i.bz to i8                   ; 3 uses
  br i1 %.not131.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.ce = xor i64 %i.cb, -1
  %i.cf = add nsw i64 %i.ce, %i.bw                ; 3 uses
  %xtraiter = and i32 %i.bn, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.preheader.i
  %i.cg = load i8, ptr %i.cc, align 1, !tbaa !24
  %i.ch = and i8 %i.cg, %i.cd
  store i8 %i.ch, ptr %i.cc, align 1, !tbaa !24
  %i.ci = add nuw nsw i64 %i.cb, 1
  %i.cj = icmp samesign ult i64 %i.ci, %i.bw
  br i1 %i.cj, label %bb.s, label %.lr.ph.split.i.prol.loopexit.unr-lcssa

bb.s:                                             ; preds = %.lr.ph.split.i.prol
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %i.cf, i1 false)
  br label %.lr.ph.split.i.prol.loopexit.unr-lcssa

.lr.ph.split.i.prol.loopexit.unr-lcssa:           ; preds = %bb.s, %.lr.ph.split.i.prol
  %i.cl = add nsw i32 %i.bn, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bw
  %.0120.i.prol = getelementptr inbounds nuw i8, ptr %.0120133.i, i64 %i.bw
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol.loopexit.unr-lcssa, %.lr.ph.split.preheader.i
  %.0120137.i.unr = phi ptr [ %.0120133.i, %.lr.ph.split.preheader.i ], [ %.0120.i.prol, %.lr.ph.split.i.prol.loopexit.unr-lcssa ]
  %.0119136.i.unr = phi i32 [ %i.bn, %.lr.ph.split.preheader.i ], [ %i.cl, %.lr.ph.split.i.prol.loopexit.unr-lcssa ]
  %.0121135.i.unr = phi ptr [ %i.cc, %.lr.ph.split.preheader.i ], [ %i.cm, %.lr.ph.split.i.prol.loopexit.unr-lcssa ]
  %i.cn = icmp eq i32 %i.bn, 1
  br i1 %i.cn, label %thread-pre-split, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.co = sub nsw i64 %i.bw, %i.cb                ; 5 uses
  %xtraiter241 = and i32 %i.bn, 3                 ; 2 uses
  %lcmp.mod242.not = icmp eq i32 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.preheader.i, %bb.u
  %.0120137.us.i.prol = phi ptr [ %.0120.us.i.prol, %bb.u ], [ %.0120133.i, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %.0119136.us.i.prol = phi i32 [ %i.cq, %bb.u ], [ %i.bn, %.lr.ph.split.us.preheader.i ]
  %.0121135.us.i.prol = phi ptr [ %i.cr, %bb.u ], [ %i.cc, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %bb.u ], [ 0, %.lr.ph.split.us.preheader.i ]
  %i.cp = icmp ult ptr %.0121135.us.i.prol, %.0120137.us.i.prol
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.us.i.prol
  call void @llvm.memset.p0.i64(ptr align 1 %.0121135.us.i.prol, i8 0, i64 %i.co, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.us.i.prol
  %i.cq = add i32 %.0119136.us.i.prol, -1         ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0121135.us.i.prol, i64 %i.bw ; 2 uses
  %.0120.us.i.prol = getelementptr inbounds nuw i8, ptr %.0120137.us.i.prol, i64 %i.bw ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter241
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !39

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %bb.u, %.lr.ph.split.us.preheader.i
  %.0120137.us.i.unr = phi ptr [ %.0120133.i, %.lr.ph.split.us.preheader.i ], [ %.0120.us.i.prol, %bb.u ]
  %.0119136.us.i.unr = phi i32 [ %i.bn, %.lr.ph.split.us.preheader.i ], [ %i.cq, %bb.u ]
  %.0121135.us.i.unr = phi ptr [ %i.cc, %.lr.ph.split.us.preheader.i ], [ %i.cr, %bb.u ]
  %i.cs = icmp ult i32 %i.bn, 4
  br i1 %i.cs, label %thread-pre-split, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %bb.z
  %.0120137.us.i = phi ptr [ %.0120.us.i.3, %bb.z ], [ %.0120137.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %.0119136.us.i = phi i32 [ %i.da, %bb.z ], [ %.0119136.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %.0121135.us.i = phi ptr [ %i.db, %bb.z ], [ %.0121135.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 6 uses
  %i.ct = icmp ult ptr %.0121135.us.i, %.0120137.us.i
  br i1 %i.ct, label %bb.v, label %.lr.ph.split.us.i.1

bb.v:                                             ; preds = %.lr.ph.split.us.i
  call void @llvm.memset.p0.i64(ptr align 1 %.0121135.us.i, i8 0, i64 %i.co, i1 false)
  br label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %bb.v, %.lr.ph.split.us.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0121135.us.i, i64 %i.bw ; 2 uses
  %.0120.us.i = getelementptr inbounds nuw i8, ptr %.0120137.us.i, i64 %i.bw
  %i.cv = icmp ult ptr %.0121135.us.i, %.0120137.us.i
  br i1 %i.cv, label %bb.w, label %.lr.ph.split.us.i.2

bb.w:                                             ; preds = %.lr.ph.split.us.i.1
  call void @llvm.memset.p0.i64(ptr align 1 %i.cu, i8 0, i64 %i.co, i1 false)
  br label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.w, %.lr.ph.split.us.i.1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.bw ; 2 uses
  %.0120.us.i.1 = getelementptr inbounds nuw i8, ptr %.0120.us.i, i64 %i.bw
  %i.cx = icmp ult ptr %.0121135.us.i, %.0120137.us.i
  br i1 %i.cx, label %bb.x, label %.lr.ph.split.us.i.3

bb.x:                                             ; preds = %.lr.ph.split.us.i.2
  call void @llvm.memset.p0.i64(ptr align 1 %i.cw, i8 0, i64 %i.co, i1 false)
  br label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %bb.x, %.lr.ph.split.us.i.2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.bw ; 2 uses
  %.0120.us.i.2 = getelementptr inbounds nuw i8, ptr %.0120.us.i.1, i64 %i.bw
  %i.cz = icmp ult ptr %.0121135.us.i, %.0120137.us.i
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.us.i.3
  call void @llvm.memset.p0.i64(ptr align 1 %i.cy, i8 0, i64 %i.co, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.split.us.i.3
  %i.da = add i32 %.0119136.us.i, -4              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bw
  %.0120.us.i.3 = getelementptr inbounds nuw i8, ptr %.0120.us.i.2, i64 %i.bw
  %.not130.us.i.3 = icmp eq i32 %i.da, 0
  br i1 %.not130.us.i.3, label %thread-pre-split, label %.lr.ph.split.us.i, !llvm.loop !40

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %bb.ac
  %.0120137.i = phi ptr [ %.0120.i.1, %bb.ac ], [ %.0120137.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 2 uses
  %.0119136.i = phi i32 [ %i.dl, %bb.ac ], [ %.0119136.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %.0121135.i = phi ptr [ %i.dm, %bb.ac ], [ %.0121135.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %i.dc = load i8, ptr %.0121135.i, align 1, !tbaa !24
  %i.dd = and i8 %i.dc, %i.cd
  store i8 %i.dd, ptr %.0121135.i, align 1, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %.0121135.i, i64 1 ; 2 uses
  %i.df = icmp ult ptr %i.de, %.0120137.i
  br i1 %i.df, label %bb.aa, label %.lr.ph.split.i.1

bb.aa:                                            ; preds = %.lr.ph.split.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.de, i8 0, i64 %i.cf, i1 false)
  br label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.aa, %.lr.ph.split.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0121135.i, i64 %i.bw ; 4 uses
  %.0120.i = getelementptr inbounds nuw i8, ptr %.0120137.i, i64 %i.bw ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !24
  %i.di = and i8 %i.dh, %i.cd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %.0120.i
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i.1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dj, i8 0, i64 %i.cf, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.i.1
  %i.dl = add i32 %.0119136.i, -2                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.bw
  %.0120.i.1 = getelementptr inbounds nuw i8, ptr %.0120.i, i64 %i.bw
  %.not130.i.1 = icmp eq i32 %i.dl, 0
  br i1 %.not130.i.1, label %thread-pre-split, label %.lr.ph.split.i, !llvm.loop !40

bb.ad:                                            ; preds = %bb.p
  %i.dn = zext i32 %.0123.i to i64
  %i.do = add i32 %i.bn, %.0103203
  %i.dp = zext i32 %i.do to i64
  %i.dq = call ptr @ft_mem_qrealloc(ptr noundef %i.bq, i64 noundef %i.dn, i64 noundef 0, i64 noundef %i.dp, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 5 uses
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not129.i = icmp eq i32 %i.dr, 0
  br i1 %.not129.i, label %bb.ae, label %ft_bitmap_assure_buffer.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.dt = icmp sgt i32 %i.ds, 0
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !21  ; 3 uses
  %i.dv = load i32, ptr %1, align 8, !tbaa !27
  %i.dw = mul i32 %i.dv, %i.bl                    ; 3 uses
  %i.dx = zext i32 %i.dw to i64
end_hunk_0
begin_hunk_1_@FT_Bitmap_Embolden:bb.a
  br i1 %i.hc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split
  %i.hd = lshr i32 %i.fy, %.0108141
  %i.he = trunc nuw i32 %i.hd to i8
  %i.hf = or i8 %i.ha, %i.he                      ; 2 uses
  store i8 %i.hf, ptr %i.fw, align 1, !tbaa !24
  %i.hg = load i8, ptr %i.gb, align 1, !tbaa !24
  %i.hh = zext i8 %i.hg to i32
  %i.hi = sub nsw i32 8, %.0108141
  %i.hj = shl i32 %i.hh, %i.hi
  %i.hk = trunc i32 %i.hj to i8
  %i.hl = or i8 %i.hf, %i.hk                      ; 2 uses
  store i8 %i.hl, ptr %i.fw, align 1, !tbaa !24
  %.not129.old.not = icmp slt i32 %.0108141, %.0104200
  br i1 %.not129.old.not, label %.lr.ph.split.backedge, label %.loopexit

.lr.ph.split.backedge:                            ; preds = %bb.ar, %bb.au
  %i.hm = phi i8 [ %i.hl, %bb.ar ], [ %i.hz, %bb.au ]
  %.0108141.be = add nuw nsw i32 %.0108141, 1
  br label %.lr.ph.split, !llvm.loop !43

bb.as:                                            ; preds = %.lr.ph.split
  %i.hn = sub nsw i32 %i.gc, %.0108141            ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.hp = zext i8 %i.ha to i32
  %i.hq = zext nneg i32 %i.hn to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %.1111156, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !24
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.ht, %i.hp            ; 3 uses
  %i.hv = load i16, ptr %i.fs, align 8, !tbaa !32 ; 2 uses
  %i.hw = zext i16 %i.hv to i32
  %.not130 = icmp samesign ult i32 %i.hu, %i.hw
  br i1 %.not130, label %bb.au, label %.split.us

.split.us:                                        ; preds = %bb.at, %bb.ao
  %.us-phi = phi i16 [ %i.go, %bb.ao ], [ %i.hv, %bb.at ]
  %i.hx = trunc i16 %.us-phi to i8
  %i.hy = add i8 %i.hx, -1
  store i8 %i.hy, ptr %i.fw, align 1, !tbaa !24
  br label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.hz = trunc i32 %i.hu to i8                   ; 2 uses
  store i8 %i.hz, ptr %i.fw, align 1, !tbaa !24
  %i.ia = and i32 %i.hu, 255
  %i.ib = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.ic = zext i16 %i.ib to i32
  %i.id = add nsw i32 %i.ic, -1
  %i.ie = icmp eq i32 %i.ia, %i.id
  %.not129 = icmp sge i32 %.0108141, %.0104200
  %or.cond163 = select i1 %i.ie, i1 true, i1 %.not129
  br i1 %or.cond163, label %.loopexit, label %.lr.ph.split.backedge

.loopexit:                                        ; preds = %bb.ar, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.an, %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.if = icmp sgt i64 %indvars.iv, 0
  %i.ig = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.if, label %.lr.ph, label %.preheader, !llvm.loop !44

iter.check:                                       ; preds = %.lr.ph151.preheader, %._crit_edge
  %.1153 = phi i32 [ %i.jz, %._crit_edge ], [ 1, %.lr.ph151.preheader ] ; 3 uses
  %i.ih = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.ii = mul nsw i32 %i.ih, %.1153
  %i.ij = sext i32 %i.ii to i64
  %i.ik = sub nsw i64 0, %i.ij                    ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.1111156, i64 %i.ik ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.im = getelementptr i8, ptr %scevgep, i64 %i.ik
  %bound0 = icmp ult ptr %i.il, %scevgep
  %bound1 = icmp ult ptr %.1111156, %i.im
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %wide.load = load <16 x i8>, ptr %i.in, align 1, !tbaa !24, !alias.scope !54
  %wide.load226 = load <16 x i8>, ptr %i.io, align 1, !tbaa !24, !alias.scope !54
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 %index ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %wide.load227 = load <16 x i8>, ptr %i.ip, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %wide.load228 = load <16 x i8>, ptr %i.iq, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.ir = or <16 x i8> %wide.load227, %wide.load
  %i.is = or <16 x i8> %wide.load228, %wide.load226
  store <16 x i8> %i.ir, ptr %i.ip, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  store <16 x i8> %i.is, ptr %i.iq, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index230
  %wide.load231 = load <4 x i8>, ptr %i.iu, align 1, !tbaa !24, !alias.scope !54
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 %index230 ; 2 uses
  %wide.load232 = load <4 x i8>, ptr %i.iv, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.iw = or <4 x i8> %wide.load232, %wide.load231
  store <4 x i8> %i.iw, ptr %i.iv, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.ix, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n234, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv173.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod244.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv173.prol = phi i64 [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173.prol
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !24
  %i.ja = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv173.prol ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !24
  %i.jc = or i8 %i.jb, %i.iz
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !24
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv173.unr = phi i64 [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ]
  %i.jd = sub nsw i64 %indvars.iv173.ph, %wide.trip.count
  %i.je = icmp ugt i64 %i.jd, -4
  br i1 %i.je, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv173 = phi i64 [ %indvars.iv.next174.3, %vec.epilog.scalar.ph ], [ %indvars.iv173.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !24
  %i.jh = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv173 ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !24
  %i.jj = or i8 %i.ji, %i.jg
  store i8 %i.jj, ptr %i.jh, align 1, !tbaa !24
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !24
  %i.jm = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next174 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !24
  %i.jo = or i8 %i.jn, %i.jl
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !24
  %indvars.iv.next174.1 = add nuw nsw i64 %indvars.iv173, 2 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.1
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next174.1 ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !24
  %i.jt = or i8 %i.js, %i.jq
  store i8 %i.jt, ptr %i.jr, align 1, !tbaa !24
  %indvars.iv.next174.2 = add nuw nsw i64 %indvars.iv173, 3 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.2
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !24
  %i.jw = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next174.2 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !24
  %i.jy = or i8 %i.jx, %i.jv
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !24
  %indvars.iv.next174.3 = add nuw nsw i64 %indvars.iv173, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next174.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.jz = add nuw i32 %.1153, 1
  %exitcond176.not = icmp eq i32 %.1153, %.0103203
  br i1 %exitcond176.not, label %._crit_edge155.split, label %iter.check, !llvm.loop !52

._crit_edge155.split:                             ; preds = %._crit_edge, %.preheader136, %.preheader
  %i.ka = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %.1111156, i64 %i.kb
  %i.kd = add nuw i32 %.0105158, 1                ; 2 uses
  %i.ke = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.kf = icmp ult i32 %i.kd, %i.ke
  br i1 %i.kf, label %.preheader136, label %._crit_edge159, !llvm.loop !53

._crit_edge159:                                   ; preds = %._crit_edge155.split, %bb.am
  %.lcssa138 = phi i32 [ 0, %bb.am ], [ %i.ke, %._crit_edge155.split ]
  %i.kg = load i32, ptr %i.bp, align 4, !tbaa !31
  %5 = add i32 %i.kg, %.0104200
  %i.kh = add i32 %.lcssa138, %.0103203
  %6 = freeze i32 %i.kh
  %7 = zext i32 %6 to i64
  %8 = freeze i32 %5
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or disjoint i64 %10, %7
  store i64 %11, ptr %1, align 8
  br label %bb.av

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.av

bb.av:                                            ; preds = %ft_bitmap_assure_buffer.exit, %bb.g, %.critedge, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a, %._crit_edge159
  %.1113 = phi i32 [ 6, %bb.b ], [ 6, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %._crit_edge159 ], [ %.0124.i, %ft_bitmap_assure_buffer.exit ], [ %i.o, %.critedge ], [ 33, %bb.a ], [ 6, %bb.c ], [ 6, %bb.f ]
  ret i32 %.1113
}

; Function Attrs: nounwind uwtable
define i32 @FT_Bitmap_Convert(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !30
  %.off = add i8 %i.f, -1
  %switch = icmp ult i8 %.off, 7
  br i1 %switch, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !13
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %FT_Bitmap_Done.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = icmp slt i32 %i.j, 0
  br label %FT_Bitmap_Done.exit

FT_Bitmap_Done.exit:                              ; preds = %bb.e, %bb.f
  %i.p = phi i1 [ true, %bb.e ], [ %i.o, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.r) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 2, ptr %i.s, align 2, !tbaa !30
  %i.t = load <2 x i32>, ptr %1, align 8, !tbaa !8
  %i.u = load i32, ptr %1, align 8, !tbaa !27
  store <2 x i32> %i.t, ptr %2, align 8, !tbaa !8
  %.not217 = icmp eq i32 %3, 0
  br i1 %.not217, label %bb.i, label %bb.g

bb.g:                                             ; preds = %FT_Bitmap_Done.exit
  %i.v = srem i32 %i.h, %3                        ; 3 uses
  %.not218 = icmp eq i32 %i.v, 0
  br i1 %.not218, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %3, 0
  %i.x = add i32 %i.h, %3
  %i.y = sub i32 %i.x, %i.v
  %i.z = add i32 %3, %i.v
  %i.aa = sub i32 %i.h, %i.z
  %i.ab = select i1 %i.w, i32 %i.y, i32 %i.aa
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %FT_Bitmap_Done.exit
  %.1200 = phi i32 [ %i.h, %FT_Bitmap_Done.exit ], [ %i.ab, %bb.h ], [ %i.h, %bb.g ] ; 3 uses
  %i.ac = sext i32 %.1200 to i64
  %i.ad = zext i32 %i.u to i64
  %i.ae = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef %i.ac, i64 noundef 0, i64 noundef %i.ad, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 2 uses
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !21
  %i.af = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not219 = icmp eq i32 %i.af, 0
  br i1 %.not219, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ag = sub nsw i32 0, %.1200
  %i.ah = select i1 %i.p, i32 %i.ag, i32 %.1200
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !13
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  store i32 6, ptr %i.a, align 4, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ai = phi ptr [ %i.ae, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !13 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %1, align 8, !tbaa !27
  %i.ap = add i32 %i.ao, -1
  %i.aq = mul nsw i32 %i.ap, %i.am
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.ak, i64 %i.as
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0191 = phi ptr [ %i.at, %bb.m ], [ %i.ak, %bb.l ] ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !13 ; 3 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %2, align 8, !tbaa !27
  %i.ay = add i32 %i.ax, -1
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = sext i32 %i.az to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ai, i64 %i.bb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0202 = phi ptr [ %i.bc, %bb.o ], [ %i.ai, %bb.n ] ; 7 uses
  %i.bd = load i8, ptr %i.e, align 2, !tbaa !30
  switch i8 %i.bd, label %.loopexit238 [
    i8 1, label %bb.q
    i8 2, label %bb.z
    i8 5, label %bb.z
    i8 6, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.af
    i8 7, label %bb.aj
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 2, ptr %i.be, align 8, !tbaa !32
  %i.bf = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not230304 = icmp eq i32 %i.bf, 0
  br i1 %.not230304, label %.loopexit238, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph309, %.loopexit
  %.1192307 = phi ptr [ %.0191, %.lr.ph309 ], [ %i.cp, %.loopexit ] ; 3 uses
  %.0198306 = phi i32 [ %i.bf, %.lr.ph309 ], [ %i.ct, %.loopexit ]
  %.1203305 = phi ptr [ %.0202, %.lr.ph309 ], [ %i.cs, %.loopexit ] ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !31 ; 2 uses
  %i.bi = lshr i32 %i.bh, 3                       ; 2 uses
  %.not231292 = icmp eq i32 %i.bi, 0
  br i1 %.not231292, label %._crit_edge298, label %.lr.ph297

.lr.ph297:                                        ; preds = %bb.r, %.lr.ph297
  %.0193295 = phi i32 [ %i.bq, %.lr.ph297 ], [ %i.bi, %bb.r ]
  %.0195294 = phi ptr [ %i.bo, %.lr.ph297 ], [ %.1203305, %bb.r ] ; 2 uses
  %.0197293 = phi ptr [ %i.bp, %.lr.ph297 ], [ %.1192307, %bb.r ] ; 2 uses
  %i.bj = load i8, ptr %.0197293, align 1, !tbaa !24
  %i.bk = insertelement <8 x i8> poison, i8 %i.bj, i64 0
  %i.bl = shufflevector <8 x i8> %i.bk, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bm = lshr <8 x i8> %i.bl, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.bn = and <8 x i8> %i.bm, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %i.bn, ptr %.0195294, align 1, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %.0195294, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0197293, i64 1 ; 2 uses
  %i.bq = add nsw i32 %.0193295, -1               ; 2 uses
  %.not231 = icmp eq i32 %i.bq, 0
  br i1 %.not231, label %._crit_edge298.loopexit, label %.lr.ph297, !llvm.loop !57

._crit_edge298.loopexit:                          ; preds = %.lr.ph297
  %.pre326 = load i32, ptr %i.bg, align 4, !tbaa !31
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %._crit_edge298.loopexit, %bb.r
  %i.br = phi i32 [ %i.bh, %bb.r ], [ %.pre326, %._crit_edge298.loopexit ]
  %.0197.lcssa = phi ptr [ %.1192307, %bb.r ], [ %i.bp, %._crit_edge298.loopexit ]
  %.0195.lcssa = phi ptr [ %.1203305, %bb.r ], [ %i.bo, %._crit_edge298.loopexit ] ; 7 uses
  %i.bs = and i32 %i.br, 7                        ; 7 uses
  %.not232 = icmp eq i32 %i.bs, 0
  br i1 %.not232, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %._crit_edge298
  %i.bt = load i8, ptr %.0197.lcssa, align 1, !tbaa !24 ; 7 uses
  %i.bu = lshr i8 %i.bt, 7
end_hunk_1
begin_hunk_2_@FT_Bitmap_Convert:bb.a
  %i.jp = sext i32 %i.ku to i64
  %i.jq = getelementptr inbounds i8, ptr %.5250, i64 %i.jp
  %.pr = load i32, ptr %i.jk, align 4, !tbaa !31
  br label %.lr.ph253.split

.lr.ph253.split:                                  ; preds = %.lr.ph253, %.lr.ph253.splitthread-pre-split
  %i.jr = phi i32 [ %.pr, %.lr.ph253.splitthread-pre-split ], [ %i.jl, %.lr.ph253 ] ; 2 uses
  %i.js = phi i32 [ %i.kt, %.lr.ph253.splitthread-pre-split ], [ %i.av, %.lr.ph253 ]
  %i.jt = phi i32 [ %i.ku, %.lr.ph253.splitthread-pre-split ], [ %i.am, %.lr.ph253 ]
  %.0176251 = phi i32 [ %i.kv, %.lr.ph253.splitthread-pre-split ], [ %i.jj, %.lr.ph253 ]
  %.5250 = phi ptr [ %i.jq, %.lr.ph253.splitthread-pre-split ], [ %.0191, %.lr.ph253 ] ; 2 uses
  %.5207249 = phi ptr [ %i.jo, %.lr.ph253.splitthread-pre-split ], [ %.0202, %.lr.ph253 ] ; 2 uses
  %.not221244 = icmp eq i32 %i.jr, 0
  br i1 %.not221244, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph253.split, %ft_gray_for_premultiplied_srgb_bgra.exit
  %.0247 = phi i32 [ %i.ks, %ft_gray_for_premultiplied_srgb_bgra.exit ], [ %i.jr, %.lr.ph253.split ]
  %.0174246 = phi ptr [ %i.kr, %ft_gray_for_premultiplied_srgb_bgra.exit ], [ %.5207249, %.lr.ph253.split ] ; 2 uses
  %.0175245 = phi ptr [ %i.kq, %ft_gray_for_premultiplied_srgb_bgra.exit ], [ %.5250, %.lr.ph253.split ] ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0175245, i64 3
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !24  ; 3 uses
  %.not.i234 = icmp eq i8 %i.jv, 0
  br i1 %.not.i234, label %ft_gray_for_premultiplied_srgb_bgra.exit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph
  %i.jw = load i8, ptr %.0175245, align 1, !tbaa !24
  %i.jx = zext i8 %i.jw to i32                    ; 2 uses
  %i.jy = mul nuw nsw i32 %i.jx, 4731
  %i.jz = mul nuw nsw i32 %i.jy, %i.jx
  %i.ka = getelementptr inbounds nuw i8, ptr %.0175245, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !24
  %i.kc = zext i8 %i.kb to i32                    ; 2 uses
  %i.kd = mul nuw nsw i32 %i.kc, 46868
  %i.ke = mul nuw i32 %i.kd, %i.kc
  %i.kf = add nuw i32 %i.ke, %i.jz
  %i.kg = getelementptr inbounds nuw i8, ptr %.0175245, i64 2
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !24
  %i.ki = zext i8 %i.kh to i32                    ; 2 uses
  %i.kj = mul nuw nsw i32 %i.ki, 13937
  %i.kk = mul nuw nsw i32 %i.kj, %i.ki
  %i.kl = add nuw i32 %i.kf, %i.kk
  %i.km = lshr i32 %i.kl, 16
  %.lhs.trunc.i = trunc nuw i32 %i.km to i16
  %.rhs.trunc.i = zext i8 %i.jv to i16
  %i.kn = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %i.ko = trunc i16 %i.kn to i8
  %i.kp = sub i8 %i.jv, %i.ko
  br label %ft_gray_for_premultiplied_srgb_bgra.exit

ft_gray_for_premultiplied_srgb_bgra.exit:         ; preds = %.lr.ph, %bb.ak
  %.0.i235 = phi i8 [ %i.kp, %bb.ak ], [ 0, %.lr.ph ]
  store i8 %.0.i235, ptr %.0174246, align 1, !tbaa !24
  %i.kq = getelementptr inbounds nuw i8, ptr %.0175245, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %.0174246, i64 1
  %i.ks = add i32 %.0247, -1                      ; 2 uses
  %.not221 = icmp eq i32 %i.ks, 0
  br i1 %.not221, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !70

._crit_edge.loopexit:                             ; preds = %ft_gray_for_premultiplied_srgb_bgra.exit
  %.pre320 = load i32, ptr %i.al, align 8, !tbaa !13
  %.pre321 = load i32, ptr %i.au, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph253.split
  %i.kt = phi i32 [ %.pre321, %._crit_edge.loopexit ], [ %i.js, %.lr.ph253.split ] ; 2 uses
  %i.ku = phi i32 [ %.pre320, %._crit_edge.loopexit ], [ %i.jt, %.lr.ph253.split ] ; 2 uses
  %i.kv = add i32 %.0176251, -1                   ; 2 uses
  %.not220 = icmp eq i32 %i.kv, 0
  br i1 %.not220, label %.loopexit238, label %.lr.ph253.splitthread-pre-split, !llvm.loop !71

.loopexit238:                                     ; preds = %._crit_edge, %bb.ai, %.loopexit240, %.prol.loopexit, %.lr.ph291.new, %.loopexit, %.lr.ph253, %bb.aj, %bb.af, %bb.aa, %bb.z, %bb.q, %bb.p
  %i.kw = load i32, ptr %i.a, align 4, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.b, %bb.a, %.loopexit238
  %.1 = phi i32 [ %i.kw, %.loopexit238 ], [ %i.af, %bb.i ], [ 33, %bb.a ], [ 6, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 34) i32 @FT_Bitmap_Done(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp eq ptr %1, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef %i.c) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 33, %bb.a ], [ 6, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Bitmap_Blend(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 %2, i64 %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5, i32 %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %7 = alloca %struct.FT_Bitmap_, align 8         ; 8 uses
  %i.b = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.c = shufflevector <2 x i32> %i.b, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.d = lshr <2 x i32> %i.c, <i32 8, i32 16>
  %.sroa.4204.0.extract.shift = lshr i32 %6, 24   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.e = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.f = insertelement <4 x ptr> %i.e, ptr %4, i64 1
  %i.g = insertelement <4 x ptr> %i.f, ptr %1, i64 2
  %i.h = insertelement <4 x ptr> %i.g, ptr %5, i64 3
  %i.i = icmp eq <4 x ptr> %i.h, splat (ptr null)
  %i.j = bitcast <4 x i1> %i.i to i4
  %i.k = icmp eq i4 %i.j, 0
  %.0208.sroa.gep231 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.0208.sroa.gep232 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.0208.sroa.gep237 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.0208.sroa.gep238 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.0208.sroa.phi233.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.0208.sroa.phi233.sroa.gep278 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.k, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %i.n = load i8, ptr %i.m, align 2, !tbaa !30    ; 2 uses
  switch i8 %i.n, label %bb.ag [
    i8 0, label %.thread
    i8 7, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !30
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.ag, label %bb.e

.thread:                                          ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !30
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.ag, label %.thread279

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %.0208.sroa.gep232, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !13
  %i.z = xor i32 %i.y, %i.w
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.ag, label %.thread279

.thread279:                                       ; preds = %.thread, %bb.e
  %i.ab = phi ptr [ %i.t, %.thread ], [ %i.q, %bb.e ]
  %i.ac = load i32, ptr %.0208.sroa.gep238, align 4, !tbaa !31 ; 2 uses
  %.not261 = icmp eq i32 %i.ac, 0
  br i1 %.not261, label %bb.ag, label %bb.f

bb.f:                                             ; preds = %.thread279
  %i.ad = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not262 = icmp eq i32 %i.ad, 0
  br i1 %.not262, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = and i64 %2, -64                         ; 4 uses
  %i.af = and i64 %3, -64                         ; 5 uses
  %i.ag = load i64, ptr %5, align 8, !tbaa !84
  %i.ah = and i64 %i.ag, -64                      ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !85
  %i.ak = and i64 %i.aj, -64                      ; 3 uses
  %i.al = shl i32 %i.ad, 6
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.am, -9223372036854775744
  %i.ao = icmp sgt i64 %i.an, %i.af
  br i1 %i.ao, label %bb.ag, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i64 %i.af, %i.am                ; 2 uses
  %i.aq = shl i32 %i.ac, 6
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = sub nuw nsw i64 9223372036854775743, %i.ar
  %i.at = icmp slt i64 %i.as, %i.ae
  br i1 %i.at, label %bb.ag, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = add nsw i64 %i.ae, %i.ar                ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !31 ; 3 uses
  %.not263 = icmp eq i32 %i.aw, 0                 ; 2 uses
  br i1 %.not263, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %4, align 8, !tbaa !27    ; 2 uses
  %.not264 = icmp eq i32 %i.ax, 0
  br i1 %.not264, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = shl i32 %i.ax, 6
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = or disjoint i64 %i.az, -9223372036854775808
  %i.bb = icmp sgt i64 %i.ba, %i.ak
  br i1 %i.bb, label %bb.ag, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = shl i32 %i.aw, 6
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = xor i64 %i.bd, 9223372036854775807
  %i.bf = icmp slt i64 %i.be, %i.ah
  br i1 %i.bf, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = sub nsw i64 %i.ak, %i.az
  %i.bh = add nsw i64 %i.ah, %i.bd
  %i.bi = tail call i64 @llvm.smax.i64(i64 %i.au, i64 %i.bh)
  %i.bj = tail call i64 @llvm.smax.i64(i64 %i.af, i64 %i.ak)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.m
  %.0224 = phi i64 [ %i.ah, %bb.m ], [ 9223372036854775807, %bb.j ], [ 9223372036854775807, %bb.i ] ; 4 uses
  %.0222 = phi i64 [ %i.bg, %bb.m ], [ 9223372036854775807, %bb.j ], [ 9223372036854775807, %bb.i ] ; 4 uses
  %.0221 = phi i64 [ %i.bi, %bb.m ], [ %i.au, %bb.j ], [ %i.au, %bb.i ]
  %.0220 = phi i64 [ %i.bj, %bb.m ], [ %i.af, %bb.j ], [ %i.af, %bb.i ]
  %i.bk = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %.0224) ; 4 uses
  %i.bl = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %.0222) ; 4 uses
  %i.bm = sub nsw i64 %.0221, %i.bk
  %.fr304 = freeze i64 %i.bm
  %i.bn = lshr i64 %.fr304, 6                     ; 3 uses
  %i.bo = trunc i64 %i.bn to i32                  ; 4 uses
  %i.bp = sub nsw i64 %.0220, %i.bl
  %.fr303 = freeze i64 %i.bp                      ; 2 uses
  %i.bq = lshr i64 %.fr303, 6                     ; 3 uses
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = icmp ne i32 %i.bo, 0
  %i.bt = icmp ne i32 %i.br, 0
  %or.cond7 = and i1 %i.bs, %i.bt
  br i1 %or.cond7, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %bb.n
  %i.bu = sub nsw i64 %i.ae, %i.bk
  %i.bv = sub nsw i64 %i.ap, %i.bl
  br i1 %.not263, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr %4, align 8, !tbaa !27
  %.not266 = icmp eq i32 %i.bw, 0
  br i1 %.not266, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = sub nsw i64 %.0224, %i.bk
  %i.by = sub nsw i64 %.0222, %i.bl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.1225 = phi i64 [ %i.bx, %bb.q ], [ %.0224, %bb.p ], [ %.0224, %bb.o ]
  %.1223 = phi i64 [ %i.by, %bb.q ], [ %.0222, %bb.p ], [ %.0222, %bb.o ]
  %i.bz = icmp eq i8 %i.n, 0                      ; 3 uses
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %8 = and i64 %i.bq, 4294967295                  ; 2 uses
  %9 = shl i64 %i.bn, 32
  %10 = or disjoint i64 %8, %9
  store i64 %10, ptr %4, align 8
  store i8 7, ptr %i.m, align 2, !tbaa !30
  %i.ca = shl nsw i32 %i.bo, 2                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 256, ptr %i.cc, align 8, !tbaa !32
  %i.cd = sext i32 %i.ca to i64
  %i.ce = call ptr @ft_mem_realloc(ptr noundef %i.l, i64 noundef %i.cd, i64 noundef 0, i64 noundef %8, ptr noundef null, ptr noundef nonnull %i.a) #7
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !21
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not270 = icmp eq i32 %i.cg, 0
  br i1 %.not270, label %bb.z, label %bb.ag

bb.t:                                             ; preds = %bb.r
  %.not267 = icmp eq i32 %i.aw, %i.bo
  br i1 %.not267, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ch = load i32, ptr %4, align 8, !tbaa !27
  %.not268 = icmp eq i32 %i.ch, %i.br
  br i1 %.not268, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !13
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.cj, i1 true) ; 2 uses
  %i.ck = shl nsw i32 %i.bo, 2                    ; 3 uses
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %i.cm = and i64 %i.bq, 4294967295               ; 3 uses
  %i.cn = call ptr @ft_mem_realloc(ptr noundef %i.l, i64 noundef %i.cl, i64 noundef 0, i64 noundef %i.cm, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.co = load i32, ptr %i.a, align 4, !tbaa !8
  %.not269 = icmp eq i32 %i.co, 0
  br i1 %.not269, label %bb.w, label %.thread287

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.ci, align 8, !tbaa !13
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %.thread280, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !21 ; 2 uses
  %i.ct = load i32, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.cu = mul nsw i32 %i.ct, %spec.select         ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cv
  %i.cx = icmp sgt i32 %i.cu, 0
  br i1 %i.cx, label %.lr.ph, label %.thread280

.lr.ph:                                           ; preds = %bb.x
  %i.cy = ashr i64 %.1223, 6
  %i.cz = zext i32 %i.ct to i64
  %i.da = add nsw i64 %i.cy, %i.cz
  %i.db = sub nsw i64 %i.cm, %i.da
  %i.dc = mul nsw i64 %i.db, %i.cl
  %i.dd = getelementptr inbounds i8, ptr %i.cn, i64 %i.dc
  %i.de = ashr i64 %.1225, 4
  %i.df = and i64 %i.de, -4
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 %i.df
  %i.dh = zext nneg i32 %spec.select to i64       ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.0216295 = phi ptr [ %i.dg, %.lr.ph ], [ %i.dj, %bb.y ] ; 2 uses
  %.0217294 = phi ptr [ %i.cs, %.lr.ph ], [ %i.di, %bb.y ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0216295, ptr align 1 %.0217294, i64 %i.dh, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.0217294, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.0216295, i64 %i.cl
  %i.dk = icmp ult ptr %i.di, %i.cw
  br i1 %i.dk, label %bb.y, label %.thread280, !llvm.loop !76

.thread280:                                       ; preds = %bb.y, %bb.x, %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.l, ptr noundef %i.dm) #7
  %11 = shl i64 %i.bn, 32
  %12 = or disjoint i64 %i.cm, %11
  store i64 %12, ptr %4, align 8
  %i.dn = load i32, ptr %i.ci, align 8, !tbaa !13
  %i.do = icmp slt i32 %i.dn, 0
  %i.dp = sub nsw i32 0, %i.ck
  %storemerge = select i1 %i.do, i32 %i.dp, i32 %i.ck
  store i32 %storemerge, ptr %i.ci, align 8, !tbaa !13
  store ptr %i.cn, ptr %i.dl, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %.thread280, %bb.s, %bb.u
  %i.dq = load i8, ptr %i.ab, align 2, !tbaa !30
  %.not271 = icmp eq i8 %i.dq, 2                  ; 3 uses
  br i1 %.not271, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %i.dr = call i32 @FT_Bitmap_Convert(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7, i32 noundef 1) ; 2 uses
  store i32 %i.dr, ptr %i.a, align 4, !tbaa !8
  %.not272 = icmp eq i32 %i.dr, 0
  br i1 %.not272, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.0208.sroa.phi233.sroa.phi = phi ptr [ %.0208.sroa.phi233.sroa.gep, %bb.aa ], [ %.0208.sroa.phi233.sroa.gep278, %bb.z ]
  %.0208.sroa.phi233 = phi ptr [ %7, %bb.aa ], [ %1, %bb.z ]
  %.0208.sroa.phi236 = phi ptr [ %.0208.sroa.gep237, %bb.aa ], [ %.0208.sroa.gep238, %bb.z ]
  %.0208.sroa.phi239 = phi ptr [ %.0208.sroa.gep231, %bb.aa ], [ %.0208.sroa.gep232, %bb.z ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !13 ; 3 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = load ptr, ptr %.0208.sroa.phi233.sroa.phi, align 8, !tbaa !21 ; 2 uses
  %i.dw = load i32, ptr %.0208.sroa.phi233, align 8, !tbaa !27 ; 2 uses
  %i.dx = load i32, ptr %.0208.sroa.phi239, align 8, !tbaa !13 ; 2 uses
  %i.dy = mul nsw i32 %i.dx, %i.dw                ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dv, i64 %i.dz
  %i.eb = icmp sgt i32 %i.dy, 0
  br i1 %i.eb, label %.lr.ph302, label %.loopexit

.lr.ph302:                                        ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !21
  %i.ee = load i32, ptr %4, align 8, !tbaa !27
  %i.ef = zext i32 %i.ee to i64
  %i.eg = lshr i64 %i.bv, 6
  %i.eh = zext i32 %i.dw to i64
  %i.ei = add nuw nsw i64 %i.eg, %i.eh
  %i.ej = sub nsw i64 %i.ef, %i.ei
  %i.ek = zext nneg i32 %i.dt to i64
  %i.el = mul nsw i64 %i.ej, %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.ed, i64 %i.el
  %i.en = lshr i64 %i.bu, 4
  %i.eo = and i64 %i.en, 1152921504606846972
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eo
  %i.eq = and i32 %6, 255                         ; 3 uses
  %i.er = and <2 x i32> %i.d, splat (i32 255)     ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.sroa.4204.0.extract.shift, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert338 = insertelement <16 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat339 = shufflevector <16 x i32> %broadcast.splatinsert338, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat341 = shufflevector <2 x i32> %i.er, <2 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat343 = shufflevector <2 x i32> %i.er, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert361 = insertelement <8 x i32> poison, i32 %.sroa.4204.0.extract.shift, i64 0
  %broadcast.splat362 = shufflevector <8 x i32> %broadcast.splatinsert361, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert363 = insertelement <8 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat364 = shufflevector <8 x i32> %broadcast.splatinsert363, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat366 = shufflevector <2 x i32> %i.er, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat368 = shufflevector <2 x i32> %i.er, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph302, %._crit_edge
  %i.es = phi i32 [ %i.dt, %.lr.ph302 ], [ %i.vi, %._crit_edge ]
  %i.et = phi i32 [ %i.dx, %.lr.ph302 ], [ %i.vj, %._crit_edge ]
  %.0214300 = phi ptr [ %i.ep, %.lr.ph302 ], [ %i.vn, %._crit_edge ] ; 31 uses
  %.0215299 = phi ptr [ %i.dv, %.lr.ph302 ], [ %i.vl, %._crit_edge ] ; 11 uses
  %.0215299336 = ptrtoaddr ptr %.0215299 to i64   ; 7 uses
  %i.eu = load i32, ptr %.0208.sroa.phi236, align 4, !tbaa !31 ; 2 uses
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0215299, i64 %i.ev
  %.not303 = icmp eq i32 %i.eu, 0
  br i1 %.not303, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.ad
  %i.ex = add i64 %.0215299336, %i.ev
  %i.ey = add i64 %.0215299336, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ex, i64 %i.ey)
  %i.ez = sub i64 %umax, %.0215299336             ; 7 uses
  %min.iters.check = icmp ult i64 %i.ez, 8
  br i1 %min.iters.check, label %.lr.ph298.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fa = add i64 %.0215299336, %i.ev
  %i.fb = add i64 %.0215299336, 1
  %i.fc = call i64 @llvm.umax.i64(i64 %i.fa, i64 %i.fb) ; 2 uses
  %i.fd = sub i64 %i.fc, %.0215299336
  %i.fe = shl i64 %i.fd, 2
  %i.ff = getelementptr i8, ptr %.0214300, i64 %i.fe
  %i.fg = sub i64 %i.fc, %.0215299336
  %i.fh = getelementptr i8, ptr %.0215299, i64 %i.fg
  %bound0 = icmp ult ptr %.0214300, %i.fh
  %bound1 = icmp ult ptr %.0215299, %i.ff
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph298.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check337 = icmp ult i64 %i.ez, 16
  br i1 %min.iters.check337, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fi = and i64 %i.ez, 8
  %n.vec = and i64 %i.ez, -16                     ; 5 uses
  %i.fj = shl i64 %n.vec, 2
  %i.fk = getelementptr i8, ptr %.0214300, i64 %i.fj
  %i.fl = getelementptr i8, ptr %.0215299, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fm = shl i64 %index, 2                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.0214300, i64 %i.fm ; 5 uses
  %i.fn = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep344 = getelementptr i8, ptr %i.fn, i64 4
  %i.fo = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep345 = getelementptr i8, ptr %i.fo, i64 8
  %i.fp = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep346 = getelementptr i8, ptr %i.fp, i64 12
  %i.fq = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep347 = getelementptr i8, ptr %i.fq, i64 16
  %i.fr = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep348 = getelementptr i8, ptr %i.fr, i64 20
  %i.fs = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep349 = getelementptr i8, ptr %i.fs, i64 24
  %i.ft = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep350 = getelementptr i8, ptr %i.ft, i64 28
  %i.fu = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep351 = getelementptr i8, ptr %i.fu, i64 32
  %i.fv = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep352 = getelementptr i8, ptr %i.fv, i64 36
  %i.fw = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep353 = getelementptr i8, ptr %i.fw, i64 40
  %i.fx = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep354 = getelementptr i8, ptr %i.fx, i64 44
  %i.fy = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep355 = getelementptr i8, ptr %i.fy, i64 48
  %i.fz = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep356 = getelementptr i8, ptr %i.fz, i64 52
  %i.ga = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep357 = getelementptr i8, ptr %i.ga, i64 56
  %i.gb = getelementptr i8, ptr %.0214300, i64 %i.fm ; 4 uses
  %next.gep358 = getelementptr i8, ptr %i.gb, i64 60
  %next.gep359 = getelementptr i8, ptr %.0215299, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep359, align 1, !tbaa !24, !alias.scope !86
  %i.gc = zext <16 x i8> %wide.load to <16 x i32>
  %i.gd = mul nuw nsw <16 x i32> %broadcast.splat, %i.gc
  %i.ge = udiv <16 x i32> %i.gd, splat (i32 255)  ; 5 uses
  %i.gf = mul nuw nsw <16 x i32> %i.ge, %broadcast.splat339
  %i.gg = udiv <16 x i32> %i.gf, splat (i32 255)
  %i.gh = mul nuw nsw <16 x i32> %i.ge, %broadcast.splat341
  %i.gi = udiv <16 x i32> %i.gh, splat (i32 255)
  %i.gj = mul nuw nsw <16 x i32> %i.ge, %broadcast.splat343
  %i.gk = udiv <16 x i32> %i.gj, splat (i32 255)
  %i.gl = sub nuw nsw <16 x i32> splat (i32 255), %i.ge ; 4 uses
  %i.gm = load i8, ptr %next.gep, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gn = load i8, ptr %next.gep344, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.go = load i8, ptr %next.gep345, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gp = load i8, ptr %next.gep346, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gq = load i8, ptr %next.gep347, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gr = load i8, ptr %next.gep348, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gs = load i8, ptr %next.gep349, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gt = load i8, ptr %next.gep350, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gu = load i8, ptr %next.gep351, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gv = load i8, ptr %next.gep352, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gw = load i8, ptr %next.gep353, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gx = load i8, ptr %next.gep354, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gy = load i8, ptr %next.gep355, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.gz = load i8, ptr %next.gep356, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.ha = load i8, ptr %next.gep357, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.hb = load i8, ptr %next.gep358, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.hc = insertelement <16 x i8> poison, i8 %i.gm, i64 0
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 1
  %i.he = insertelement <16 x i8> %i.hd, i8 %i.go, i64 2
  %i.hf = insertelement <16 x i8> %i.he, i8 %i.gp, i64 3
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 4
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 5
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 6
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 7
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 8
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 9
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 10
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 11
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 12
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 13
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 14
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 15
  %i.hs = zext <16 x i8> %i.hr to <16 x i32>
  %i.ht = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.hu = getelementptr i8, ptr %i.fn, i64 5
  %i.hv = getelementptr i8, ptr %i.fo, i64 9
  %i.hw = getelementptr i8, ptr %i.fp, i64 13
end_hunk_2
begin_hunk_3_@FT_Bitmap_Blend:bb.a
  %i.pf = sub nuw nsw <8 x i32> splat (i32 255), %i.oy ; 4 uses
  %i.pg = load i8, ptr %next.gep370, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.ph = load i8, ptr %next.gep371, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pi = load i8, ptr %next.gep372, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pj = load i8, ptr %next.gep373, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pk = load i8, ptr %next.gep374, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pl = load i8, ptr %next.gep375, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pm = load i8, ptr %next.gep376, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.pn = load i8, ptr %next.gep377, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.po = insertelement <8 x i8> poison, i8 %i.pg, i64 0
  %i.pp = insertelement <8 x i8> %i.po, i8 %i.ph, i64 1
  %i.pq = insertelement <8 x i8> %i.pp, i8 %i.pi, i64 2
  %i.pr = insertelement <8 x i8> %i.pq, i8 %i.pj, i64 3
  %i.ps = insertelement <8 x i8> %i.pr, i8 %i.pk, i64 4
  %i.pt = insertelement <8 x i8> %i.ps, i8 %i.pl, i64 5
  %i.pu = insertelement <8 x i8> %i.pt, i8 %i.pm, i64 6
  %i.pv = insertelement <8 x i8> %i.pu, i8 %i.pn, i64 7
  %i.pw = zext <8 x i8> %i.pv to <8 x i32>
  %i.px = getelementptr inbounds nuw i8, ptr %next.gep370, i64 1
  %i.py = getelementptr i8, ptr %i.op, i64 5
  %i.pz = getelementptr i8, ptr %i.oq, i64 9
  %i.qa = getelementptr i8, ptr %i.or, i64 13
  %i.qb = getelementptr i8, ptr %i.os, i64 17
  %i.qc = getelementptr i8, ptr %i.ot, i64 21
  %i.qd = getelementptr i8, ptr %i.ou, i64 25
  %i.qe = getelementptr i8, ptr %i.ov, i64 29
  %i.qf = load i8, ptr %i.px, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qg = load i8, ptr %i.py, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qh = load i8, ptr %i.pz, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qi = load i8, ptr %i.qa, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qj = load i8, ptr %i.qb, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qk = load i8, ptr %i.qc, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.ql = load i8, ptr %i.qd, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qm = load i8, ptr %i.qe, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.qn = insertelement <8 x i8> poison, i8 %i.qf, i64 0
  %i.qo = insertelement <8 x i8> %i.qn, i8 %i.qg, i64 1
  %i.qp = insertelement <8 x i8> %i.qo, i8 %i.qh, i64 2
  %i.qq = insertelement <8 x i8> %i.qp, i8 %i.qi, i64 3
  %i.qr = insertelement <8 x i8> %i.qq, i8 %i.qj, i64 4
  %i.qs = insertelement <8 x i8> %i.qr, i8 %i.qk, i64 5
  %i.qt = insertelement <8 x i8> %i.qs, i8 %i.ql, i64 6
  %i.qu = insertelement <8 x i8> %i.qt, i8 %i.qm, i64 7
  %i.qv = zext <8 x i8> %i.qu to <8 x i32>
  %i.qw = getelementptr inbounds nuw i8, ptr %next.gep370, i64 2
  %i.qx = getelementptr i8, ptr %i.op, i64 6
  %i.qy = getelementptr i8, ptr %i.oq, i64 10
  %i.qz = getelementptr i8, ptr %i.or, i64 14
  %i.ra = getelementptr i8, ptr %i.os, i64 18
  %i.rb = getelementptr i8, ptr %i.ot, i64 22
  %i.rc = getelementptr i8, ptr %i.ou, i64 26
  %i.rd = getelementptr i8, ptr %i.ov, i64 30
  %i.re = load i8, ptr %i.qw, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rf = load i8, ptr %i.qx, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rg = load i8, ptr %i.qy, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rh = load i8, ptr %i.qz, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.ri = load i8, ptr %i.ra, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rj = load i8, ptr %i.rb, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rk = load i8, ptr %i.rc, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rl = load i8, ptr %i.rd, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.rm = insertelement <8 x i8> poison, i8 %i.re, i64 0
  %i.rn = insertelement <8 x i8> %i.rm, i8 %i.rf, i64 1
  %i.ro = insertelement <8 x i8> %i.rn, i8 %i.rg, i64 2
  %i.rp = insertelement <8 x i8> %i.ro, i8 %i.rh, i64 3
  %i.rq = insertelement <8 x i8> %i.rp, i8 %i.ri, i64 4
  %i.rr = insertelement <8 x i8> %i.rq, i8 %i.rj, i64 5
  %i.rs = insertelement <8 x i8> %i.rr, i8 %i.rk, i64 6
  %i.rt = insertelement <8 x i8> %i.rs, i8 %i.rl, i64 7
  %i.ru = zext <8 x i8> %i.rt to <8 x i32>
  %i.rv = getelementptr inbounds nuw i8, ptr %next.gep370, i64 3
  %i.rw = getelementptr i8, ptr %i.op, i64 7
  %i.rx = getelementptr i8, ptr %i.oq, i64 11
  %i.ry = getelementptr i8, ptr %i.or, i64 15
  %i.rz = getelementptr i8, ptr %i.os, i64 19
  %i.sa = getelementptr i8, ptr %i.ot, i64 23
  %i.sb = getelementptr i8, ptr %i.ou, i64 27
  %i.sc = getelementptr i8, ptr %i.ov, i64 31
  %i.sd = load i8, ptr %i.rv, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.se = load i8, ptr %i.rw, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sf = load i8, ptr %i.rx, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sg = load i8, ptr %i.ry, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sh = load i8, ptr %i.rz, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.si = load i8, ptr %i.sa, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sj = load i8, ptr %i.sb, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sk = load i8, ptr %i.sc, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %i.sl = insertelement <8 x i8> poison, i8 %i.sd, i64 0
  %i.sm = insertelement <8 x i8> %i.sl, i8 %i.se, i64 1
  %i.sn = insertelement <8 x i8> %i.sm, i8 %i.sf, i64 2
  %i.so = insertelement <8 x i8> %i.sn, i8 %i.sg, i64 3
  %i.sp = insertelement <8 x i8> %i.so, i8 %i.sh, i64 4
  %i.sq = insertelement <8 x i8> %i.sp, i8 %i.si, i64 5
  %i.sr = insertelement <8 x i8> %i.sq, i8 %i.sj, i64 6
  %i.ss = insertelement <8 x i8> %i.sr, i8 %i.sk, i64 7
  %i.st = zext <8 x i8> %i.ss to <8 x i32>
  %i.su = mul nuw nsw <8 x i32> %i.pf, %i.pw
  %i.sv = trunc nuw <8 x i32> %i.su to <8 x i16>
  %i.sw = udiv <8 x i16> %i.sv, splat (i16 255)
  %i.sx = zext nneg <8 x i16> %i.sw to <8 x i32>
  %i.sy = add nuw nsw <8 x i32> %i.pa, %i.sx
  %i.sz = mul nuw nsw <8 x i32> %i.pf, %i.qv
  %i.ta = trunc nuw <8 x i32> %i.sz to <8 x i16>
  %i.tb = udiv <8 x i16> %i.ta, splat (i16 255)
  %i.tc = zext nneg <8 x i16> %i.tb to <8 x i32>
  %i.td = add nuw nsw <8 x i32> %i.pc, %i.tc
  %i.te = mul nuw nsw <8 x i32> %i.pf, %i.ru
  %i.tf = trunc nuw <8 x i32> %i.te to <8 x i16>
  %i.tg = udiv <8 x i16> %i.tf, splat (i16 255)
  %i.th = zext nneg <8 x i16> %i.tg to <8 x i32>
  %i.ti = add nuw nsw <8 x i32> %i.pe, %i.th
  %i.tj = mul nuw nsw <8 x i32> %i.pf, %i.st
  %i.tk = trunc nuw <8 x i32> %i.tj to <8 x i16>
  %i.tl = udiv <8 x i16> %i.tk, splat (i16 255)
  %i.tm = zext nneg <8 x i16> %i.tl to <8 x i32>
  %i.tn = add nuw nsw <8 x i32> %i.oy, %i.tm
  %i.to = shufflevector <8 x i32> %i.sy, <8 x i32> %i.td, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tp = trunc <16 x i32> %i.to to <16 x i8>
  %i.tq = shufflevector <8 x i32> %i.ti, <8 x i32> %i.tn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tr = trunc <16 x i32> %i.tq to <16 x i8>
  %interleaved.vec380 = shufflevector <16 x i8> %i.tp, <16 x i8> %i.tr, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec380, ptr %next.gep370, align 1, !tbaa !24, !alias.scope !87, !noalias !86
  %index.next381 = add nuw i64 %index369, 8       ; 2 uses
  %i.ts = icmp eq i64 %index.next381, %n.vec360
  br i1 %i.ts, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n382 = icmp eq i64 %i.ez, %n.vec360
  br i1 %cmp.n382, label %._crit_edge.loopexit, label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0212297.ph = phi ptr [ %.0214300, %iter.check ], [ %.0214300, %vector.memcheck ], [ %i.fk, %vec.epilog.iter.check ], [ %i.om, %vec.epilog.middle.block ]
  %.0213296.ph = phi ptr [ %.0215299, %iter.check ], [ %.0215299, %vector.memcheck ], [ %i.fl, %vec.epilog.iter.check ], [ %i.on, %vec.epilog.middle.block ]
  br label %.lr.ph298

.lr.ph298:                                        ; preds = %.lr.ph298.preheader, %.lr.ph298
  %.0212297 = phi ptr [ %i.ua, %.lr.ph298 ], [ %.0212297.ph, %.lr.ph298.preheader ] ; 6 uses
  %.0213296 = phi ptr [ %i.tt, %.lr.ph298 ], [ %.0213296.ph, %.lr.ph298.preheader ] ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.0213296, i64 1 ; 2 uses
  %i.tu = load i8, ptr %.0213296, align 1, !tbaa !24
  %i.tv = zext i8 %i.tu to i32
  %i.tw = mul nuw nsw i32 %.sroa.4204.0.extract.shift, %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %.0212297, i64 1
  %i.ty = getelementptr inbounds nuw i8, ptr %.0212297, i64 2
  %i.tz = getelementptr inbounds nuw i8, ptr %.0212297, i64 3
  %i.ua = getelementptr inbounds nuw i8, ptr %.0212297, i64 4
  %i.ub = udiv i32 %i.tw, 255                     ; 4 uses
  %i.uc = mul nuw nsw i32 %i.ub, %i.eq
  %i.ud = udiv i32 %i.uc, 255
  %i.ue = insertelement <2 x i32> poison, i32 %i.ub, i64 0
  %i.uf = shufflevector <2 x i32> %i.ue, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ug = mul nuw nsw <2 x i32> %i.uf, %i.er
  %i.uh = udiv <2 x i32> %i.ug, splat (i32 255)
  %i.ui = sub nuw nsw i32 255, %i.ub              ; 4 uses
  %i.uj = load i8, ptr %.0212297, align 1, !tbaa !24
  %i.uk = zext i8 %i.uj to i32
  %i.ul = load i8, ptr %i.tx, align 1, !tbaa !24
  %i.um = zext i8 %i.ul to i32
  %i.un = load i8, ptr %i.ty, align 1, !tbaa !24
  %i.uo = zext i8 %i.un to i32
  %i.up = load i8, ptr %i.tz, align 1, !tbaa !24
  %i.uq = zext i8 %i.up to i32
  %i.ur = mul nuw nsw i32 %i.ui, %i.uk
  %.lhs.trunc = trunc nuw i32 %i.ur to i16
  %i.us = mul nuw nsw i32 %i.ui, %i.um
  %.lhs.trunc328 = trunc nuw i32 %i.us to i16
  %i.ut = mul nuw nsw i32 %i.ui, %i.uo
  %.lhs.trunc330 = trunc nuw i32 %i.ut to i16
  %i.uu = mul nuw nsw i32 %i.ui, %i.uq
  %.lhs.trunc332 = trunc nuw i32 %i.uu to i16
  %i.uv = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.uw = insertelement <4 x i16> %i.uv, i16 %.lhs.trunc328, i64 1
  %i.ux = insertelement <4 x i16> %i.uw, i16 %.lhs.trunc330, i64 2
  %i.uy = insertelement <4 x i16> %i.ux, i16 %.lhs.trunc332, i64 3
  %i.uz = udiv <4 x i16> %i.uy, splat (i16 255)
  %i.va = zext nneg <4 x i16> %i.uz to <4 x i32>
  %i.vb = insertelement <4 x i32> poison, i32 %i.ud, i64 0
  %i.vc = shufflevector <2 x i32> %i.uh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vd = shufflevector <4 x i32> %i.vb, <4 x i32> %i.vc, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ve = insertelement <4 x i32> %i.vd, i32 %i.ub, i64 3
  %i.vf = add nuw nsw <4 x i32> %i.ve, %i.va
  %i.vg = trunc <4 x i32> %i.vf to <4 x i8>
  store <4 x i8> %i.vg, ptr %.0212297, align 1, !tbaa !24
  %i.vh = icmp ult ptr %i.tt, %i.ew
  br i1 %i.vh, label %.lr.ph298, label %._crit_edge.loopexit, !llvm.loop !82

._crit_edge.loopexit:                             ; preds = %.lr.ph298, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %.0208.sroa.phi239, align 8, !tbaa !13
  %.pre304 = load i32, ptr %i.ds, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ad
  %i.vi = phi i32 [ %.pre304, %._crit_edge.loopexit ], [ %i.es, %bb.ad ] ; 2 uses
  %i.vj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.et, %bb.ad ] ; 2 uses
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds i8, ptr %.0215299, i64 %i.vk ; 2 uses
  %i.vm = sext i32 %i.vi to i64
  %i.vn = getelementptr inbounds i8, ptr %.0214300, i64 %i.vm
  %i.vo = icmp ult ptr %i.vl, %i.ea
  br i1 %i.vo, label %bb.ad, label %.loopexit, !llvm.loop !83

.loopexit:                                        ; preds = %._crit_edge, %bb.ac, %bb.ab
  store i64 %i.bk, ptr %5, align 8, !tbaa !84
  %i.vp = and i64 %.fr303, 4294967232
  %i.vq = add nsw i64 %i.vp, %i.bl
  store i64 %i.vq, ptr %i.ai, align 8, !tbaa !85
  %.pre305 = load i32, ptr %i.a, align 4, !tbaa !8
  %i.vr = icmp ne i32 %.pre305, 0
  %i.vs = and i1 %i.bz, %i.vr
  br i1 %i.vs, label %FT_Bitmap_Done.exit, label %bb.af

bb.ae:                                            ; preds = %bb.aa
  br i1 %i.bz, label %.thread287.critedge, label %.thread287

FT_Bitmap_Done.exit:                              ; preds = %.loopexit
  %i.vt = load ptr, ptr %0, align 8, !tbaa !20
  %i.vu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.vt, ptr noundef %i.vv) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br i1 %.not271, label %.thread287, label %FT_Bitmap_Done.exit277

bb.af:                                            ; preds = %.loopexit
  br i1 %.not271, label %.thread287, label %FT_Bitmap_Done.exit277

FT_Bitmap_Done.exit277:                           ; preds = %FT_Bitmap_Done.exit, %bb.af
  %i.vw = load ptr, ptr %0, align 8, !tbaa !20
  %i.vx = load ptr, ptr %.0208.sroa.phi233.sroa.gep, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.vw, ptr noundef %i.vx) #7
  br label %.thread287

.thread287.critedge:                              ; preds = %bb.ae
  %i.vy = load ptr, ptr %0, align 8, !tbaa !20
  %i.vz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.vy, ptr noundef %i.wa) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br label %.thread287

.thread287:                                       ; preds = %.thread287.critedge, %bb.ae, %bb.v, %FT_Bitmap_Done.exit, %FT_Bitmap_Done.exit277, %bb.af
  %i.wb = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %bb.s, %bb.n, %bb.l, %bb.k, %bb.h, %bb.g, %.thread279, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %.thread287
  %.0 = phi i32 [ 6, %bb.c ], [ 0, %bb.d ], [ 0, %.thread279 ], [ 6, %bb.g ], [ 6, %bb.h ], [ 6, %bb.k ], [ 0, %bb.n ], [ %i.wb, %.thread287 ], [ %i.cg, %bb.s ], [ 6, %bb.l ], [ 6, %bb.e ], [ 6, %bb.a ], [ 6, %bb.b ], [ 0, %bb.f ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @FT_GlyphSlot_Own_Bitmap(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.FT_Bitmap_, align 8         ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %i.c = icmp eq i32 %i.b, 1651078259
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !105
  %i.h = and i32 %i.g, 1
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = call i32 @FT_Bitmap_Copy(ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %1) ; 2 uses
  %.not13.not = icmp eq i32 %i.k, 0
  br i1 %.not13.not, label %.thread, label %.sink.split

.thread:                                          ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !26
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !105
  %i.o = or i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !105
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %.thread
  %.1.ph = phi i32 [ 0, %.thread ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"FT_Bitmap_", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !11, i64 24, !4, i64 26, !4, i64 27, !9, i64 32}
!13 = !{!12, !5, i64 8}
!14 = !{!"p1 _ZTS13FT_MemoryRec_", !9, i64 0}
!15 = !{!"p1 _ZTS15FT_ListNodeRec_", !9, i64 0}
!16 = !{!"FT_ListRec_", !15, i64 0, !15, i64 8}
!17 = !{!"p1 _ZTS15FT_RendererRec_", !9, i64 0}
!18 = !{!"p1 _ZTS13FT_ModuleRec_", !9, i64 0}
!19 = !{!"FT_LibraryRec_", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !16, i64 280, !17, i64 296, !18, i64 304, !4, i64 312, !4, i64 344, !5, i64 392}
!20 = !{!19, !14, i64 0}
!21 = !{!12, !10, i64 16}
!22 = !{!10, !10, i64 0}
!23 = !{!11, !11, i64 0}
!24 = !{!4, !4, i64 0}
!25 = !{!9, !9, i64 0}
!26 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 16, i64 8, !22, i64 24, i64 2, !23, i64 26, i64 1, !24, i64 27, i64 1, !24, i64 32, i64 8, !25}
!27 = !{!12, !5, i64 0}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!12, !4, i64 26}
!31 = !{!12, !5, i64 4}
!32 = !{!12, !11, i64 24}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"long", !4, i64 0}
!36 = !{!"FT_Vector_", !35, i64 0, !35, i64 8}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, i1 false, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !29, !33, !34}
!49 = distinct !{!49, !29, !33, !34}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !29, !33}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, !29}
!54 = !{!46}
!55 = !{!47}
!56 = !{!"branch_weights", i32 4, i32 28}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, i1 false, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !29, !33, !34}
!66 = distinct !{!66, !29, !33, !34}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !29, !33}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !29}
end_hunk_3
