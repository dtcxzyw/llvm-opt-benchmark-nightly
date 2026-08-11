inline.NumInlined: 49
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@dt_imageio_dng_write_cfa_bayer:bb.a
  %.not194 = icmp eq i32 %i.fe, 0
  br i1 %.not194, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2) #13
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ff = call i32 @TIFFCreateDirectory(ptr noundef nonnull %i.v) #13 ; 0 uses
  %i.fg = call i32 @TIFFMergeFieldInfo(ptr noundef nonnull %i.v, ptr noundef nonnull @_register_extra_dng_fields.extra, i32 noundef 3) #13 ; 0 uses
  %i.fh = call fastcc i32 @_write_full_preview_subifd(ptr noundef %i.v, ptr noundef %7)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge
  %.2163 = phi i32 [ %.lobit.le, %._crit_edge ], [ %i.fh, %bb.t ], [ 1, %bb.s ] ; 2 uses
  call void @TIFFClose(ptr noundef nonnull %i.v) #13
  call void @g_free(ptr noundef %.0170204) #13
  %i.fi = icmp eq i32 %.2163, 0                   ; 2 uses
  %i.fj = icmp ne ptr %5, null
  %i.fk = icmp sgt i32 %6, 0
  %i.fl = and i1 %i.fj, %i.fk
  %or.cond13 = and i1 %i.fl, %i.fi
  br i1 %or.cond13, label %.thread206, label %bb.v

