Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@llvm.lifetime.end.p0

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
  %i.n = load i8, ptr %i.m, align 2, !tbaa !32    ; 2 uses
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
  %i.p = load ptr, ptr %0, align 8, !tbaa !14
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.p, ptr noundef %i.q) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.pre = load i8, ptr %i.m, align 2, !tbaa !32
  br label %bb.k

.thread205:                                       ; preds = %bb.g
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.h, i32 8)
  %i.r = load ptr, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33
  %i.u = load i32, ptr %1, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !9
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
  %i.aa = load ptr, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33
  %i.ad = load i32, ptr %1, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !9
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 false)
  br label %bb.o

bb.k:                                             ; preds = %FT_Bitmap_Done.exit, %bb.g
  %i.ah = phi i8 [ %i.n, %bb.g ], [ %.pre, %FT_Bitmap_Done.exit ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !14    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !33 ; 8 uses
  %i.al = load i32, ptr %1, align 8, !tbaa !27    ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !9
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
  %lcmp.mod.not = trunc i32 %i.bn to i1
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol, label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.preheader.i
  %i.cg = load i8, ptr %i.cc, align 1, !tbaa !25
  %i.ch = and i8 %i.cg, %i.cd
  store i8 %i.ch, ptr %i.cc, align 1, !tbaa !25
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !34

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
  br i1 %.not130.us.i.3, label %thread-pre-split, label %.lr.ph.split.us.i, !llvm.loop !35

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %bb.ac
  %.0120137.i = phi ptr [ %.0120.i.1, %bb.ac ], [ %.0120137.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 2 uses
  %.0119136.i = phi i32 [ %i.dl, %bb.ac ], [ %.0119136.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %.0121135.i = phi ptr [ %i.dm, %bb.ac ], [ %.0121135.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %i.dc = load i8, ptr %.0121135.i, align 1, !tbaa !25
  %i.dd = and i8 %i.dc, %i.cd
  store i8 %i.dd, ptr %.0121135.i, align 1, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %.0121135.i, i64 1 ; 2 uses
  %i.df = icmp ult ptr %i.de, %.0120137.i
  br i1 %i.df, label %bb.aa, label %.lr.ph.split.i.1

bb.aa:                                            ; preds = %.lr.ph.split.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.de, i8 0, i64 %i.cf, i1 false)
  br label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.aa, %.lr.ph.split.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0121135.i, i64 %i.bw ; 4 uses
  %.0120.i = getelementptr inbounds nuw i8, ptr %.0120137.i, i64 %i.bw ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !25
  %i.di = and i8 %i.dh, %i.cd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !25
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
  br i1 %.not130.i.1, label %thread-pre-split, label %.lr.ph.split.i, !llvm.loop !35

bb.ad:                                            ; preds = %bb.p
  %i.dn = zext i32 %.0123.i to i64
  %i.do = add i32 %i.bn, %.0103203
  %i.dp = zext i32 %i.do to i64
  %i.dq = call ptr @ft_mem_qrealloc(ptr noundef %i.bq, i64 noundef %i.dn, i64 noundef 0, i64 noundef %i.dp, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 5 uses
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not129.i = icmp eq i32 %i.dr, 0
  br i1 %.not129.i, label %bb.ae, label %ft_bitmap_assure_buffer.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %i.bm, align 8, !tbaa !9
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
  br i1 %i.em, label %bb.ag, label %.loopexit.i, !llvm.loop !36

bb.ah:                                            ; preds = %bb.ae
  %.not145.i = icmp eq i32 %i.dw, 0
  br i1 %.not145.i, label %._crit_edge.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %bb.ah
  %i.en = mul i32 %.0122.i, %i.bo
  %i.eo = add i32 %i.en, 7
  %i.ep = lshr i32 %i.eo, 3                       ; 2 uses
end_hunk_0
begin_hunk_1_@FT_Bitmap_Convert:bb.a
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
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !9
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
  %i.am = load i32, ptr %i.al, align 8, !tbaa !9  ; 3 uses
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
  %i.av = load i32, ptr %i.au, align 8, !tbaa !9  ; 3 uses
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
  %i.bd = load i8, ptr %i.e, align 2, !tbaa !32
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
  store i16 2, ptr %i.be, align 8, !tbaa !38
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
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33 ; 2 uses
  %i.bi = lshr i32 %i.bh, 3                       ; 2 uses
  %.not231292 = icmp eq i32 %i.bi, 0
  br i1 %.not231292, label %._crit_edge298, label %.lr.ph297

.lr.ph297:                                        ; preds = %bb.r, %.lr.ph297
  %.0193295 = phi i32 [ %i.bq, %.lr.ph297 ], [ %i.bi, %bb.r ]
  %.0195294 = phi ptr [ %i.bo, %.lr.ph297 ], [ %.1203305, %bb.r ] ; 2 uses
  %.0197293 = phi ptr [ %i.bp, %.lr.ph297 ], [ %.1192307, %bb.r ] ; 2 uses
  %i.bj = load i8, ptr %.0197293, align 1, !tbaa !25
  %i.bk = insertelement <8 x i8> poison, i8 %i.bj, i64 0
  %i.bl = shufflevector <8 x i8> %i.bk, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bm = lshr <8 x i8> %i.bl, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.bn = and <8 x i8> %i.bm, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %i.bn, ptr %.0195294, align 1, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %.0195294, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0197293, i64 1 ; 2 uses
  %i.bq = add nsw i32 %.0193295, -1               ; 2 uses
  %.not231 = icmp eq i32 %i.bq, 0
  br i1 %.not231, label %._crit_edge298.loopexit, label %.lr.ph297, !llvm.loop !55

._crit_edge298.loopexit:                          ; preds = %.lr.ph297
  %.pre324 = load i32, ptr %i.bg, align 4, !tbaa !33
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %._crit_edge298.loopexit, %bb.r
  %i.br = phi i32 [ %i.bh, %bb.r ], [ %.pre324, %._crit_edge298.loopexit ]
  %.0197.lcssa = phi ptr [ %.1192307, %bb.r ], [ %i.bp, %._crit_edge298.loopexit ]
  %.0195.lcssa = phi ptr [ %.1203305, %bb.r ], [ %i.bo, %._crit_edge298.loopexit ] ; 7 uses
  %i.bs = and i32 %i.br, 7                        ; 7 uses
  %.not232 = icmp eq i32 %i.bs, 0
  br i1 %.not232, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %._crit_edge298
  %i.bt = load i8, ptr %.0197.lcssa, align 1, !tbaa !25 ; 7 uses
  %i.bu = lshr i8 %i.bt, 7
  store i8 %i.bu, ptr %.0195.lcssa, align 1, !tbaa !25
  %.not233 = icmp eq i32 %i.bs, 1
  br i1 %.not233, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 1
  %i.bw = lshr i8 %i.bt, 6
  %i.bx = and i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !25
  %.not233.1 = icmp eq i32 %i.bs, 2
  br i1 %.not233.1, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 2
  %i.bz = lshr i8 %i.bt, 5
  %i.ca = and i8 %i.bz, 1
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !25
  %.not233.2 = icmp eq i32 %i.bs, 3
  br i1 %.not233.2, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 3
  %i.cc = lshr i8 %i.bt, 4
  %i.cd = and i8 %i.cc, 1
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !25
  %.not233.3 = icmp eq i32 %i.bs, 4
  br i1 %.not233.3, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 4
  %i.cf = lshr i8 %i.bt, 3
  %i.cg = and i8 %i.cf, 1
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !25
  %.not233.4 = icmp eq i32 %i.bs, 5
  br i1 %.not233.4, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 5
  %i.ci = lshr i8 %i.bt, 2
  %i.cj = and i8 %i.ci, 1
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !25
  %.not233.5 = icmp eq i32 %i.bs, 6
  br i1 %.not233.5, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 6
  %i.cl = lshr i8 %i.bt, 1
  %i.cm = and i8 %i.cl, 1
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %._crit_edge298
  %i.cn = load i32, ptr %i.al, align 8, !tbaa !9
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %.1192307, i64 %i.co
  %i.cq = load i32, ptr %i.au, align 8, !tbaa !9
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %.1203305, i64 %i.cr
  %i.ct = add i32 %.0198306, -1                   ; 2 uses
  %.not230 = icmp eq i32 %i.ct, 0
  br i1 %.not230, label %.loopexit238, label %bb.r, !llvm.loop !56

bb.z:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 256, ptr %i.cw, align 8, !tbaa !38
  %i.cx = load i32, ptr %1, align 8, !tbaa !27    ; 5 uses
  %.not229286 = icmp eq i32 %i.cx, 0
  br i1 %.not229286, label %.loopexit238, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.z
  %i.cy = zext i32 %i.cv to i64                   ; 3 uses
  %lcmp.mod401.not = trunc i32 %i.cx to i1
  br i1 %lcmp.mod401.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0202, ptr align 1 %.0191, i64 %i.cy, i1 false)
  %i.cz = load i32, ptr %i.al, align 8, !tbaa !9
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %.0191, i64 %i.da
  %i.dc = load i32, ptr %i.au, align 8, !tbaa !9
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %.0202, i64 %i.dd
  %i.df = add nsw i32 %i.cx, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph291
  %.0189289.unr = phi i32 [ %i.cx, %.lr.ph291 ], [ %i.df, %.prol.loopexit.unr-lcssa ]
  %.2288.unr = phi ptr [ %.0191, %.lr.ph291 ], [ %i.db, %.prol.loopexit.unr-lcssa ]
  %.2204287.unr = phi ptr [ %.0202, %.lr.ph291 ], [ %i.de, %.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i32 %i.cx, 1
  br i1 %i.dg, label %.loopexit238, label %.lr.ph291.new

.lr.ph291.new:                                    ; preds = %.prol.loopexit, %.lr.ph291.new
  %.0189289 = phi i32 [ %i.dt, %.lr.ph291.new ], [ %.0189289.unr, %.prol.loopexit ]
  %.2288 = phi ptr [ %i.dp, %.lr.ph291.new ], [ %.2288.unr, %.prol.loopexit ] ; 2 uses
  %.2204287 = phi ptr [ %i.ds, %.lr.ph291.new ], [ %.2204287.unr, %.prol.loopexit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2204287, ptr align 1 %.2288, i64 %i.cy, i1 false)
  %i.dh = load i32, ptr %i.al, align 8, !tbaa !9
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %.2288, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.au, align 8, !tbaa !9
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %.2204287, i64 %i.dl ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dj, i64 %i.cy, i1 false)
  %i.dn = load i32, ptr %i.al, align 8, !tbaa !9
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %i.do
  %i.dq = load i32, ptr %i.au, align 8, !tbaa !9
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dm, i64 %i.dr
  %i.dt = add i32 %.0189289, -2                   ; 2 uses
  %.not229.1 = icmp eq i32 %i.dt, 0
  br i1 %.not229.1, label %.loopexit238, label %.lr.ph291.new, !llvm.loop !57

bb.aa:                                            ; preds = %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 4, ptr %i.du, align 8, !tbaa !38
  %i.dv = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not225280 = icmp eq i32 %i.dv, 0
  br i1 %.not225280, label %.loopexit238, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph285, %.loopexit240
  %.0188283 = phi i32 [ %i.dv, %.lr.ph285 ], [ %i.gc, %.loopexit240 ]
  %.3282 = phi ptr [ %.0191, %.lr.ph285 ], [ %i.fy, %.loopexit240 ] ; 5 uses
  %.3205281 = phi ptr [ %.0202, %.lr.ph285 ], [ %i.gb, %.loopexit240 ] ; 8 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !33 ; 2 uses
  %i.dy = lshr i32 %i.dx, 2                       ; 5 uses
  %.not226268 = icmp eq i32 %i.dy, 0
  br i1 %.not226268, label %._crit_edge274, label %.lr.ph273.preheader

.lr.ph273.preheader:                              ; preds = %bb.ab
  %lcmp.mod398.not = trunc i32 %i.dy to i1
  br i1 %lcmp.mod398.not, label %.lr.ph273.prol, label %.lr.ph273.prol.loopexit

.lr.ph273.prol:                                   ; preds = %.lr.ph273.preheader
  %i.dz = load i8, ptr %.3282, align 1, !tbaa !25 ; 4 uses
  %i.ea = lshr i8 %i.dz, 6
  store i8 %i.ea, ptr %.3205281, align 1, !tbaa !25
  %i.eb = lshr i8 %i.dz, 4
  %i.ec = and i8 %i.eb, 3
  %i.ed = getelementptr inbounds nuw i8, ptr %.3205281, i64 1
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !25
  %i.ee = lshr i8 %i.dz, 2
  %i.ef = and i8 %i.ee, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %.3205281, i64 2
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !25
  %i.eh = and i8 %i.dz, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %.3205281, i64 3
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !25
  %i.ej = getelementptr inbounds nuw i8, ptr %.3282, i64 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.3205281, i64 4 ; 2 uses
  %i.el = add nsw i32 %i.dy, -1
  br label %.lr.ph273.prol.loopexit

.lr.ph273.prol.loopexit:                          ; preds = %.lr.ph273.prol, %.lr.ph273.preheader
  %.lcssa392.unr = phi ptr [ poison, %.lr.ph273.preheader ], [ %i.ej, %.lr.ph273.prol ]
  %.lcssa391.unr = phi ptr [ poison, %.lr.ph273.preheader ], [ %i.ek, %.lr.ph273.prol ]
  %.0183271.unr = phi i32 [ %i.dy, %.lr.ph273.preheader ], [ %i.el, %.lr.ph273.prol ]
  %.0185270.unr = phi ptr [ %.3205281, %.lr.ph273.preheader ], [ %i.ek, %.lr.ph273.prol ]
  %.0187269.unr = phi ptr [ %.3282, %.lr.ph273.preheader ], [ %i.ej, %.lr.ph273.prol ]
  %i.em = icmp eq i32 %i.dy, 1
  br i1 %i.em, label %._crit_edge274.loopexit, label %.lr.ph273

.lr.ph273:                                        ; preds = %.lr.ph273.prol.loopexit, %.lr.ph273
  %.0183271 = phi i32 [ %i.fl, %.lr.ph273 ], [ %.0183271.unr, %.lr.ph273.prol.loopexit ]
  %.0185270 = phi ptr [ %i.fk, %.lr.ph273 ], [ %.0185270.unr, %.lr.ph273.prol.loopexit ] ; 9 uses
  %.0187269 = phi ptr [ %i.fj, %.lr.ph273 ], [ %.0187269.unr, %.lr.ph273.prol.loopexit ] ; 3 uses
  %i.en = load i8, ptr %.0187269, align 1, !tbaa !25 ; 4 uses
  %i.eo = lshr i8 %i.en, 6
  store i8 %i.eo, ptr %.0185270, align 1, !tbaa !25
  %i.ep = lshr i8 %i.en, 4
  %i.eq = and i8 %i.ep, 3
  %i.er = getelementptr inbounds nuw i8, ptr %.0185270, i64 1
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !25
  %i.es = lshr i8 %i.en, 2
  %i.et = and i8 %i.es, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %.0185270, i64 2
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !25
  %i.ev = and i8 %i.en, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %.0185270, i64 3
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !25
  %i.ex = getelementptr inbounds nuw i8, ptr %.0187269, i64 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.0185270, i64 4
  %i.ez = load i8, ptr %i.ex, align 1, !tbaa !25  ; 4 uses
  %i.fa = lshr i8 %i.ez, 6
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !25
  %i.fb = lshr i8 %i.ez, 4
  %i.fc = and i8 %i.fb, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %.0185270, i64 5
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !25
  %i.fe = lshr i8 %i.ez, 2
  %i.ff = and i8 %i.fe, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.0185270, i64 6
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !25
  %i.fh = and i8 %i.ez, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %.0185270, i64 7
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !25
  %i.fj = getelementptr inbounds nuw i8, ptr %.0187269, i64 2 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0185270, i64 8 ; 2 uses
  %i.fl = add nsw i32 %.0183271, -2               ; 2 uses
  %.not226.1 = icmp eq i32 %i.fl, 0
  br i1 %.not226.1, label %._crit_edge274.loopexit, label %.lr.ph273, !llvm.loop !58

._crit_edge274.loopexit:                          ; preds = %.lr.ph273, %.lr.ph273.prol.loopexit
  %.lcssa392 = phi ptr [ %.lcssa392.unr, %.lr.ph273.prol.loopexit ], [ %i.fj, %.lr.ph273 ]
  %.lcssa391 = phi ptr [ %.lcssa391.unr, %.lr.ph273.prol.loopexit ], [ %i.fk, %.lr.ph273 ]
  %.pre323 = load i32, ptr %i.dw, align 4, !tbaa !33
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %bb.ab
  %i.fm = phi i32 [ %i.dx, %bb.ab ], [ %.pre323, %._crit_edge274.loopexit ]
  %.0187.lcssa = phi ptr [ %.3282, %bb.ab ], [ %.lcssa392, %._crit_edge274.loopexit ]
  %.0185.lcssa = phi ptr [ %.3205281, %bb.ab ], [ %.lcssa391, %._crit_edge274.loopexit ] ; 3 uses
  %i.fn = and i32 %i.fm, 3                        ; 3 uses
  %.not227 = icmp eq i32 %i.fn, 0
  br i1 %.not227, label %.loopexit240, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge274
  %i.fo = load i8, ptr %.0187.lcssa, align 1, !tbaa !25 ; 3 uses
  %i.fp = lshr i8 %i.fo, 6
  store i8 %i.fp, ptr %.0185.lcssa, align 1, !tbaa !25
  %.not228 = icmp eq i32 %i.fn, 1
  br i1 %.not228, label %.loopexit240, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fq = getelementptr inbounds nuw i8, ptr %.0185.lcssa, i64 1
  %i.fr = lshr i8 %i.fo, 4
  %i.fs = and i8 %i.fr, 3
  store i8 %i.fs, ptr %i.fq, align 1, !tbaa !25
  %.not228.1 = icmp eq i32 %i.fn, 2
  br i1 %.not228.1, label %.loopexit240, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %.0185.lcssa, i64 2
  %i.fu = lshr i8 %i.fo, 2
  %i.fv = and i8 %i.fu, 3
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !25
  br label %.loopexit240

.loopexit240:                                     ; preds = %bb.ac, %bb.ad, %bb.ae, %._crit_edge274
  %i.fw = load i32, ptr %i.al, align 8, !tbaa !9
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %.3282, i64 %i.fx
  %i.fz = load i32, ptr %i.au, align 8, !tbaa !9
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %.3205281, i64 %i.ga
  %i.gc = add i32 %.0188283, -1                   ; 2 uses
  %.not225 = icmp eq i32 %i.gc, 0
  br i1 %.not225, label %.loopexit238, label %bb.ab, !llvm.loop !59

bb.af:                                            ; preds = %bb.p
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 16, ptr %i.gd, align 8, !tbaa !38
  %i.ge = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not222262 = icmp eq i32 %i.ge, 0
  br i1 %.not222262, label %.loopexit238, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.af
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph267, %bb.ai
  %.0181265 = phi i32 [ %i.ge, %.lr.ph267 ], [ %i.jb, %bb.ai ]
  %.4264 = phi ptr [ %.0191, %.lr.ph267 ], [ %i.ix, %bb.ai ] ; 10 uses
  %.4206263 = phi ptr [ %.0202, %.lr.ph267 ], [ %i.ja, %bb.ai ] ; 11 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !33 ; 5 uses
  %i.gh = lshr i32 %i.gg, 1                       ; 6 uses
  %.not223254 = icmp eq i32 %i.gh, 0
  br i1 %.not223254, label %._crit_edge260, label %iter.check

iter.check:                                       ; preds = %bb.ag
  %i.gi = lshr i32 %i.gg, 1
  %i.gj = zext nneg i32 %i.gi to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.gg, 8
  br i1 %min.iters.check, label %.lr.ph259.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.4206263, i64 2
  %i.gk = add nsw i32 %i.gh, -1
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = shl nuw nsw i64 %i.gl, 1
  %scevgep367 = getelementptr i8, ptr %scevgep, i64 %i.gm
  %scevgep368 = getelementptr i8, ptr %.4264, i64 1
  %scevgep369 = getelementptr i8, ptr %scevgep368, i64 %i.gl
  %bound0 = icmp ult ptr %.4206263, %scevgep369
  %bound1 = icmp ult ptr %.4264, %scevgep367
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph259.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check370 = icmp ult i32 %i.gg, 32
  br i1 %min.iters.check370, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gn = and i64 %i.gj, 12
  %n.vec = and i64 %i.gj, 2147483632              ; 6 uses
  %i.go = trunc nuw nsw i64 %n.vec to i32
  %i.gp = sub nsw i32 %i.gh, %i.go
  %i.gq = shl nuw nsw i64 %n.vec, 1
  %i.gr = getelementptr i8, ptr %.4206263, i64 %i.gq ; 2 uses
  %i.gs = getelementptr i8, ptr %.4264, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gt = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.4206263, i64 %i.gt
  %i.gu = getelementptr i8, ptr %.4206263, i64 %i.gt
  %next.gep371 = getelementptr i8, ptr %i.gu, i64 16
  %next.gep372 = getelementptr i8, ptr %.4264, i64 %index ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep372, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep372, align 1, !tbaa !25, !alias.scope !60 ; 2 uses
  %wide.load373 = load <8 x i8>, ptr %i.gv, align 1, !tbaa !25, !alias.scope !60 ; 2 uses
  %i.gw = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.gx = lshr <8 x i8> %wide.load373, splat (i8 4)
  %i.gy = and <8 x i8> %wide.load, splat (i8 15)
  %i.gz = and <8 x i8> %wide.load373, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.gw, <8 x i8> %i.gy, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !25, !alias.scope !63, !noalias !60
  %interleaved.vec374 = shufflevector <8 x i8> %i.gx, <8 x i8> %i.gz, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec374, ptr %next.gep371, align 1, !tbaa !25, !alias.scope !63, !noalias !60
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec
  br i1 %i.ha, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gj
  br i1 %cmp.n, label %._crit_edge260.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph259.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec377 = and i64 %i.gj, 2147483644           ; 5 uses
  %i.hb = trunc nuw nsw i64 %n.vec377 to i32
  %i.hc = sub nsw i32 %i.gh, %i.hb
  %i.hd = shl nuw nsw i64 %n.vec377, 1
  %i.he = getelementptr i8, ptr %.4206263, i64 %i.hd ; 2 uses
  %i.hf = getelementptr i8, ptr %.4264, i64 %n.vec377 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index378 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next383, %vec.epilog.vector.body ] ; 3 uses
  %i.hg = shl i64 %index378, 1
  %next.gep379 = getelementptr i8, ptr %.4206263, i64 %i.hg
  %next.gep380 = getelementptr i8, ptr %.4264, i64 %index378
  %wide.load381 = load <4 x i8>, ptr %next.gep380, align 1, !tbaa !25, !alias.scope !60 ; 2 uses
  %i.hh = lshr <4 x i8> %wide.load381, splat (i8 4)
  %i.hi = and <4 x i8> %wide.load381, splat (i8 15)
  %interleaved.vec382 = shufflevector <4 x i8> %i.hh, <4 x i8> %i.hi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec382, ptr %next.gep379, align 1, !tbaa !25, !alias.scope !63, !noalias !60
  %index.next383 = add nuw i64 %index378, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next383, %n.vec377
  br i1 %i.hj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n384 = icmp eq i64 %n.vec377, %i.gj
  br i1 %cmp.n384, label %._crit_edge260.loopexit, label %.lr.ph259.preheader

.lr.ph259.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0178257.ph = phi i32 [ %i.gh, %iter.check ], [ %i.gh, %vector.memcheck ], [ %i.gp, %vec.epilog.iter.check ], [ %i.hc, %vec.epilog.middle.block ] ; 4 uses
  %.0179256.ph = phi ptr [ %.4206263, %iter.check ], [ %.4206263, %vector.memcheck ], [ %i.gr, %vec.epilog.iter.check ], [ %i.he, %vec.epilog.middle.block ] ; 2 uses
  %.0180255.ph = phi ptr [ %.4264, %iter.check ], [ %.4264, %vector.memcheck ], [ %i.gs, %vec.epilog.iter.check ], [ %i.hf, %vec.epilog.middle.block ] ; 2 uses
  %i.hk = add nsw i32 %.0178257.ph, -1
  %xtraiter = and i32 %.0178257.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph259.prol.loopexit, label %.lr.ph259.prol

.lr.ph259.prol:                                   ; preds = %.lr.ph259.preheader, %.lr.ph259.prol
  %.0178257.prol = phi i32 [ %i.hr, %.lr.ph259.prol ], [ %.0178257.ph, %.lr.ph259.preheader ]
  %.0179256.prol = phi ptr [ %i.hq, %.lr.ph259.prol ], [ %.0179256.ph, %.lr.ph259.preheader ] ; 3 uses
  %.0180255.prol = phi ptr [ %i.hp, %.lr.ph259.prol ], [ %.0180255.ph, %.lr.ph259.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph259.prol ], [ 0, %.lr.ph259.preheader ]
  %i.hl = load i8, ptr %.0180255.prol, align 1, !tbaa !25 ; 2 uses
  %i.hm = lshr i8 %i.hl, 4
  store i8 %i.hm, ptr %.0179256.prol, align 1, !tbaa !25
  %i.hn = and i8 %i.hl, 15
  %i.ho = getelementptr inbounds nuw i8, ptr %.0179256.prol, i64 1
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !25
  %i.hp = getelementptr inbounds nuw i8, ptr %.0180255.prol, i64 1 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0179256.prol, i64 2 ; 3 uses
  %i.hr = add nsw i32 %.0178257.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph259.prol.loopexit, label %.lr.ph259.prol, !llvm.loop !68

.lr.ph259.prol.loopexit:                          ; preds = %.lr.ph259.prol, %.lr.ph259.preheader
  %.lcssa395.unr = phi ptr [ poison, %.lr.ph259.preheader ], [ %i.hp, %.lr.ph259.prol ]
  %.lcssa394.unr = phi ptr [ poison, %.lr.ph259.preheader ], [ %i.hq, %.lr.ph259.prol ]
  %.0178257.unr = phi i32 [ %.0178257.ph, %.lr.ph259.preheader ], [ %i.hr, %.lr.ph259.prol ]
  %.0179256.unr = phi ptr [ %.0179256.ph, %.lr.ph259.preheader ], [ %i.hq, %.lr.ph259.prol ]
  %.0180255.unr = phi ptr [ %.0180255.ph, %.lr.ph259.preheader ], [ %i.hp, %.lr.ph259.prol ]
  %i.hs = icmp ult i32 %i.hk, 3
  br i1 %i.hs, label %._crit_edge260.loopexit, label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.prol.loopexit, %.lr.ph259
  %.0178257 = phi i32 [ %i.ir, %.lr.ph259 ], [ %.0178257.unr, %.lr.ph259.prol.loopexit ]
  %.0179256 = phi ptr [ %i.iq, %.lr.ph259 ], [ %.0179256.unr, %.lr.ph259.prol.loopexit ] ; 9 uses
  %.0180255 = phi ptr [ %i.ip, %.lr.ph259 ], [ %.0180255.unr, %.lr.ph259.prol.loopexit ] ; 5 uses
  %i.ht = load i8, ptr %.0180255, align 1, !tbaa !25 ; 2 uses
  %i.hu = lshr i8 %i.ht, 4
  store i8 %i.hu, ptr %.0179256, align 1, !tbaa !25
  %i.hv = and i8 %i.ht, 15
  %i.hw = getelementptr inbounds nuw i8, ptr %.0179256, i64 1
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !25
  %i.hx = getelementptr inbounds nuw i8, ptr %.0180255, i64 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.0179256, i64 2
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !25  ; 2 uses
  %i.ia = lshr i8 %i.hz, 4
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !25
  %i.ib = and i8 %i.hz, 15
  %i.ic = getelementptr inbounds nuw i8, ptr %.0179256, i64 3
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !25
  %i.id = getelementptr inbounds nuw i8, ptr %.0180255, i64 2
  %i.ie = getelementptr inbounds nuw i8, ptr %.0179256, i64 4
  %i.if = load i8, ptr %i.id, align 1, !tbaa !25  ; 2 uses
  %i.ig = lshr i8 %i.if, 4
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !25
  %i.ih = and i8 %i.if, 15
  %i.ii = getelementptr inbounds nuw i8, ptr %.0179256, i64 5
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !25
  %i.ij = getelementptr inbounds nuw i8, ptr %.0180255, i64 3
  %i.ik = getelementptr inbounds nuw i8, ptr %.0179256, i64 6
  %i.il = load i8, ptr %i.ij, align 1, !tbaa !25  ; 2 uses
  %i.im = lshr i8 %i.il, 4
  store i8 %i.im, ptr %i.ik, align 1, !tbaa !25
  %i.in = and i8 %i.il, 15
  %i.io = getelementptr inbounds nuw i8, ptr %.0179256, i64 7
  store i8 %i.in, ptr %i.io, align 1, !tbaa !25
  %i.ip = getelementptr inbounds nuw i8, ptr %.0180255, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0179256, i64 8 ; 2 uses
  %i.ir = add nsw i32 %.0178257, -4               ; 2 uses
  %.not223.3 = icmp eq i32 %i.ir, 0
  br i1 %.not223.3, label %._crit_edge260.loopexit, label %.lr.ph259, !llvm.loop !69

._crit_edge260.loopexit:                          ; preds = %.lr.ph259.prol.loopexit, %.lr.ph259, %vec.epilog.middle.block, %middle.block
  %.lcssa366 = phi ptr [ %i.hf, %vec.epilog.middle.block ], [ %i.gs, %middle.block ], [ %.lcssa395.unr, %.lr.ph259.prol.loopexit ], [ %i.ip, %.lr.ph259 ]
  %.lcssa365 = phi ptr [ %i.he, %vec.epilog.middle.block ], [ %i.gr, %middle.block ], [ %.lcssa394.unr, %.lr.ph259.prol.loopexit ], [ %i.iq, %.lr.ph259 ]
  %.pre322 = load i32, ptr %i.gf, align 4, !tbaa !33
  br label %._crit_edge260

._crit_edge260:                                   ; preds = %._crit_edge260.loopexit, %bb.ag
  %i.is = phi i32 [ %i.gg, %bb.ag ], [ %.pre322, %._crit_edge260.loopexit ]
  %.0180.lcssa = phi ptr [ %.4264, %bb.ag ], [ %.lcssa366, %._crit_edge260.loopexit ]
  %.0179.lcssa = phi ptr [ %.4206263, %bb.ag ], [ %.lcssa365, %._crit_edge260.loopexit ]
  %.not224 = trunc i32 %i.is to i1
  br i1 %.not224, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge260
  %i.it = load i8, ptr %.0180.lcssa, align 1, !tbaa !25
  %i.iu = lshr i8 %i.it, 4
  store i8 %i.iu, ptr %.0179.lcssa, align 1, !tbaa !25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge260
  %i.iv = load i32, ptr %i.al, align 8, !tbaa !9
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds i8, ptr %.4264, i64 %i.iw
  %i.iy = load i32, ptr %i.au, align 8, !tbaa !9
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds i8, ptr %.4206263, i64 %i.iz
  %i.jb = add i32 %.0181265, -1                   ; 2 uses
  %.not222 = icmp eq i32 %i.jb, 0
  br i1 %.not222, label %.loopexit238, label %bb.ag, !llvm.loop !70

bb.aj:                                            ; preds = %bb.p
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 256, ptr %i.jc, align 8, !tbaa !38
  %i.jd = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not220248 = icmp eq i32 %i.jd, 0
  br i1 %.not220248, label %.loopexit238, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.aj
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !33 ; 2 uses
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %.loopexit238, label %.lr.ph253.split

.lr.ph253.splitthread-pre-split:                  ; preds = %._crit_edge
  %i.jh = sext i32 %i.kn to i64
  %i.ji = getelementptr inbounds i8, ptr %.5207249, i64 %i.jh
  %i.jj = sext i32 %i.ko to i64
  %i.jk = getelementptr inbounds i8, ptr %.5250, i64 %i.jj
  %.pr = load i32, ptr %i.je, align 4, !tbaa !33
  br label %.lr.ph253.split

.lr.ph253.split:                                  ; preds = %.lr.ph253, %.lr.ph253.splitthread-pre-split
  %i.jl = phi i32 [ %.pr, %.lr.ph253.splitthread-pre-split ], [ %i.jf, %.lr.ph253 ] ; 2 uses
  %i.jm = phi i32 [ %i.kn, %.lr.ph253.splitthread-pre-split ], [ %i.av, %.lr.ph253 ]
  %i.jn = phi i32 [ %i.ko, %.lr.ph253.splitthread-pre-split ], [ %i.am, %.lr.ph253 ]
  %.0176251 = phi i32 [ %i.kp, %.lr.ph253.splitthread-pre-split ], [ %i.jd, %.lr.ph253 ]
  %.5250 = phi ptr [ %i.jk, %.lr.ph253.splitthread-pre-split ], [ %.0191, %.lr.ph253 ] ; 2 uses
  %.5207249 = phi ptr [ %i.ji, %.lr.ph253.splitthread-pre-split ], [ %.0202, %.lr.ph253 ] ; 2 uses
  %.not221244 = icmp eq i32 %i.jl, 0
  br i1 %.not221244, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph253.split, %ft_gray_for_premultiplied_srgb_bgra.exit
  %.0247 = phi i32 [ %i.km, %ft_gray_for_premultiplied_srgb_bgra.exit ], [ %i.jl, %.lr.ph253.split ]
  %.0174246 = phi ptr [ %i.kl, %ft_gray_for_premultiplied_srgb_bgra.exit ], [ %.5207249, %.lr.ph253.split ] ; 2 uses
  %.0175245 = phi ptr [ %i.kk, %ft_gray_for_premultiplied_srgb_bgra.exit ], [ %.5250, %.lr.ph253.split ] ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0175245, i64 3
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !25  ; 3 uses
  %.not.i234 = icmp eq i8 %i.jp, 0
  br i1 %.not.i234, label %ft_gray_for_premultiplied_srgb_bgra.exit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph
  %i.jq = load i8, ptr %.0175245, align 1, !tbaa !25
  %i.jr = zext i8 %i.jq to i32                    ; 2 uses
  %i.js = mul nuw nsw i32 %i.jr, 4731
  %i.jt = mul nuw nsw i32 %i.js, %i.jr
  %i.ju = getelementptr inbounds nuw i8, ptr %.0175245, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !25
  %i.jw = zext i8 %i.jv to i32                    ; 2 uses
  %i.jx = mul nuw nsw i32 %i.jw, 46868
  %i.jy = mul nuw i32 %i.jx, %i.jw
  %i.jz = add nuw i32 %i.jy, %i.jt
  %i.ka = getelementptr inbounds nuw i8, ptr %.0175245, i64 2
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !25
  %i.kc = zext i8 %i.kb to i32                    ; 2 uses
  %i.kd = mul nuw nsw i32 %i.kc, 13937
  %i.ke = mul nuw nsw i32 %i.kd, %i.kc
  %i.kf = add nuw i32 %i.jz, %i.ke
  %i.kg = lshr i32 %i.kf, 16
  %.lhs.trunc.i = trunc nuw i32 %i.kg to i16
  %.rhs.trunc.i = zext i8 %i.jp to i16
  %i.kh = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %i.ki = trunc i16 %i.kh to i8
  %i.kj = sub i8 %i.jp, %i.ki
  br label %ft_gray_for_premultiplied_srgb_bgra.exit

ft_gray_for_premultiplied_srgb_bgra.exit:         ; preds = %.lr.ph, %bb.ak
  %.0.i235 = phi i8 [ %i.kj, %bb.ak ], [ 0, %.lr.ph ]
  store i8 %.0.i235, ptr %.0174246, align 1, !tbaa !25
  %i.kk = getelementptr inbounds nuw i8, ptr %.0175245, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %.0174246, i64 1
  %i.km = add i32 %.0247, -1                      ; 2 uses
  %.not221 = icmp eq i32 %i.km, 0
  br i1 %.not221, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %ft_gray_for_premultiplied_srgb_bgra.exit
  %.pre320 = load i32, ptr %i.al, align 8, !tbaa !9
  %.pre321 = load i32, ptr %i.au, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph253.split
  %i.kn = phi i32 [ %.pre321, %._crit_edge.loopexit ], [ %i.jm, %.lr.ph253.split ] ; 2 uses
  %i.ko = phi i32 [ %.pre320, %._crit_edge.loopexit ], [ %i.jn, %.lr.ph253.split ] ; 2 uses
  %i.kp = add i32 %.0176251, -1                   ; 2 uses
  %.not220 = icmp eq i32 %i.kp, 0
  br i1 %.not220, label %.loopexit238, label %.lr.ph253.splitthread-pre-split, !llvm.loop !72

.loopexit238:                                     ; preds = %._crit_edge, %bb.ai, %.loopexit240, %.prol.loopexit, %.lr.ph291.new, %.loopexit, %.lr.ph253, %bb.aj, %bb.af, %bb.aa, %bb.z, %bb.q, %bb.p
  %i.kq = load i32, ptr %i.a, align 4, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.b, %bb.a, %.loopexit238
  %.1 = phi i32 [ %i.kq, %.loopexit238 ], [ %i.af, %bb.i ], [ 33, %bb.a ], [ 6, %bb.b ]
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
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
  %i.l = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %i.n = load i8, ptr %i.m, align 2, !tbaa !32    ; 2 uses
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
  %i.r = load i8, ptr %i.q, align 2, !tbaa !32
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.ag, label %bb.e

.thread:                                          ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !32
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.ag, label %.thread279

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %.0208.sroa.gep232, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !9
  %i.z = xor i32 %i.y, %i.w
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.ag, label %.thread279

.thread279:                                       ; preds = %.thread, %bb.e
end_hunk_1
begin_hunk_2_@FT_Bitmap_Blend:bb.a
  %i.pw = getelementptr inbounds nuw i8, ptr %next.gep371, i64 2
  %i.px = getelementptr i8, ptr %i.on, i64 6
  %i.py = getelementptr i8, ptr %i.oo, i64 10
  %i.pz = getelementptr i8, ptr %i.op, i64 14
  %i.qa = load i8, ptr %i.pw, align 1, !tbaa !25, !alias.scope !82, !noalias !79
  %i.qb = load i8, ptr %i.px, align 1, !tbaa !25, !alias.scope !82, !noalias !79
  %i.qc = load i8, ptr %i.py, align 1, !tbaa !25, !alias.scope !82, !noalias !79
  %i.qd = load i8, ptr %i.pz, align 1, !tbaa !25, !alias.scope !82, !noalias !79
  %i.qe = insertelement <4 x i8> poison, i8 %i.qa, i64 0
  %i.qf = insertelement <4 x i8> %i.qe, i8 %i.qb, i64 1
  %i.qg = insertelement <4 x i8> %i.qf, i8 %i.qc, i64 2
  %i.qh = insertelement <4 x i8> %i.qg, i8 %i.qd, i64 3
  %i.qi = zext <4 x i8> %i.qh to <4 x i32>
  %i.qj = getelementptr inbounds nuw i8, ptr %next.gep371, i64 3
  %i.qk = getelementptr i8, ptr %i.on, i64 7
  %i.ql = getelementptr i8, ptr %i.oo, i64 11
  %i.qm = getelementptr i8, ptr %i.op, i64 15
  %i.qn = load i8, ptr %i.qj, align 1, !tbaa !25, !alias.scope !82, !noalias !79
  %i.qo = load i8, ptr %i.qk, align 1, !tbaa !25, !alias.scope !82, !noalias !79
  %i.qp = load i8, ptr %i.ql, align 1, !tbaa !25, !alias.scope !82, !noalias !79
  %i.qq = load i8, ptr %i.qm, align 1, !tbaa !25, !alias.scope !82, !noalias !79
  %i.qr = insertelement <4 x i8> poison, i8 %i.qn, i64 0
  %i.qs = insertelement <4 x i8> %i.qr, i8 %i.qo, i64 1
  %i.qt = insertelement <4 x i8> %i.qs, i8 %i.qp, i64 2
  %i.qu = insertelement <4 x i8> %i.qt, i8 %i.qq, i64 3
  %i.qv = zext <4 x i8> %i.qu to <4 x i32>
  %i.qw = mul nuw nsw <4 x i32> %i.oz, %i.pi
  %i.qx = trunc nuw <4 x i32> %i.qw to <4 x i16>
  %i.qy = udiv <4 x i16> %i.qx, splat (i16 255)
  %i.qz = zext nneg <4 x i16> %i.qy to <4 x i32>
  %i.ra = add nuw nsw <4 x i32> %i.ou, %i.qz
  %i.rb = mul nuw nsw <4 x i32> %i.oz, %i.pv
  %i.rc = trunc nuw <4 x i32> %i.rb to <4 x i16>
  %i.rd = udiv <4 x i16> %i.rc, splat (i16 255)
  %i.re = zext nneg <4 x i16> %i.rd to <4 x i32>
  %i.rf = add nuw nsw <4 x i32> %i.ow, %i.re
  %i.rg = mul nuw nsw <4 x i32> %i.oz, %i.qi
  %i.rh = trunc nuw <4 x i32> %i.rg to <4 x i16>
  %i.ri = udiv <4 x i16> %i.rh, splat (i16 255)
  %i.rj = zext nneg <4 x i16> %i.ri to <4 x i32>
  %i.rk = add nuw nsw <4 x i32> %i.oy, %i.rj
  %i.rl = mul nuw nsw <4 x i32> %i.oz, %i.qv
  %i.rm = trunc nuw <4 x i32> %i.rl to <4 x i16>
  %i.rn = udiv <4 x i16> %i.rm, splat (i16 255)
  %i.ro = zext nneg <4 x i16> %i.rn to <4 x i32>
  %i.rp = add nuw nsw <4 x i32> %i.os, %i.ro
  %i.rq = shufflevector <4 x i32> %i.ra, <4 x i32> %i.rf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rr = trunc <8 x i32> %i.rq to <8 x i8>
  %i.rs = shufflevector <4 x i32> %i.rk, <4 x i32> %i.rp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rt = trunc <8 x i32> %i.rs to <8 x i8>
  %interleaved.vec377 = shufflevector <8 x i8> %i.rr, <8 x i8> %i.rt, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec377, ptr %next.gep371, align 1, !tbaa !25, !alias.scope !82, !noalias !79
  %index.next378 = add nuw i64 %index370, 4       ; 2 uses
  %i.ru = icmp eq i64 %index.next378, %n.vec361
  br i1 %i.ru, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n379 = icmp eq i64 %i.fa, %n.vec361
  br i1 %cmp.n379, label %._crit_edge.loopexit, label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0212297.ph = phi ptr [ %.0214300, %iter.check ], [ %.0214300, %vector.memcheck ], [ %i.fi, %vec.epilog.iter.check ], [ %i.ok, %vec.epilog.middle.block ]
  %.0213296.ph = phi ptr [ %.0215299, %iter.check ], [ %.0215299, %vector.memcheck ], [ %i.fj, %vec.epilog.iter.check ], [ %i.ol, %vec.epilog.middle.block ]
  br label %.lr.ph298

.lr.ph298:                                        ; preds = %.lr.ph298.preheader, %.lr.ph298
  %.0212297 = phi ptr [ %i.sc, %.lr.ph298 ], [ %.0212297.ph, %.lr.ph298.preheader ] ; 6 uses
  %.0213296 = phi ptr [ %i.rv, %.lr.ph298 ], [ %.0213296.ph, %.lr.ph298.preheader ] ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0213296, i64 1 ; 2 uses
  %i.rw = load i8, ptr %.0213296, align 1, !tbaa !25
  %i.rx = zext i8 %i.rw to i32
  %i.ry = mul nuw nsw i32 %.sroa.4204.0.extract.shift, %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %.0212297, i64 1
  %i.sa = getelementptr inbounds nuw i8, ptr %.0212297, i64 2
  %i.sb = getelementptr inbounds nuw i8, ptr %.0212297, i64 3
  %i.sc = getelementptr inbounds nuw i8, ptr %.0212297, i64 4
  %i.sd = udiv i32 %i.ry, 255                     ; 4 uses
  %i.se = mul nuw nsw i32 %i.sd, %i.er
  %i.sf = udiv i32 %i.se, 255
  %i.sg = insertelement <2 x i32> poison, i32 %i.sd, i64 0
  %i.sh = shufflevector <2 x i32> %i.sg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.si = mul nuw nsw <2 x i32> %i.sh, %i.es
  %i.sj = udiv <2 x i32> %i.si, splat (i32 255)
  %i.sk = sub nuw nsw i32 255, %i.sd              ; 4 uses
  %i.sl = load i8, ptr %i.sb, align 1, !tbaa !25
  %i.sm = load i8, ptr %i.sa, align 1, !tbaa !25
  %i.sn = load i8, ptr %i.rz, align 1, !tbaa !25
  %i.so = load i8, ptr %.0212297, align 1, !tbaa !25
  %i.sp = zext i8 %i.sl to i32
  %i.sq = zext i8 %i.sm to i32
  %i.sr = zext i8 %i.sn to i32
  %i.ss = zext i8 %i.so to i32
  %i.st = mul nuw nsw i32 %i.sk, %i.sp
  %i.su = mul nuw nsw i32 %i.sk, %i.sq
  %i.sv = mul nuw nsw i32 %i.sk, %i.sr
  %i.sw = mul nuw nsw i32 %i.sk, %i.ss
  %.lhs.trunc332 = trunc nuw i32 %i.st to i16
  %.lhs.trunc330 = trunc nuw i32 %i.su to i16
  %.lhs.trunc328 = trunc nuw i32 %i.sv to i16
  %.lhs.trunc = trunc nuw i32 %i.sw to i16
  %i.sx = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.sy = insertelement <4 x i16> %i.sx, i16 %.lhs.trunc328, i64 1
  %i.sz = insertelement <4 x i16> %i.sy, i16 %.lhs.trunc330, i64 2
  %i.ta = insertelement <4 x i16> %i.sz, i16 %.lhs.trunc332, i64 3
  %i.tb = udiv <4 x i16> %i.ta, splat (i16 255)
  %i.tc = zext nneg <4 x i16> %i.tb to <4 x i32>
  %i.td = insertelement <4 x i32> poison, i32 %i.sf, i64 0
  %i.te = shufflevector <2 x i32> %i.sj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tf = shufflevector <4 x i32> %i.td, <4 x i32> %i.te, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.tg = insertelement <4 x i32> %i.tf, i32 %i.sd, i64 3
  %i.th = add nuw nsw <4 x i32> %i.tg, %i.tc
  %i.ti = trunc <4 x i32> %i.th to <4 x i8>
  store <4 x i8> %i.ti, ptr %.0212297, align 1, !tbaa !25
  %i.tj = icmp ult ptr %i.rv, %i.ex
  br i1 %i.tj, label %.lr.ph298, label %._crit_edge.loopexit, !llvm.loop !86

._crit_edge.loopexit:                             ; preds = %.lr.ph298, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %.0208.sroa.phi239, align 8, !tbaa !9
  %.pre304 = load i32, ptr %i.dt, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ad
  %i.tk = phi i32 [ %.pre304, %._crit_edge.loopexit ], [ %i.et, %bb.ad ] ; 2 uses
  %i.tl = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.eu, %bb.ad ] ; 2 uses
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds i8, ptr %.0215299, i64 %i.tm ; 2 uses
  %i.to = sext i32 %i.tk to i64
  %i.tp = getelementptr inbounds i8, ptr %.0214300, i64 %i.to
  %i.tq = icmp ult ptr %i.tn, %i.eb
  br i1 %i.tq, label %bb.ad, label %.loopexit, !llvm.loop !87

.loopexit:                                        ; preds = %._crit_edge, %bb.ac, %bb.ab
  store i64 %i.bk, ptr %5, align 8, !tbaa !74
  %i.tr = and i64 %i.bp, 4294967232
  %i.ts = add nsw i64 %i.tr, %i.bl
  store i64 %i.ts, ptr %i.ai, align 8, !tbaa !77
  %.pre305 = load i32, ptr %i.a, align 4, !tbaa !8
  %i.tt = icmp ne i32 %.pre305, 0
  %i.tu = and i1 %i.bz, %i.tt
  br i1 %i.tu, label %FT_Bitmap_Done.exit, label %bb.af

bb.ae:                                            ; preds = %bb.aa
  br i1 %i.bz, label %.thread287.critedge, label %.thread287

FT_Bitmap_Done.exit:                              ; preds = %.loopexit
  %i.tv = load ptr, ptr %0, align 8, !tbaa !14
  %i.tw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.tv, ptr noundef %i.tx) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br i1 %.not271, label %.thread287, label %FT_Bitmap_Done.exit277

