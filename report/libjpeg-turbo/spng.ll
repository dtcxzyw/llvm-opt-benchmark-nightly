Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/spng?download=true
inline.NumInlined: 350
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 22
begin_hunk_0_@spng_get_row_info:bb.a
  %i.e = icmp ult i32 %i.d, 5
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.d, 5
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4388
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !317
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %bb.b ], [ 75, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 85) i32 @spng_encode_scanline(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50
  %i.e = icmp ugt i32 %i.d, 5
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4396
  %i.g = load i32, ptr %i.f, align 4, !tbaa !103
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [24 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 2456
  %i.k = load i64, ptr %i.j, align 8, !tbaa !58
  %i.l = add i64 %i.k, -1
  %i.m = icmp ult i64 %2, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call fastcc i32 @encode_scanline(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %i.n, %bb.d ], [ 1, %bb.a ], [ 75, %bb.b ], [ 66, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 85) i32 @encode_scanline(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %update_row_info.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4396 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4404
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 4, !tbaa !51 ; 2 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %.sroa.520.0.copyload = load i32, ptr %.sroa.520.0..sroa_idx, align 4, !tbaa !67 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199  ; 2 uses
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr [24 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 2456
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58   ; 5 uses
  %i.n = add i64 %i.m, -1                         ; 8 uses
  %i.o = icmp ult i64 %2, %i.n
  br i1 %i.o, label %update_row_info.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2752 ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %1, %i.q
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %1, i64 %i.n, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = and i8 %.sroa.0.0.copyload, 4
  %.not80 = icmp eq i8 %i.r, 0
  br i1 %.not80, label %u16_row_to_bigendian.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !54   ; 5 uses
  %i.t = lshr i64 %i.n, 1                         ; 3 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %u16_row_to_bigendian.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.u = icmp ult i64 %i.n, 8
  br i1 %i.u, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.t, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aw, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.08.i ; 3 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !74   ; 2 uses
  %i.x = lshr i16 %i.w, 8
  %i.y = trunc nuw i16 %i.x to i8
  store i8 %i.y, ptr %i.v, align 2, !tbaa !51
  %i.z = trunc i16 %i.w to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !51
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.08.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !74 ; 2 uses
  %i.ae = lshr i16 %i.ad, 8
  %i.af = trunc nuw i16 %i.ae to i8
  store i8 %i.af, ptr %i.ac, align 2, !tbaa !51
  %i.ag = trunc i16 %i.ad to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !51
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.08.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !74 ; 2 uses
  %i.al = lshr i16 %i.ak, 8
  %i.am = trunc nuw i16 %i.al to i8
  store i8 %i.am, ptr %i.aj, align 2, !tbaa !51
  %i.an = trunc i16 %i.ak to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !51
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.08.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 6 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !74 ; 2 uses
  %i.as = lshr i16 %i.ar, 8
  %i.at = trunc nuw i16 %i.as to i8
  store i8 %i.at, ptr %i.aq, align 2, !tbaa !51
  %i.au = trunc i16 %i.ar to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  store i8 %i.au, ptr %i.av, align 1, !tbaa !51
  %i.aw = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %u16_row_to_bigendian.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !318

u16_row_to_bigendian.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %u16_row_to_bigendian.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %u16_row_to_bigendian.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aw, %u16_row_to_bigendian.exit.loopexit.unr-lcssa ]
  %lcmp.mod201 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bd, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.08.i.epil ; 3 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !74 ; 2 uses
  %i.az = lshr i16 %i.ay, 8
  %i.ba = trunc nuw i16 %i.az to i8
  store i8 %i.ba, ptr %i.ax, align 2, !tbaa !51
  %i.bb = trunc i16 %i.ay to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !51
  %i.bd = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %u16_row_to_bigendian.exit, label %.lr.ph.i.epil, !llvm.loop !319

u16_row_to_bigendian.exit:                        ; preds = %u16_row_to_bigendian.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f, %bb.e
  %i.be = and i32 %.sroa.520.0.copyload, 224
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !61
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = icmp ne i32 %i.be, 0
  %or.cond3 = select i1 %i.bg, i1 %i.bh, i1 false
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2760 ; 3 uses
  br i1 %or.cond3, label %.thread, label %bb.g

.thread:                                          ; preds = %u16_row_to_bigendian.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bj, i8 0, i64 %i.m, i1 false)
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !54
  br label %bb.h

bb.g:                                             ; preds = %u16_row_to_bigendian.exit
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !54  ; 2 uses
  %.not.i87 = icmp eq i32 %.sroa.520.0.copyload, 0
  br i1 %.not.i87, label %.thread117, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.bm = phi ptr [ %i.bk, %.thread ], [ %i.bl, %bb.g ] ; 4 uses
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !75 ; 2 uses
  %i.bq = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %.sroa.520.0.copyload)
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %.preheader.preheader.split.i, label %.loopexit37.i

.preheader.preheader.split.i:                     ; preds = %bb.h
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.520.0.copyload, i1 true)
  %switch.tableidx.i = add nsw i32 %i.bs, -3      ; 2 uses
  %i.bt = icmp ult i32 %switch.tableidx.i, 5
  br i1 %i.bt, label %get_best_filter.exit, label %.loopexit37.i