.thread206:                                       ; preds = %bb.u
  %i.fm = call i32 @dt_exif_write_blob(ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull %0, i32 noundef 0) #13 ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  br i1 %i.fi, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fn = call i32 @g_unlink(ptr noundef nonnull %0) #13 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.thread206, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.l, %bb.x
  %.1 = phi i32 [ %.2163, %bb.x ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.b, %bb.a
  %.3 = phi i32 [ 1, %bb.a ], [ %.1, %bb.y ], [ 1, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @TIFFOpen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_make_thumb_jpeg(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.dt_imageio_jpeg_t, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = sext i32 %1 to i64
  %i.b = call i32 @dt_imageio_jpeg_decompress_header(ptr noundef %0, i64 noundef %i.a, ptr noundef nonnull %5) #13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  %or.cond = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.c to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = zext nneg i32 %i.f to i64
  %i.k = mul nuw i64 %i.i, %i.j
  %i.l = call ptr @dt_alloc_aligned(i64 noundef %i.k) #13 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %.not122 = icmp eq ptr %i.l, null
  br i1 %.not122, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @dt_imageio_jpeg_decompress(ptr noundef nonnull %5, ptr noundef nonnull %i.l) #13
  %.not123 = icmp eq i32 %i.m, 0
  br i1 %.not123, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.l) #13
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %5, align 8, !tbaa !40     ; 6 uses
  %i.o = load i32, ptr %i.e, align 4, !tbaa !76   ; 5 uses
  %i.p = call i32 @llvm.smax.i32(i32 %i.n, i32 %i.o) ; 4 uses
  %i.q = icmp slt i32 %i.p, 257
  br i1 %i.q, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = shl nsw i32 %i.n, 8
  %i.s = lshr i32 %i.p, 1                         ; 2 uses
  %i.t = add nsw i32 %i.s, %i.r
  %i.u = sdiv i32 %i.t, %i.p
  %i.v = shl nsw i32 %i.o, 8
  %i.w = add nsw i32 %i.s, %i.v
  %i.x = sdiv i32 %i.w, %i.p
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %i.y = phi i32 [ %i.u, %bb.g ], [ %i.n, %bb.f ] ; 7 uses
  %i.z = phi i32 [ %i.x, %bb.g ], [ %i.o, %bb.f ] ; 7 uses
  %i.aa = sext i32 %i.y to i64                    ; 2 uses
  %i.ab = shl nsw i64 %i.aa, 2                    ; 2 uses
  %i.ac = sext i32 %i.z to i64
  %i.ad = mul i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = call ptr @dt_alloc_aligned(i64 noundef %i.ad) #13 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %.not124 = icmp eq ptr %i.ae, null
  br i1 %.not124, label %bb.h, label %.preheader128

.preheader128:                                    ; preds = %.thread
  %i.af = icmp sgt i32 %i.z, 0
  br i1 %i.af, label %.lr.ph156, label %._crit_edge.split

.lr.ph156:                                        ; preds = %.preheader128
  %i.ag = icmp sgt i32 %i.y, 0
  %i.ah = sext i32 %i.n to i64
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph156
  %i.ai = zext nneg i32 %i.y to i64               ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %wide.trip.count175 = zext nneg i32 %i.z to i64
  br label %.lr.ph

bb.h:                                             ; preds = %.thread
  call void @free(ptr noundef nonnull %i.l) #13
  br label %bb.m

..loopexit_crit_edge:                             ; preds = %._crit_edge142.us, %.lr.ph.split.preheader
  %exitcond176.not = icmp eq i64 %indvar.next, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph156, %.preheader128
  call void @free(ptr noundef %i.l) #13
  %i.ak = add i64 %i.ad, 1024                     ; 2 uses
  %i.al = call noalias ptr @g_try_malloc(i64 noundef %i.ak) #14 ; 4 uses
  %.not125 = icmp eq ptr %i.al, null
  br i1 %.not125, label %bb.i, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %..loopexit_crit_edge ] ; 4 uses
  %i.am = trunc i64 %indvar to i32
  %i.an = mul i32 %i.o, %i.am
  %i.ao = sdiv i32 %i.an, %i.z                    ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 3 uses
  %i.ap = trunc i64 %indvar.next to i32
  %i.aq = mul i32 %i.o, %i.ap
  %i.ar = sdiv i32 %i.aq, %i.z                    ; 2 uses
  %i.as = icmp slt i32 %i.ao, %i.ar
  %i.at = mul nuw nsw i64 %indvar, %i.aa
  br i1 %i.as, label %.preheader.lr.ph.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.au = mul i64 %i.ab, %indvar
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.au
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.aj, i1 false), !tbaa !35
  br label %..loopexit_crit_edge

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph
  %i.av = sext i32 %i.ao to i64
  %wide.trip.count167 = sext i32 %i.ar to i64
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge142.us
  %indvars.iv169 = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next170, %._crit_edge142.us ] ; 3 uses
  %i.aw = trunc i64 %indvars.iv169 to i32
  %i.ax = mul i32 %i.n, %i.aw
  %i.ay = sdiv i32 %i.ax, %i.y                    ; 3 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 3 uses
  %i.az = trunc i64 %indvars.iv.next170 to i32
  %i.ba = mul i32 %i.n, %i.az
  %i.bb = sdiv i32 %i.ba, %i.y                    ; 3 uses
  %i.bc = icmp slt i32 %i.ay, %i.bb
  br i1 %i.bc, label %.preheader.us.us.preheader, label %._crit_edge142.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.us
  %i.bd = sext i32 %i.ay to i64                   ; 6 uses
  %i.be = sub i32 %i.bb, %i.ay                    ; 2 uses
  %wide.trip.count = sext i32 %i.bb to i64        ; 2 uses
  %i.bf = sub nsw i64 %wide.trip.count, %i.bd     ; 6 uses
  %min.iters.check = icmp ult i64 %i.bf, 9
  %min.iters.check195 = icmp ult i64 %i.bf, 33
  %i.bg = and i64 %i.bf, 31                       ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 32, i64 %i.bg      ; 2 uses
  %n.vec = sub nsw i64 %i.bf, %i.bi               ; 3 uses
  %i.bj = add nsw i64 %n.vec, %i.bd
  %min.epilog.iters.check = icmp samesign ult i64 %i.bi, 9
  %i.bk = and i64 %i.bf, 7                        ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = select i1 %i.bl, i64 8, i64 %i.bk
  %n.vec231 = sub nsw i64 %i.bf, %i.bm            ; 2 uses
  %i.bn = add nsw i64 %n.vec231, %i.bd
  br label %iter.check

._crit_edge142.us.loopexit:                       ; preds = %._crit_edge.us.us
  %i.bo = call i32 @llvm.umax.i32(i32 %.0101141.us.us.a, i32 1)
  br label %._crit_edge142.us