bb.af:                                            ; preds = %.loopexit
  br i1 %.not271, label %.thread287, label %FT_Bitmap_Done.exit277

FT_Bitmap_Done.exit277:                           ; preds = %FT_Bitmap_Done.exit, %bb.af
  %i.ty = load ptr, ptr %0, align 8, !tbaa !14
  %i.tz = load ptr, ptr %.0208.sroa.phi233.sroa.gep, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.ty, ptr noundef %i.tz) #7
  br label %.thread287

.thread287.critedge:                              ; preds = %bb.ae
  %i.ua = load ptr, ptr %0, align 8, !tbaa !14
  %i.ub = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !21
  call void @ft_mem_free(ptr noundef %i.ua, ptr noundef %i.uc) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br label %.thread287

.thread287:                                       ; preds = %.thread287.critedge, %bb.ae, %bb.v, %FT_Bitmap_Done.exit, %FT_Bitmap_Done.exit277, %bb.af
  %i.ud = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %bb.s, %bb.n, %bb.l, %bb.k, %bb.h, %bb.g, %.thread279, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %.thread287
  %.0 = phi i32 [ 6, %bb.c ], [ 0, %bb.d ], [ 0, %.thread279 ], [ 6, %bb.g ], [ 6, %bb.h ], [ 6, %bb.k ], [ 0, %bb.n ], [ %i.ud, %.thread287 ], [ %i.ch, %bb.s ], [ 6, %bb.l ], [ 6, %bb.e ], [ 6, %bb.a ], [ 6, %bb.b ], [ 0, %bb.f ], [ 0, %.thread ]
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !88
  %i.c = icmp eq i32 %i.b, 1651078259
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !101
  %.not12 = trunc i32 %i.g to i1
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.j = call i32 @FT_Bitmap_Copy(ptr noundef %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %1) ; 2 uses
  %.not13.not = icmp eq i32 %i.j, 0
  br i1 %.not13.not, label %.thread, label %.sink.split