.loopexit37.i:                                    ; preds = %.preheader.preheader.split.i, %bb.h
  %i.bu = icmp ugt i64 %i.n, 16777215
  br i1 %i.bu, label %.thread117, label %.split.i

.split.i:                                         ; preds = %.loopexit37.i
  %.not46.i.i = icmp eq i64 %i.n, 0
  br i1 %.not46.i.i, label %.split.split.us.preheader.i, label %.split.split.i

.split.split.us.preheader.i:                      ; preds = %.split.i
  %i.bv = and i32 %.sroa.520.0.copyload, 16
  %.not35.us47.1.i = icmp eq i32 %i.bv, 0
  %i.bw = lshr i32 %.sroa.520.0.copyload, 3
  %.lobit.i = and i32 %i.bw, 1
  %spec.select.us50.1.i = xor i32 %.lobit.i, 1
  %.127.us52.1.i = select i1 %.not35.us47.1.i, i32 0, i32 %spec.select.us50.1.i
  %i.bx = and i32 %.sroa.520.0.copyload, 56
  %.not70.i = icmp eq i32 %i.bx, 32
  %.127.us52.2.i = select i1 %.not70.i, i32 2, i32 %.127.us52.1.i
  %i.by = and i32 %.sroa.520.0.copyload, 120      ; 2 uses
  %.not72.i = icmp eq i32 %i.by, 64
  %.127.us52.3.i = select i1 %.not72.i, i32 3, i32 %.127.us52.2.i ; 2 uses
  %i.bz = and i32 %.sroa.520.0.copyload, 128
  %.not35.us47.4.i = icmp eq i32 %i.bz, 0
  br i1 %.not35.us47.4.i, label %get_best_filter.exit, label %.preheader.i.us.4.i

.preheader.i.us.4.i:                              ; preds = %.split.split.us.preheader.i
  %i.ca = icmp eq i32 %i.by, 0
  %spec.select.us50.4.i = select i1 %i.ca, i32 4, i32 %.127.us52.3.i
  br label %get_best_filter.exit