._crit_edge142.us:                                ; preds = %.preheader.lr.ph.us, %._crit_edge142.us.loopexit
  %.us-phi.us = phi i32 [ %i.ep, %._crit_edge142.us.loopexit ], [ 0, %.preheader.lr.ph.us ]
  %.us-phi147.us = phi i32 [ %i.et, %._crit_edge142.us.loopexit ], [ 0, %.preheader.lr.ph.us ]
  %.us-phi148.us = phi i32 [ %i.bo, %._crit_edge142.us.loopexit ], [ 1, %.preheader.lr.ph.us ] ; 3 uses
  %.us-phi149.us = phi i32 [ %i.el, %._crit_edge142.us.loopexit ], [ 0, %.preheader.lr.ph.us ]
  %i.bp = add nuw nsw i64 %i.at, %indvars.iv169
  %i.bq = shl i64 %i.bp, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bq ; 4 uses
  %i.bs = udiv i32 %.us-phi149.us, %.us-phi148.us
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %i.br, align 4, !tbaa !35
  %i.bu = udiv i32 %.us-phi.us, %.us-phi148.us
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !35
  %i.bx = udiv i32 %.us-phi147.us, %.us-phi148.us
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.by, ptr %i.bz, align 2, !tbaa !35
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 0, ptr %i.ca, align 1, !tbaa !35
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %i.ai
  br i1 %exitcond173.not, label %..loopexit_crit_edge, label %.preheader.lr.ph.us

