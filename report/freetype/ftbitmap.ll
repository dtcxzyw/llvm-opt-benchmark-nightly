Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Copy:bb.a
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
  %i.bp = phi ptr [ %i.at, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.bi, %bb.o ] ; 2 uses
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
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx ; 2 uses
  br i1 %i.dt, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dz = mul i32 %.0123.i, %.0103203
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.dq, i8 0, i64 %i.ea, i1 false)
  %.not146.i = icmp eq i32 %i.dw, 0
  br i1 %.not146.i, label %.loopexit.i, label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ea
  %i.ec = mul i32 %.0122.i, %i.bo
  %i.ed = add i32 %i.ec, 7
  %i.ee = lshr i32 %i.ed, 3                       ; 2 uses
  %i.ef = sub i32 %.0123.i, %i.ee
  %i.eg = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eh = zext nneg i32 %i.bl to i64
  %i.ei = zext i32 %i.ef to i64                   ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph144.i
  %.0116142.i = phi ptr [ %i.eb, %.lr.ph144.i ], [ %i.el, %bb.ag ] ; 2 uses
  %.0117141.i = phi ptr [ %i.du, %.lr.ph144.i ], [ %i.ej, %bb.ag ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0116142.i, ptr align 1 %.0117141.i, i64 %i.eg, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %.0117141.i, i64 %i.eh ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0116142.i, i64 %i.eg ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ek, i8 0, i64 %i.ei, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  %i.em = icmp ult ptr %i.ej, %i.dy
  br i1 %i.em, label %bb.ag, label %.loopexit.i, !llvm.loop !41

bb.ah:                                            ; preds = %bb.ae
  %.not145.i = icmp eq i32 %i.dw, 0
  br i1 %.not145.i, label %._crit_edge.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %bb.ah
  %i.en = mul i32 %.0122.i, %i.bo
  %i.eo = add i32 %i.en, 7
  %i.ep = lshr i32 %i.eo, 3                       ; 2 uses
  %i.eq = sub i32 %.0123.i, %i.ep
  %i.er = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.es = zext nneg i32 %i.bl to i64
  %i.et = zext i32 %i.eq to i64                   ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph140.i
  %.0139.i = phi ptr [ %i.dq, %.lr.ph140.i ], [ %i.ew, %bb.ai ] ; 2 uses
  %.0115138.i = phi ptr [ %i.du, %.lr.ph140.i ], [ %i.eu, %bb.ai ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0139.i, ptr align 1 %.0115138.i, i64 %i.er, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.0115138.i, i64 %i.es ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.er ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ev, i8 0, i64 %i.et, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.et ; 2 uses
  %i.ex = icmp ult ptr %i.eu, %i.dy
  br i1 %i.ex, label %bb.ai, label %._crit_edge.i, !llvm.loop !42

._crit_edge.i:                                    ; preds = %bb.ai, %bb.ah
  %.0.lcssa.i = phi ptr [ %i.dq, %bb.ah ], [ %i.ew, %bb.ai ]
  %i.ey = mul i32 %.0123.i, %.0103203
  %i.ez = zext i32 %i.ey to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ag, %._crit_edge.i, %bb.af
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.bq, ptr noundef %i.fa) #7
  store ptr %i.dq, ptr %i.b, align 8, !tbaa !21
  %i.fb = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.fc = icmp slt i32 %i.fb, 0
  %i.fd = sub nsw i32 0, %.0123.i
  %storemerge.i = select i1 %i.fc, i32 %i.fd, i32 %.0123.i ; 2 uses
  store i32 %storemerge.i, ptr %i.bm, align 8, !tbaa !13
  br label %bb.aj

ft_bitmap_assure_buffer.exit:                     ; preds = %bb.k, %bb.ad
  %.0124.i = phi i32 [ %i.dr, %bb.ad ], [ 18, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.av

thread-pre-split:                                 ; preds = %.lr.ph.split.i.prol.loopexit, %bb.ac, %.lr.ph.split.us.i.prol.loopexit, %bb.z, %bb.r, %bb.q
  %.pr = load i32, ptr %i.bm, align 8, !tbaa !13
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split, %.loopexit.i
  %i.fe = phi i32 [ %.pr, %thread-pre-split ], [ %storemerge.i, %.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.fh = mul nsw i32 %i.fe, %.0103203
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fi
  %.pre177 = load i32, ptr %1, align 8, !tbaa !27
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fk = sub nsw i32 0, %i.fe                    ; 2 uses
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.fm = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.fn = add i32 %i.fm, -1
  %i.fo = mul i32 %i.fn, %i.fk
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fp
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fr = phi i32 [ %.pre177, %bb.ak ], [ %i.fm, %bb.al ]
  %.0110 = phi ptr [ %i.fj, %bb.ak ], [ %i.fq, %bb.al ]
  %.0106 = phi i32 [ %i.fe, %bb.ak ], [ %i.fk, %bb.al ] ; 7 uses
  %.not164 = icmp eq i32 %i.fr, 0
  br i1 %.not164, label %._crit_edge159, label %.preheader136.lr.ph

.preheader136.lr.ph:                              ; preds = %bb.am
  %.0107144 = add nsw i32 %.0106, -1
  %.not217 = icmp eq i32 %.0106, 0
  %.not129140 = icmp slt i32 %.0104200, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.not128152 = icmp slt i32 %.0103203, 1
  %i.ft = icmp eq i32 %.0106, 0
  %i.fu = zext i32 %.0107144 to i64
  %brmerge = select i1 %.not128152, i1 true, i1 %i.ft
  %wide.trip.count = zext nneg i32 %.0106 to i64  ; 9 uses
  %min.iters.check = icmp ult i32 %.0106, 4
  %min.iters.check225 = icmp ult i32 %.0106, 32
  %i.fv = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.fv, 0
  %n.vec229 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n234 = icmp eq i64 %n.vec229, %wide.trip.count
  %xtraiter243 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.lr.ph, %._crit_edge155.split
  %.0105158 = phi i32 [ 0, %.preheader136.lr.ph ], [ %i.kc, %._crit_edge155.split ]
  %.1111156 = phi ptr [ %.0110, %.preheader136.lr.ph ], [ %i.kb, %._crit_edge155.split ] ; 15 uses
  br i1 %.not217, label %._crit_edge155.split, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader136
  br i1 %.not129140, label %.preheader, label %.lr.ph

end_hunk_0