.split.split.i:                                   ; preds = %.split.i, %bb.p
  %.043.i = phi i32 [ %.1.i, %bb.p ], [ 2147483647, %.split.i ] ; 3 uses
  %.02642.i = phi i32 [ %.127.i, %bb.p ], [ 0, %.split.i ] ; 2 uses
  %.12941.i = phi i32 [ %i.dk, %bb.p ], [ 0, %.split.i ] ; 4 uses
  %i.cb = shl nuw nsw i32 8, %.12941.i
  %i.cc = and i32 %i.cb, %.sroa.520.0.copyload
  %.not35.i = icmp eq i32 %i.cc, 0
  br i1 %.not35.i, label %bb.p, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split.split.i, %bb.o
  %i.cd = phi i64 [ %5, %bb.o ], [ 0, %.split.split.i ] ; 4 uses
  %.03845.i.i = phi i32 [ %i.dg, %bb.o ], [ 0, %.split.split.i ]
  %indvars.i.i = trunc nuw i64 %i.cd to i32       ; 2 uses
  %.not.i.i = icmp ugt i32 %i.bp, %indvars.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %3 = sub nuw i32 %indvars.i.i, %i.bp
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 %4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 %4
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.036.i.i = phi i8 [ %i.cf, %bb.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.034.i.i = phi i8 [ %i.ch, %bb.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.035.in.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cd
  %.035.i.i = load i8, ptr %.035.in.i.i, align 1, !tbaa !51 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cd
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !51  ; 5 uses
  switch i32 %.12941.i, label %bb.o [
    i32 4, label %bb.n
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ck = sub i8 %i.cj, %.036.i.i
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cl = sub i8 %i.cj, %.035.i.i
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.cm = zext i8 %.036.i.i to i16
  %i.cn = zext i8 %.035.i.i to i16
  %i.co = add nuw nsw i16 %i.cn, %i.cm
  %i.cp = lshr i16 %i.co, 1
  %i.cq = trunc nuw i16 %i.cp to i8
  %i.cr = sub i8 %i.cj, %i.cq
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.cs = zext i8 %.036.i.i to i32                ; 2 uses
  %i.ct = zext i8 %.035.i.i to i32
  %i.cu = zext i8 %.034.i.i to i32                ; 2 uses
  %i.cv = sub nsw i32 %i.cs, %i.cu                ; 2 uses
  %i.cw = add nsw i32 %i.cv, %i.ct                ; 2 uses
  %i.cx = sub nsw i32 %i.cw, %i.cs
  %i.cy = tail call i32 @llvm.abs.i32(i32 %i.cx, i1 true) ; 2 uses
  %i.cz = tail call i32 @llvm.abs.i32(i32 %i.cv, i1 true) ; 2 uses
  %i.da = sub nsw i32 %i.cw, %i.cu
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.da, i1 true) ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.cy, %i.cz
  %.not20.i.i.i = icmp samesign ugt i32 %i.cy, %i.db
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not20.i.i.i
  %.not21.i.i.i = icmp samesign ugt i32 %i.cz, %i.db
  %..i.i.i = select i1 %.not21.i.i.i, i8 %.034.i.i, i8 %.035.i.i
  %.0.i.i.i = select i1 %or.cond.i.i.i, i8 %..i.i.i, i8 %.036.i.i
  %i.dc = sub i8 %i.cj, %.0.i.i.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.037.i.i = phi i8 [ %i.cj, %bb.j ], [ %i.dc, %bb.n ], [ %i.ck, %bb.k ], [ %i.cl, %bb.l ], [ %i.cr, %bb.m ]
  %i.dd = zext i8 %.037.i.i to i32
  %i.de = add nsw i32 %i.dd, -128
  %i.df = tail call i32 @llvm.abs.i32(i32 %i.de, i1 true)
  %reass.sub.i.i = add i32 %.03845.i.i, 128
  %i.dg = sub i32 %reass.sub.i.i, %i.df           ; 2 uses
  %i.dh = add nuw nsw i64 %i.cd, 1
  %5 = and i64 %i.dh, 4294967295                  ; 2 uses
  %6 = icmp ugt i64 %i.n, %5
  br i1 %6, label %.lr.ph.i.i, label %filter_sum.exit.loopexit.i, !llvm.loop !320

filter_sum.exit.loopexit.i:                       ; preds = %bb.o
  %i.di = tail call i32 @llvm.abs.i32(i32 %i.dg, i1 true) ; 2 uses
  %i.dj = icmp slt i32 %i.di, %.043.i
  %spec.select.i = select i1 %i.dj, i32 %.12941.i, i32 %.02642.i
  %spec.select36.i = tail call i32 @llvm.smin.i32(i32 %i.di, i32 %.043.i)
  br label %bb.p

bb.p:                                             ; preds = %filter_sum.exit.loopexit.i, %.split.split.i
  %.127.i = phi i32 [ %.02642.i, %.split.split.i ], [ %spec.select.i, %filter_sum.exit.loopexit.i ] ; 2 uses
  %.1.i = phi i32 [ %.043.i, %.split.split.i ], [ %spec.select36.i, %filter_sum.exit.loopexit.i ]
  %i.dk = add nuw nsw i32 %.12941.i, 1            ; 2 uses
  %exitcond.not.i88 = icmp eq i32 %i.dk, 5
  br i1 %exitcond.not.i88, label %get_best_filter.exit, label %.split.split.i, !llvm.loop !321

get_best_filter.exit:                             ; preds = %bb.p, %.preheader.preheader.split.i, %.split.split.us.preheader.i, %.preheader.i.us.4.i
  %.131.i = phi i32 [ %.127.us52.3.i, %.split.split.us.preheader.i ], [ %switch.tableidx.i, %.preheader.preheader.split.i ], [ %spec.select.us50.4.i, %.preheader.i.us.4.i ], [ %.127.i, %bb.p ] ; 2 uses
  %i.dl = trunc i32 %.131.i to i8                 ; 2 uses
  %.not81 = icmp eq i8 %i.dl, 0
  br i1 %.not81, label %.thread117, label %bb.q

.thread117:                                       ; preds = %bb.g, %.loopexit37.i, %get_best_filter.exit
  %.069.ph = phi ptr [ %i.bl, %bb.g ], [ %i.bm, %.loopexit37.i ], [ %i.bm, %get_best_filter.exit ]
  %i.dm = getelementptr inbounds i8, ptr %.069.ph, i64 -1 ; 2 uses
  store i8 0, ptr %i.dm, align 1, !tbaa !51
  br label %filter_scanline.exit

bb.q:                                             ; preds = %get_best_filter.exit
  %i.dn = getelementptr inbounds i8, ptr %i.i, i64 -1 ; 2 uses
  store i8 %i.dl, ptr %i.dn, align 1, !tbaa !51
  %i.do = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 3 uses
  %i.dp = load ptr, ptr %i.p, align 8, !tbaa !54  ; 3 uses
  %i.dq = load i32, ptr %i.bo, align 8, !tbaa !75 ; 2 uses
  %i.dr = and i32 %.131.i, 255                    ; 2 uses
  %i.ds = icmp eq ptr %i.do, null
  %i.dt = icmp eq ptr %i.dp, null
  %or.cond.i89 = or i1 %i.ds, %i.dt
  %i.du = icmp ult i64 %i.m, 2
  %or.cond3.i = or i1 %i.du, %or.cond.i89
  br i1 %or.cond3.i, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dv = icmp samesign ugt i32 %i.dr, 4
  br i1 %i.dv, label %bb.y, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.r, %bb.x
  %i.dw = phi i64 [ %i.ew, %bb.x ], [ 0, %bb.r ]  ; 3 uses
  %.04653.i = phi i32 [ %i.ev, %bb.x ], [ 0, %bb.r ] ; 3 uses
  %.not.i91 = icmp ult i32 %.04653.i, %i.dq
  br i1 %.not.i91, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i90
  %i.dx = sub nuw i32 %.04653.i, %i.dq
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dy
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !51
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i90
  %.044.i = phi i8 [ %i.ea, %bb.s ], [ 0, %.lr.ph.i90 ] ; 4 uses
  %.042.i = phi i8 [ %i.ec, %bb.s ], [ 0, %.lr.ph.i90 ] ; 2 uses
  %.043.in.i = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dw
  %.043.i92 = load i8, ptr %.043.in.i, align 1, !tbaa !51 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dw
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !51
  switch i32 %i.dr, label %default.unreachable62.i [
    i32 1, label %bb.x
    i32 2, label %bb.u
    i32 3, label %bb.v
    i32 4, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ef = zext i8 %.044.i to i16
  %i.eg = zext i8 %.043.i92 to i16
  %i.eh = add nuw nsw i16 %i.eg, %i.ef
  %i.ei = lshr i16 %i.eh, 1
  %i.ej = trunc nuw i16 %i.ei to i8
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ek = zext i8 %.044.i to i32                  ; 2 uses
  %i.el = zext i8 %.043.i92 to i32
  %i.em = zext i8 %.042.i to i32                  ; 2 uses
  %i.en = sub nsw i32 %i.ek, %i.em                ; 2 uses
  %i.eo = add nsw i32 %i.en, %i.el                ; 2 uses
  %i.ep = sub nsw i32 %i.eo, %i.ek
  %i.eq = tail call i32 @llvm.abs.i32(i32 %i.ep, i1 true) ; 2 uses
  %i.er = tail call i32 @llvm.abs.i32(i32 %i.en, i1 true) ; 2 uses
  %i.es = sub nsw i32 %i.eo, %i.em
  %i.et = tail call i32 @llvm.abs.i32(i32 %i.es, i1 true) ; 2 uses
  %.not.i.i93 = icmp samesign ugt i32 %i.eq, %i.er
  %.not20.i.i = icmp samesign ugt i32 %i.eq, %i.et
  %or.cond.i.i = select i1 %.not.i.i93, i1 true, i1 %.not20.i.i
  %.not21.i.i = icmp samesign ugt i32 %i.er, %i.et
  %..i.i = select i1 %.not21.i.i, i8 %.042.i, i8 %.043.i92
  %.0.i.i = select i1 %or.cond.i.i, i8 %..i.i, i8 %.044.i
  br label %bb.x

default.unreachable62.i:                          ; preds = %bb.t
  unreachable

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.pn.i = phi i8 [ %.0.i.i, %bb.w ], [ %i.ej, %bb.v ], [ %.043.i92, %bb.u ], [ %.044.i, %bb.t ]
  %.045.i = sub i8 %i.ee, %.pn.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dw
  store i8 %.045.i, ptr %i.eu, align 1, !tbaa !51
  %i.ev = add i32 %.04653.i, 1                    ; 2 uses
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = icmp ugt i64 %i.n, %i.ew
  br i1 %i.ex, label %.lr.ph.i90, label %filter_scanline.exit, !llvm.loop !322

bb.y:                                             ; preds = %bb.r, %bb.q
  %.0.i.ph = phi i32 [ 80, %bb.q ], [ 65, %bb.r ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.ey, align 8, !tbaa !50
  br label %update_row_info.exit.thread

filter_scanline.exit:                             ; preds = %bb.x, %.thread117
  %i.ez = phi ptr [ %i.dm, %.thread117 ], [ %i.dn, %bb.x ]
  %i.fa = icmp ugt i64 %i.m, 4294967295
  br i1 %i.fa, label %write_idat_bytes.exit.thread, label %bb.z

bb.z:                                             ; preds = %filter_scanline.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !91
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 3 uses
  store ptr %i.ez, ptr %i.fb, align 8, !tbaa !70
  %i.fc = trunc nuw i64 %i.m to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2616 ; 3 uses
  store i32 %i.fc, ptr %i.fd, align 8, !tbaa !68
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.z
  %i.fg = tail call i32 @deflate(ptr noundef nonnull %i.fb, i32 noundef 0) #28
  %i.fh = load i32, ptr %i.fe, align 8, !tbaa !64
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.backedge
  %i.fj = tail call fastcc i32 @finish_chunk(ptr noundef nonnull %0) ; 2 uses
  %.not.i99 = icmp eq i32 %i.fj, 0
  br i1 %.not.i99, label %bb.ab, label %write_idat_bytes.exit.thread.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.fk = call fastcc i32 @write_header(ptr noundef nonnull %0, ptr noundef nonnull @type_idat, i64 noundef 8192, ptr noundef %i.b) ; 2 uses
  %.not33.i = icmp eq i32 %i.fk, 0
  br i1 %.not33.i, label %.thread141, label %write_idat_bytes.exit.thread.sink.split

bb.ac:                                            ; preds = %.backedge
  %i.fl = load i32, ptr %i.fd, align 8, !tbaa !68
  %.not34.i96 = icmp eq i32 %i.fl, 0
  br i1 %.not34.i96, label %bb.ad, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ac, %.thread141
  br label %.backedge, !llvm.loop !323

.thread141:                                       ; preds = %bb.ab
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !91
  store ptr %i.fm, ptr %i.ff, align 8, !tbaa !65
  store i32 8192, ptr %i.fe, align 8, !tbaa !64
  %i.fn = load i32, ptr %i.fd, align 8, !tbaa !68
  %.not34.i96143 = icmp eq i32 %i.fn, 0
  br i1 %.not34.i96143, label %.thread145, label %.backedge.backedge

bb.ad:                                            ; preds = %bb.ac
  %.not35.i97 = icmp eq i32 %i.fg, 0
  br i1 %.not35.i97, label %.thread145, label %write_idat_bytes.exit.thread.sink.split

write_idat_bytes.exit.thread.sink.split:          ; preds = %bb.aa, %bb.ab, %bb.ad
  %.1.i98126.ph = phi i32 [ 64, %bb.ad ], [ %i.fk, %bb.ab ], [ %i.fj, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %write_idat_bytes.exit.thread

write_idat_bytes.exit.thread:                     ; preds = %write_idat_bytes.exit.thread.sink.split, %filter_scanline.exit
  %.1.i98126 = phi i32 [ 80, %filter_scanline.exit ], [ %.1.i98126.ph, %write_idat_bytes.exit.thread.sink.split ]
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.fo, align 8, !tbaa !50
  br label %update_row_info.exit.thread

.thread145:                                       ; preds = %.thread141, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.fp = load <2 x ptr>, ptr %i.p, align 8, !tbaa !91
  %i.fq = shufflevector <2 x ptr> %i.fp, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.fq, ptr %i.p, align 8, !tbaa !91
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !92
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 2 uses
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !61  ; 2 uses
  %i.fv = load i32, ptr %i.e, align 4, !tbaa !55  ; 2 uses
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = getelementptr inbounds [24 x i8], ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
end_hunk_0