iter.check:                                       ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
  %indvars.iv164 = phi i64 [ %i.av, %.preheader.us.us.preheader ], [ %indvars.iv.next167, %._crit_edge.us.us ] ; 2 uses
  %.0101141.us.us.a = phi i32 [ %i.be, %.preheader.us.us.preheader ], [ %indvars.iv.next164, %._crit_edge.us.us ] ; 2 uses
  %.0105139.us.us = phi i32 [ 0, %.preheader.us.us.preheader ], [ %i.el, %._crit_edge.us.us ] ; 3 uses
  %.0107138.us.us = phi i32 [ 0, %.preheader.us.us.preheader ], [ %i.et, %._crit_edge.us.us ] ; 3 uses
  %.0109137.us.us = phi i32 [ 0, %.preheader.us.us.preheader ], [ %i.ep, %._crit_edge.us.us ] ; 3 uses
  %i.cb = mul nsw i64 %indvars.iv164, %i.ah       ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check195, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0105139.us.us, i64 0
  %i.cd = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0107138.us.us, i64 0
  %i.ce = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0109137.us.us, i64 0
  %invariant.op = add i64 8, %i.cb
  %invariant.op281.a = add i64 16, %i.cb
  %invariant.op283.a = add i64 24, %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.cc, %vector.ph ], [ %i.ct, %vector.body ]
  %vec.phi196 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.cu, %vector.body ]
  %vec.phi197 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi198 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %vec.phi199 = phi <8 x i32> [ %i.cd, %vector.ph ], [ %i.dj, %vector.body ]
  %vec.phi200 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi201 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi202 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi203 = phi <8 x i32> [ %i.ce, %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi204 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi205 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi206 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %i.cf = add i64 %index, %i.bd                   ; 4 uses
  %i.cg = add nsw i64 %i.cb, %i.cf
  %.reass = add i64 %i.cf, %invariant.op
  %.reass282.a = add i64 %i.cf, %invariant.op281.a
  %.reass284.a = add i64 %i.cf, %invariant.op283.a
  %i.ch = shl i64 %i.cg, 2
  %i.ci = shl i64 %.reass, 2
  %i.cj = shl i64 %.reass282.a, 2
  %i.ck = shl i64 %.reass284.a, 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cj
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ck
  %wide.vec = load <32 x i8>, ptr %i.cl, align 4, !tbaa !35 ; 3 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec207 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec208 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %wide.vec209 = load <32 x i8>, ptr %i.cm, align 4, !tbaa !35 ; 3 uses
  %strided.vec210 = shufflevector <32 x i8> %wide.vec209, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec211 = shufflevector <32 x i8> %wide.vec209, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec212 = shufflevector <32 x i8> %wide.vec209, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %wide.vec213 = load <32 x i8>, ptr %i.cn, align 4, !tbaa !35 ; 3 uses
  %strided.vec214 = shufflevector <32 x i8> %wide.vec213, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec215 = shufflevector <32 x i8> %wide.vec213, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec216 = shufflevector <32 x i8> %wide.vec213, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %wide.vec217 = load <32 x i8>, ptr %i.co, align 4, !tbaa !35 ; 3 uses
  %strided.vec218 = shufflevector <32 x i8> %wide.vec217, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec219 = shufflevector <32 x i8> %wide.vec217, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec220 = shufflevector <32 x i8> %wide.vec217, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.cp = zext <8 x i8> %strided.vec to <8 x i32>
  %i.cq = zext <8 x i8> %strided.vec210 to <8 x i32>
  %i.cr = zext <8 x i8> %strided.vec214 to <8 x i32>
  %i.cs = zext <8 x i8> %strided.vec218 to <8 x i32>
  %i.ct = add <8 x i32> %vec.phi, %i.cp           ; 2 uses
  %i.cu = add <8 x i32> %vec.phi196, %i.cq        ; 2 uses
  %i.cv = add <8 x i32> %vec.phi197, %i.cr        ; 2 uses
  %i.cw = add <8 x i32> %vec.phi198, %i.cs        ; 2 uses
  %i.cx = zext <8 x i8> %strided.vec207 to <8 x i32>
  %i.cy = zext <8 x i8> %strided.vec211 to <8 x i32>
  %i.cz = zext <8 x i8> %strided.vec215 to <8 x i32>
  %i.da = zext <8 x i8> %strided.vec219 to <8 x i32>
  %i.db = add <8 x i32> %vec.phi203, %i.cx        ; 2 uses
  %i.dc = add <8 x i32> %vec.phi204, %i.cy        ; 2 uses
  %i.dd = add <8 x i32> %vec.phi205, %i.cz        ; 2 uses
  %i.de = add <8 x i32> %vec.phi206, %i.da        ; 2 uses
  %i.df = zext <8 x i8> %strided.vec208 to <8 x i32>
  %i.dg = zext <8 x i8> %strided.vec212 to <8 x i32>
  %i.dh = zext <8 x i8> %strided.vec216 to <8 x i32>
  %i.di = zext <8 x i8> %strided.vec220 to <8 x i32>
  %i.dj = add <8 x i32> %vec.phi199, %i.df        ; 2 uses
  %i.dk = add <8 x i32> %vec.phi200, %i.dg        ; 2 uses
  %i.dl = add <8 x i32> %vec.phi201, %i.dh        ; 2 uses
  %i.dm = add <8 x i32> %vec.phi202, %i.di        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !77

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx226 = add <8 x i32> %i.dc, %i.db
  %bin.rdx227 = add <8 x i32> %i.dd, %bin.rdx226
  %bin.rdx228 = add <8 x i32> %i.de, %bin.rdx227
  %i.do = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx228) ; 2 uses
  %bin.rdx223 = add <8 x i32> %i.dk, %i.dj
  %bin.rdx224 = add <8 x i32> %i.dl, %bin.rdx223
  %bin.rdx225 = add <8 x i32> %i.dm, %bin.rdx224
  %i.dp = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx225) ; 2 uses
  %bin.rdx = add <8 x i32> %i.cu, %i.ct
  %bin.rdx221 = add <8 x i32> %i.cv, %bin.rdx
  %bin.rdx222 = add <8 x i32> %i.cw, %bin.rdx221
  %i.dq = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx222) ; 2 uses
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.dq, %vec.epilog.iter.check ], [ %.0105139.us.us, %vector.main.loop.iter.check ]
  %bc.merge.rdx229 = phi i32 [ %i.dp, %vec.epilog.iter.check ], [ %.0107138.us.us, %vector.main.loop.iter.check ]
  %bc.merge.rdx230 = phi i32 [ %i.do, %vec.epilog.iter.check ], [ %.0109137.us.us, %vector.main.loop.iter.check ]
  %i.dr = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.ds = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx229, i64 0
  %i.dt = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx230, i64 0
  %invariant.op285 = add i64 %i.bd, %i.cb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next240, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi233 = phi <8 x i32> [ %i.dr, %vec.epilog.ph ], [ %i.dx, %vec.epilog.vector.body ]
  %vec.phi234 = phi <8 x i32> [ %i.ds, %vec.epilog.ph ], [ %i.eb, %vec.epilog.vector.body ]
  %vec.phi235 = phi <8 x i32> [ %i.dt, %vec.epilog.ph ], [ %i.dz, %vec.epilog.vector.body ]
  %.reass286 = add i64 %index232, %invariant.op285
  %i.du = shl i64 %.reass286, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.du
  %wide.vec236 = load <32 x i8>, ptr %i.dv, align 4, !tbaa !35 ; 3 uses
  %strided.vec237 = shufflevector <32 x i8> %wide.vec236, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec238 = shufflevector <32 x i8> %wide.vec236, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec239 = shufflevector <32 x i8> %wide.vec236, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.dw = zext <8 x i8> %strided.vec237 to <8 x i32>
  %i.dx = add <8 x i32> %vec.phi233, %i.dw        ; 2 uses
  %i.dy = zext <8 x i8> %strided.vec238 to <8 x i32>
  %i.dz = add <8 x i32> %vec.phi235, %i.dy        ; 2 uses
  %i.ea = zext <8 x i8> %strided.vec239 to <8 x i32>
  %i.eb = add <8 x i32> %vec.phi234, %i.ea        ; 2 uses
  %index.next240 = add nuw i64 %index232, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next240, %n.vec231
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ed = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dx)
  %i.ee = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.eb)
  %i.ef = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dz)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.1102133.us.us.ph = phi i32 [ %.0105139.us.us, %iter.check ], [ %i.dq, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  %.1108130.us.us.ph = phi i32 [ %.0107138.us.us, %iter.check ], [ %i.dp, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ]
  %.1110129.us.us.ph = phi i32 [ %.0109137.us.us, %iter.check ], [ %i.do, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1102133.us.us = phi i32 [ %i.el, %vec.epilog.scalar.ph ], [ %.1102133.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.1108130.us.us = phi i32 [ %i.et, %vec.epilog.scalar.ph ], [ %.1108130.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.1110129.us.us = phi i32 [ %i.ep, %vec.epilog.scalar.ph ], [ %.1110129.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.eg = add nsw i64 %i.cb, %indvars.iv
  %i.eh = shl i64 %i.eg, 2
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eh ; 3 uses
  %i.ej = load i8, ptr %i.ei, align 4, !tbaa !35
  %i.ek = zext i8 %i.ej to i32
  %i.el = add i32 %.1102133.us.us, %i.ek          ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !35
  %i.eo = zext i8 %i.en to i32
  %i.ep = add i32 %.1110129.us.us, %i.eo          ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !35
  %i.es = zext i8 %i.er to i32
  %i.et = add i32 %.1108130.us.us, %i.es          ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %vec.epilog.scalar.ph, !llvm.loop !82

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph
  %indvars.iv.next167 = add nsw i64 %indvars.iv164, 1 ; 2 uses
  %indvars.iv.next164 = add i32 %.0101141.us.us.a, %i.be
  %exitcond168.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge142.us.loopexit, label %iter.check

bb.i:                                             ; preds = %._crit_edge.split
  call void @free(ptr noundef %i.ae) #13
  br label %bb.m

bb.j:                                             ; preds = %._crit_edge.split
  %i.eu = call i32 @dt_imageio_jpeg_compress(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.al, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 85) #13 ; 3 uses
  call void @free(ptr noundef %i.ae) #13
  %i.ev = icmp slt i32 %i.eu, 1
  %i.ew = trunc i64 %i.ak to i32
  %i.ex = icmp sgt i32 %i.eu, %i.ew
  %or.cond127 = or i1 %i.ev, %i.ex
  br i1 %or.cond127, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @g_free(ptr noundef nonnull %i.al) #13
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.y, ptr %2, align 4, !tbaa !18
  store i32 %i.z, ptr %3, align 4, !tbaa !18
  store i32 %i.eu, ptr %4, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.c, %bb.i, %bb.l, %bb.k, %bb.h, %bb.b, %bb.a
  %.4 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.k ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_write_thumb_ifd0(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 1, 3) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %i.b = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 254, i32 noundef 1) #13 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 256, i32 noundef %i.d) #13 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  %i.h = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 257, i32 noundef %i.g) #13 ; 0 uses
  %i.i = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 258, i32 noundef 8) #13 ; 0 uses
  %i.j = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 277, i32 noundef 3) #13 ; 0 uses
  %i.k = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 284, i32 noundef 1) #13 ; 0 uses
  %i.l = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 262, i32 noundef 6) #13 ; 0 uses
  %i.m = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 259, i32 noundef 7) #13 ; 0 uses
  %i.n = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 274, i32 noundef 1) #13 ; 0 uses
  %i.o = load i32, ptr %i.f, align 8, !tbaa !17
  %i.p = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 278, i32 noundef %i.o) #13 ; 0 uses
  %i.q = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 50970, i32 noundef 2) #13 ; 0 uses
  tail call fastcc void @_set_dng_shared_metadata(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.r = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 330, i32 noundef %3, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15
  %i.v = sext i32 %i.u to i64
  %i.w = call i64 @TIFFWriteRawStrip(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.s, i64 noundef %i.v) #13
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %i.t, align 8, !tbaa !15
  %i.z = load i32, ptr %i.c, align 4, !tbaa !16
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !17
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa) #13
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ab = call i32 @TIFFWriteDirectory(ptr noundef nonnull %0) #13
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare void @TIFFClose(ptr noundef) local_unnamed_addr #2