.thread:                                          ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !22
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101
  %i.n = or i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !101
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %.thread
  %.1.ph = phi i32 [ 0, %.thread ], [ %i.j, %bb.d ]
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 8}
!10 = !{!"FT_Bitmap_", !5, i64 0, !5, i64 4, !5, i64 8, !11, i64 16, !13, i64 24, !6, i64 26, !6, i64 27, !12, i64 32}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"FT_LibraryRec_", !16, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !17, i64 280, !19, i64 296, !20, i64 304, !6, i64 312, !6, i64 344, !5, i64 392}
!16 = !{!"p1 _ZTS13FT_MemoryRec_", !12, i64 0}
!17 = !{!"FT_ListRec_", !18, i64 0, !18, i64 8}
!18 = !{!"p1 _ZTS15FT_ListNodeRec_", !12, i64 0}
!19 = !{!"p1 _ZTS15FT_RendererRec_", !12, i64 0}
!20 = !{!"p1 _ZTS13FT_ModuleRec_", !12, i64 0}
!21 = !{!10, !11, i64 16}
!22 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 16, i64 8, !23, i64 24, i64 2, !24, i64 26, i64 1, !25, i64 27, i64 1, !25, i64 32, i64 8, !26}
!23 = !{!11, !11, i64 0}
!24 = !{!13, !13, i64 0}
!25 = !{!6, !6, i64 0}
!26 = !{!12, !12, i64 0}
!27 = !{!10, !5, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!10, !6, i64 26}
!33 = !{!10, !5, i64 4}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !31}
!36 = distinct !{!36, !31}
!37 = distinct !{!37, !31}
!38 = !{!10, !13, i64 24}
!39 = distinct !{!39, !31}
!40 = distinct !{!40, !31}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !31, !47, !48}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"branch_weights", i32 4, i32 28}
!50 = distinct !{!50, !31, !47, !48}
!51 = distinct !{!51, !29}
!52 = distinct !{!52, !31, !47}
!53 = distinct !{!53, !31}
!54 = distinct !{!54, !31}
!55 = distinct !{!55, !31}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !31}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, !31}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !31, !47, !48}
!66 = !{!"branch_weights", i32 4, i32 12}
!67 = distinct !{!67, !31, !47, !48}
!68 = distinct !{!68, !29}
!69 = distinct !{!69, !31, !47}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31, !73}
!73 = !{!"llvm.loop.unswitch.partial.disable"}
!74 = !{!75, !76, i64 0}
!75 = !{!"FT_Vector_", !76, i64 0, !76, i64 8}
!76 = !{!"long", !6, i64 0}
!77 = !{!75, !76, i64 8}
!78 = distinct !{!78, !31}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !31, !47, !48}
!85 = distinct !{!85, !31, !47, !48}
!86 = distinct !{!86, !31, !47}
!87 = distinct !{!87, !31}
!88 = !{!89, !5, i64 144}
!89 = !{!"FT_GlyphSlotRec_", !90, i64 0, !91, i64 8, !92, i64 16, !5, i64 24, !93, i64 32, !94, i64 48, !76, i64 112, !76, i64 120, !75, i64 128, !5, i64 144, !10, i64 152, !5, i64 192, !5, i64 196, !95, i64 200, !5, i64 240, !98, i64 248, !12, i64 256, !76, i64 264, !76, i64 272, !76, i64 280, !12, i64 288, !99, i64 296}
!90 = !{!"p1 _ZTS14FT_LibraryRec_", !12, i64 0}
!91 = !{!"p1 _ZTS11FT_FaceRec_", !12, i64 0}
!92 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !12, i64 0}
!93 = !{!"FT_Generic_", !12, i64 0, !12, i64 8}
!94 = !{!"FT_Glyph_Metrics_", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56}
!95 = !{!"FT_Outline_", !13, i64 0, !13, i64 2, !96, i64 8, !11, i64 16, !97, i64 24, !5, i64 32}
!96 = !{!"p1 _ZTS10FT_Vector_", !12, i64 0}
!97 = !{!"p1 short", !12, i64 0}
!98 = !{!"p1 _ZTS15FT_SubGlyphRec_", !12, i64 0}
!99 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !12, i64 0}
!100 = !{!89, !99, i64 296}
!101 = !{!102, !5, i64 8}
!102 = !{!"FT_Slot_InternalRec_", !103, i64 0, !5, i64 8, !6, i64 12, !104, i64 16, !75, i64 48, !12, i64 64, !5, i64 72}
!103 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !12, i64 0}
!104 = !{!"FT_Matrix_", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24}
!105 = !{!89, !90, i64 0}
end_hunk_2