declare i32 @g_unlink(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFCreateDirectory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare i32 @TIFFDefaultStripSize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_dng_shared_metadata(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [3 x float], align 8              ; 6 uses
  %i.d = alloca [9 x float], align 16             ; 4 uses
  %i.e = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 282, double noundef 3.000000e+02) #13 ; 0 uses
  %i.f = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 283, double noundef 3.000000e+02) #13 ; 0 uses
  %i.g = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 296, i32 noundef 2) #13 ; 0 uses
  %i.h = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.16, ptr noundef nonnull @darktable_package_version) #13 ; 2 uses
  %i.i = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 305, ptr noundef %i.h) #13 ; 0 uses
  tail call void @g_free(ptr noundef %i.h) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  %i.k = load i8, ptr %i.j, align 16, !tbaa !35
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 271, ptr noundef nonnull %i.j) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %i.n = load i8, ptr %i.m, align 16, !tbaa !35
  %.not63 = icmp eq i8 %i.n, 0
  br i1 %.not63, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 272, ptr noundef nonnull %i.m) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 2 uses
  %i.q = load i8, ptr %i.p, align 16, !tbaa !35
  %.not64 = icmp eq i8 %i.q, 0
  br i1 %.not64, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 50708, ptr noundef nonnull %i.p) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1124 ; 3 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !35
  %.not65 = icmp eq i8 %i.t, 0
  br i1 %.not65, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #15
  %i.v = trunc i64 %i.u to i32
  %i.w = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 50827, i32 noundef %i.v, ptr noundef nonnull %i.s) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 1025, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 513, ptr %i.b, align 4
  %i.x = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 50706, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.y = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 50707, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.z = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 50730, double noundef 0.000000e+00) #13 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1776
  %i.ab = load float, ptr %i.aa, align 16, !tbaa !38 ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.j, label %.preheader67

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1780
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !38 ; 2 uses
  %i.af = fcmp reassoc nsz arcp contract afn ogt float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.k, label %.preheader67

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1784
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !38 ; 2 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.l, label %.preheader67

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.aj = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ae, i64 1
  %i.al = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ak ; 4 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = extractelement <2 x float> %i.al, i64 1
  store <2 x float> %i.al, ptr %i.c, align 8, !tbaa !38
  %i.ao = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ah ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store float %i.ao, ptr %i.ap, align 8, !tbaa !38
  %i.aq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.an, float %i.ao)
  %i.ar = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.am, float %i.aq) ; 3 uses
end_hunk_0
