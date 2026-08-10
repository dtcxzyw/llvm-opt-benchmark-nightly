inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mbedtls_gcm_setkey:bb.a
  %i.ag = call i64 @llvm.bswap.i64(i64 %i.af)     ; 3 uses
  store i64 %i.ag, ptr %i.w, align 8
  %i.ah = and i64 %i.t, 72057594037927936
  %.not.i45.i = icmp eq i64 %i.ah, 0
  %i.ai = select i1 %.not.i45.i, i8 0, i8 -31
  %i.aj = trunc i64 %i.ag to i8
  %i.ak = xor i8 %i.ai, %i.aj
  store i8 %i.ak, ptr %i.w, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %.0.copyload.i10.i.1.i = load i64, ptr %i.x, align 8 ; 2 uses
  %i.an = call i64 @llvm.bswap.i64(i64 %.0.copyload.i10.i.1.i) ; 6 uses
  %i.ao = lshr i64 %i.an, 1
  %i.ap = call i64 @llvm.bswap.i64(i64 %i.ao)     ; 2 uses
  store i64 %i.ap, ptr %i.am, align 8
  %sh.diff60.i = lshr i64 %i.ag, 49
  %tr.sh.diff61.i = trunc i64 %sh.diff60.i to i8
  %i.aq = and i8 %tr.sh.diff61.i, -128
  %i.ar = trunc i64 %i.ap to i8
  %i.as = or disjoint i8 %i.aq, %i.ar
  store i8 %i.as, ptr %i.am, align 8, !tbaa !16
  %.0.copyload.i.i.1.i = load i64, ptr %i.w, align 8
  %i.at = call i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.1.i) ; 6 uses
  %i.au = lshr i64 %i.at, 1
  %i.av = call i64 @llvm.bswap.i64(i64 %i.au)     ; 3 uses
  store i64 %i.av, ptr %i.al, align 8
  %i.aw = and i64 %.0.copyload.i10.i.1.i, 72057594037927936
  %.not.i45.1.i = icmp eq i64 %i.aw, 0
  %i.ax = select i1 %.not.i45.1.i, i8 0, i8 -31
  %i.ay = trunc i64 %i.av to i8
  %i.az = xor i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.al, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.0.copyload.i10.i.2.i = load i64, ptr %i.am, align 8 ; 2 uses
  %i.bc = call i64 @llvm.bswap.i64(i64 %.0.copyload.i10.i.2.i) ; 5 uses
  %i.bd = lshr i64 %i.bc, 1
  %i.be = call i64 @llvm.bswap.i64(i64 %i.bd)     ; 2 uses
  store i64 %i.be, ptr %i.bb, align 8
  %sh.diff62.i = lshr i64 %i.av, 49
  %tr.sh.diff63.i = trunc i64 %sh.diff62.i to i8
  %i.bf = and i8 %tr.sh.diff63.i, -128
  %i.bg = trunc i64 %i.be to i8
  %i.bh = or disjoint i8 %i.bf, %i.bg
  store i8 %i.bh, ptr %i.bb, align 8, !tbaa !16
  %.0.copyload.i.i.2.i = load i64, ptr %i.al, align 8
  %i.bi = call i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.2.i) ; 5 uses
  %i.bj = lshr i64 %i.bi, 1
  %i.bk = call i64 @llvm.bswap.i64(i64 %i.bj)     ; 2 uses
  store i64 %i.bk, ptr %i.ba, align 8
  %i.bl = and i64 %.0.copyload.i10.i.2.i, 72057594037927936
  %.not.i45.2.i = icmp eq i64 %i.bl, 0
  %i.bm = select i1 %.not.i45.2.i, i8 0, i8 -31
  %i.bn = trunc i64 %i.bk to i8
  %i.bo = xor i8 %i.bm, %i.bn
  store i8 %i.bo, ptr %i.ba, align 8, !tbaa !16
  store i64 %i.ae, ptr %i.r, align 8
  store i64 %i.y, ptr %i.u, align 8
  store i64 %i.at, ptr %i.w, align 8
  store i64 %i.an, ptr %i.x, align 8
  store i64 %i.bi, ptr %i.al, align 8
  store i64 %i.bc, ptr %i.am, align 8
  %i.bp = load i64, ptr %i.ba, align 8, !tbaa !8
  %i.bq = call i64 @llvm.bswap.i64(i64 %i.bp)     ; 4 uses
  store i64 %i.bq, ptr %i.ba, align 8
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !8
  %i.bs = call i64 @llvm.bswap.i64(i64 %i.br)     ; 4 uses
  store i64 %i.bs, ptr %i.bb, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bu = xor i64 %i.bq, %i.bi                    ; 3 uses
  store i64 %i.bu, ptr %i.bt, align 8
  %i.bv = xor i64 %i.bs, %i.bc                    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.by = xor i64 %i.bq, %i.at                    ; 2 uses
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = xor i64 %i.bs, %i.an                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cc = xor i64 %i.bi, %i.at                    ; 2 uses
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cd = xor i64 %i.bc, %i.an                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cg = xor i64 %i.bu, %i.at                    ; 2 uses
  store i64 %i.cg, ptr %i.cf, align 8
  %i.ch = xor i64 %i.bv, %i.an                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ck = xor i64 %i.bq, %i.ae
  store i64 %i.ck, ptr %i.cj, align 8
  %i.cl = xor i64 %i.bs, %i.y
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.co = xor i64 %i.bi, %i.ae
  store i64 %i.co, ptr %i.cn, align 8
  %i.cp = xor i64 %i.bc, %i.y
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cs = xor i64 %i.bu, %i.ae
  store i64 %i.cs, ptr %i.cr, align 8
  %i.ct = xor i64 %i.bv, %i.y
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.ct, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cw = xor i64 %i.at, %i.ae
  store i64 %i.cw, ptr %i.cv, align 8
  %i.cx = xor i64 %i.an, %i.y
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.da = xor i64 %i.by, %i.ae
  store i64 %i.da, ptr %i.cz, align 8
  %i.db = xor i64 %i.bz, %i.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.db, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.de = xor i64 %i.cc, %i.ae
  store i64 %i.de, ptr %i.dd, align 8
  %i.df = xor i64 %i.cd, %i.y
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.df, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.di = xor i64 %i.cg, %i.ae
  store i64 %i.di, ptr %i.dh, align 8
  %i.dj = xor i64 %i.ch, %i.y
  br label %gcm_gen_table.exit.sink.split

gcm_gen_table.exit.sink.split:                    ; preds = %._crit_edge.2.i, %gcm_set_acceleration.exit.thread.i
  %.sink30 = phi i64 [ 240, %gcm_set_acceleration.exit.thread.i ], [ 352, %._crit_edge.2.i ]
  %.sink = phi i64 [ %i.o, %gcm_set_acceleration.exit.thread.i ], [ %i.dj, %._crit_edge.2.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %.sink30
  store i64 %.sink, ptr %i.dk, align 8
  br label %gcm_gen_table.exit

gcm_gen_table.exit:                               ; preds = %gcm_gen_table.exit.sink.split, %bb.f, %gcm_set_acceleration.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %gcm_gen_table.exit, %bb.a
  %.1 = phi i32 [ -135, %bb.a ], [ %i.h, %bb.e ], [ -135, %bb.b ], [ -135, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %gcm_gen_table.exit ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @mbedtls_cipher_info_from_values(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @mbedtls_cipher_free(ptr noundef) local_unnamed_addr #4

declare i32 @mbedtls_cipher_setup(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @mbedtls_cipher_setkey(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !8
  %i.b = add i64 %3, -1
  %or.cond = icmp ult i64 %i.b, 2305843009213693951
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 15 uses
  %i.d = trunc i32 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i8 %i.d, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = icmp eq i64 %3, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.g, label %bb.c, label %.lr.ph62.preheader

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 407
  store i8 1, ptr %i.h, align 1, !tbaa !16
  br label %bb.d

.lr.ph62.preheader:                               ; preds = %bb.b
  %i.i = shl nuw i64 %3, 3
  %i.j = tail call i64 @llvm.bswap.i64(i64 %i.i)
  %scevgep = getelementptr i8, ptr %0, i64 392
  %scevgep72 = getelementptr i8, ptr %0, i64 392
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %mbedtls_xor.exit49
  %.04061 = phi i64 [ %i.bf, %mbedtls_xor.exit49 ], [ %3, %.lr.ph62.preheader ] ; 4 uses
  %.04160 = phi ptr [ %i.bg, %mbedtls_xor.exit49 ], [ %2, %.lr.ph62.preheader ] ; 11 uses
  %i.l = tail call i64 @llvm.umin.i64(i64 %.04061, i64 16) ; 10 uses
  %.not.i4755 = icmp ult i64 %.04061, 8
  br i1 %.not.i4755, label %.preheader54, label %.lr.ph

.preheader54:                                     ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph62
  %.0.i46.lcssa = phi i64 [ 0, %.lr.ph62 ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 8 uses
  %i.m = icmp samesign ult i64 %.0.i46.lcssa, %i.l
  br i1 %i.m, label %iter.check, label %mbedtls_xor.exit49

iter.check:                                       ; preds = %.preheader54
  %i.n = sub nuw nsw i64 %i.l, %.0.i46.lcssa      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep71 = getelementptr i8, ptr %scevgep, i64 %.0.i46.lcssa
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.l
  %scevgep74 = getelementptr i8, ptr %.04160, i64 %.0.i46.lcssa
  %scevgep75 = getelementptr i8, ptr %.04160, i64 %i.l
  %bound0 = icmp ult ptr %scevgep71, %scevgep75
  %bound1 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph58.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.o = and i64 %i.l, 7                          ; 2 uses
  %n.vec80 = sub nsw i64 %i.n, %i.o               ; 2 uses
  %i.p = add nsw i64 %.0.i46.lcssa, %n.vec80
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ] ; 2 uses
  %i.q = add nuw i64 %.0.i46.lcssa, %index81      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q ; 2 uses
  %wide.load82 = load <8 x i8>, ptr %i.r, align 1, !tbaa !16, !alias.scope !18, !noalias !21
  %i.s = getelementptr inbounds nuw i8, ptr %.04160, i64 %i.q
  %wide.load83 = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !21
  %i.t = xor <8 x i8> %wide.load83, %wide.load82
  store <8 x i8> %i.t, ptr %i.r, align 1, !tbaa !16, !alias.scope !18, !noalias !21
  %index.next84 = add nuw i64 %index81, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next84, %n.vec80
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n85 = icmp eq i64 %i.o, 0
  br i1 %cmp.n85, label %mbedtls_xor.exit49, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i4857.ph = phi i64 [ %.0.i46.lcssa, %vector.memcheck ], [ %.0.i46.lcssa, %iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 4 uses
  %i.v = sub nsw i64 %i.l, %.1.i4857.ph
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader, %.lr.ph58.prol
  %.1.i4857.prol = phi i64 [ %i.ab, %.lr.ph58.prol ], [ %.1.i4857.ph, %.lr.ph58.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph58.prol ], [ 0, %.lr.ph58.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4857.prol ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %.04160, i64 %.1.i4857.prol
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = xor i8 %i.z, %i.x
  store i8 %i.aa, ptr %i.w, align 1, !tbaa !16
  %i.ab = add nuw nsw i64 %.1.i4857.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol, !llvm.loop !27

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %.1.i4857.unr = phi i64 [ %.1.i4857.ph, %.lr.ph58.preheader ], [ %i.ab, %.lr.ph58.prol ]
  %i.ac = sub nsw i64 %.1.i4857.ph, %i.l
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %mbedtls_xor.exit49, label %.lr.ph58

.lr.ph:                                           ; preds = %.lr.ph62
  %.0.copyload.i50 = load i64, ptr %i.c, align 8
  %.0.copyload.i = load i64, ptr %.04160, align 1
  %i.ae = xor i64 %.0.copyload.i, %.0.copyload.i50
  store i64 %i.ae, ptr %i.c, align 8
  %.not.i47 = icmp ult i64 %.04061, 16
  br i1 %.not.i47, label %.preheader54, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %.0.copyload.i50.1 = load i64, ptr %i.k, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.04160, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.af, align 1
  %i.ag = xor i64 %.0.copyload.i.1, %.0.copyload.i50.1
  store i64 %i.ag, ptr %i.k, align 8
  br label %.preheader54

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %.1.i4857 = phi i64 [ %i.be, %.lr.ph58 ], [ %.1.i4857.unr, %.lr.ph58.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4857 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %.04160, i64 %.1.i4857
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = xor i8 %i.ak, %i.ai
  store i8 %i.al, ptr %i.ah, align 1, !tbaa !16
  %i.am = add nuw nsw i64 %.1.i4857, 1            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %.04160, i64 %i.am
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = xor i8 %i.aq, %i.ao
  store i8 %i.ar, ptr %i.an, align 1, !tbaa !16
  %i.as = add nuw nsw i64 %.1.i4857, 2            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %.04160, i64 %i.as
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  %i.ax = xor i8 %i.aw, %i.au
  store i8 %i.ax, ptr %i.at, align 1, !tbaa !16
  %i.ay = add nuw nsw i64 %.1.i4857, 3            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.04160, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = xor i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.az, align 1, !tbaa !16
  %i.be = add nuw nsw i64 %.1.i4857, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.be, %i.l
  br i1 %exitcond.not.3, label %mbedtls_xor.exit49, label %.lr.ph58, !llvm.loop !29

mbedtls_xor.exit49:                               ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %vec.epilog.middle.block, %.preheader54
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c)
  %i.bf = sub i64 %.04061, %i.l                   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04160, i64 %i.l
  %.not44 = icmp eq i64 %i.bf, 0
  br i1 %.not44, label %mbedtls_xor.exit, label %.lr.ph62, !llvm.loop !30

mbedtls_xor.exit:                                 ; preds = %mbedtls_xor.exit49
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.0.copyload.i52.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %4 = xor i64 %i.j, %.0.copyload.i52.1.pre
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %4, ptr %5, align 8
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %mbedtls_xor.exit, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bi = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ -135, %bb.a ], [ %i.bi, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @gcm_mult(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 425
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10
  switch i8 %i.b, label %bb.d [
    i8 2, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @mbedtls_aesni_gcm_mult(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %i.c) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16    ; 2 uses
  %i.g = lshr i8 %i.f, 4
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.j, align 1
  %i.k = and i8 %i.f, 15
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !8    ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.p, i64 60)
  %i.r = xor i64 %i.q, %.0.copyload.i.1.i
  %.0.copyload.i.i = load i64, ptr %i.i, align 1
  %i.s = and i64 %i.p, 15
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @last4, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !31
  %i.v = zext i16 %i.u to i64
  %i.w = shl nuw i64 %i.v, 48
  %i.x = lshr i64 %i.n, 4
  %i.y = xor i64 %.0.copyload.i.i, %i.x
  %i.z = xor i64 %i.y, %i.w
  br label %mbedtls_xor_no_simd.exit.i

mbedtls_xor_no_simd.exit.i:                       ; preds = %mbedtls_xor_no_simd.exit.i, %bb.c
  %.sroa.17.0.i = phi i64 [ %i.r, %bb.c ], [ %i.bd, %mbedtls_xor_no_simd.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.c ], [ %i.bb, %mbedtls_xor_no_simd.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 14, %bb.c ], [ %indvars.iv.next.i, %mbedtls_xor_no_simd.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16  ; 2 uses
  %i.ac = and i8 %i.ab, 15
  %i.ad = and i64 %.sroa.17.0.i, 15
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i, i64 %.sroa.17.0.i, i64 60)
  %i.af = lshr i64 %.sroa.0.0.i, 4
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @last4, i64 %i.ad
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !31
  %i.ai = zext i16 %i.ah to i64
  %i.aj = shl nuw i64 %i.ai, 48
  %i.ak = zext nneg i8 %i.ac to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak ; 2 uses
  %.0.copyload.i37.i = load i64, ptr %i.al, align 1
  %i.am = xor i64 %.0.copyload.i37.i, %i.af       ; 2 uses
  %i.an = xor i64 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.0.copyload.i37.1.i = load i64, ptr %i.ao, align 1
  %i.ap = xor i64 %.0.copyload.i37.1.i, %i.ae     ; 2 uses
  %i.aq = lshr i8 %i.ab, 4
  %i.ar = and i64 %i.ap, 15
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.ap, i64 60)
  %i.at = lshr i64 %i.an, 4
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @last4, i64 %i.ar
  %i.av = load i16, ptr %i.au, align 2, !tbaa !31
  %i.aw = zext i16 %i.av to i64
  %i.ax = shl nuw i64 %i.aw, 48
  %i.ay = zext nneg i8 %i.aq to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ay ; 2 uses
  %.0.copyload.i39.i = load i64, ptr %i.az, align 1
  %i.ba = xor i64 %i.at, %.0.copyload.i39.i
  %i.bb = xor i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.0.copyload.i39.1.i = load i64, ptr %i.bc, align 1
  %i.bd = xor i64 %.0.copyload.i39.1.i, %i.as     ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %gcm_mult_smalltable.exit, label %mbedtls_xor_no_simd.exit.i, !llvm.loop !33

gcm_mult_smalltable.exit:                         ; preds = %mbedtls_xor_no_simd.exit.i
  %i.be = tail call i64 @llvm.bswap.i64(i64 %i.bb)
  store i64 %i.be, ptr %2, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = tail call i64 @llvm.bswap.i64(i64 %i.bd)
  store i64 %i.bg, ptr %i.bf, align 1
  br label %bb.d

bb.d:                                             ; preds = %gcm_mult_smalltable.exit, %bb.b, %bb.a
  ret void
}

declare i32 @mbedtls_cipher_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_gcm_update_ad(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = add i64 %i.b, %2                         ; 3 uses
  %i.d = icmp uge i64 %i.c, %i.b
  %.not = icmp ult i64 %i.c, 2305843009213693952
  %or.cond = and i1 %i.d, %.not
  br i1 %or.cond, label %bb.b, label %mbedtls_xor.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, 15                         ; 6 uses
  %.not54 = icmp eq i64 %i.e, 0
  br i1 %.not54, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i64 16, %i.e
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %2) ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e ; 8 uses
  %.not.i6171 = icmp samesign ult i64 %spec.select, 8
  br i1 %.not.i6171, label %.preheader70, label %.preheader70.loopexit

.preheader70.loopexit:                            ; preds = %bb.c
  %.0.copyload.i64 = load i64, ptr %i.h, align 1
  %.0.copyload.i = load i64, ptr %1, align 1
  %i.i = xor i64 %.0.copyload.i, %.0.copyload.i64
  store i64 %i.i, ptr %i.h, align 1
  br label %.preheader70

.preheader70:                                     ; preds = %.preheader70.loopexit, %bb.c
  %.0.i60.lcssa = phi i64 [ 0, %bb.c ], [ 8, %.preheader70.loopexit ] ; 8 uses
  %i.j = icmp samesign ult i64 %.0.i60.lcssa, %spec.select
  br i1 %i.j, label %iter.check, label %mbedtls_xor.exit63

iter.check:                                       ; preds = %.preheader70
  %i.k = sub nuw nsw i64 %spec.select, %.0.i60.lcssa ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 8
  br i1 %min.iters.check, label %.lr.ph74.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.l = getelementptr i8, ptr %0, i64 %.0.i60.lcssa
  %i.m = getelementptr i8, ptr %i.l, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.m, i64 408
  %i.n = getelementptr i8, ptr %0, i64 %spec.select
  %i.o = getelementptr i8, ptr %i.n, i64 %i.e
  %scevgep101 = getelementptr i8, ptr %i.o, i64 408
  %scevgep102 = getelementptr i8, ptr %1, i64 %.0.i60.lcssa
  %scevgep103 = getelementptr i8, ptr %1, i64 %spec.select
  %bound0 = icmp ult ptr %scevgep, %scevgep103
  %bound1 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph74.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.p = and i64 %spec.select, 7                  ; 2 uses
  %n.vec108 = sub nsw i64 %i.k, %i.p              ; 2 uses
  %i.q = add nsw i64 %.0.i60.lcssa, %n.vec108
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 2 uses
  %i.r = add nuw i64 %.0.i60.lcssa, %index109     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r ; 2 uses
  %wide.load110 = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !35, !noalias !38
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %wide.load111 = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !38
  %i.u = xor <8 x i8> %wide.load111, %wide.load110
  store <8 x i8> %i.u, ptr %i.s, align 1, !tbaa !16, !alias.scope !35, !noalias !38
  %index.next112 = add nuw i64 %index109, 8       ; 2 uses
  %i.v = icmp eq i64 %index.next112, %n.vec108
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %i.p, 0
  br i1 %cmp.n113, label %mbedtls_xor.exit63, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i6273.ph = phi i64 [ %.0.i60.lcssa, %vector.memcheck ], [ %.0.i60.lcssa, %iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 4 uses
  %i.w = sub nsw i64 %spec.select, %.1.i6273.ph
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader, %.lr.ph74.prol
  %.1.i6273.prol = phi i64 [ %i.ac, %.lr.ph74.prol ], [ %.1.i6273.ph, %.lr.ph74.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i6273.prol ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i6273.prol
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %i.ab = xor i8 %i.aa, %i.y
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !16
  %i.ac = add nuw nsw i64 %.1.i6273.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !41

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %.1.i6273.unr = phi i64 [ %.1.i6273.ph, %.lr.ph74.preheader ], [ %i.ac, %.lr.ph74.prol ]
  %i.ad = sub nsw i64 %.1.i6273.ph, %spec.select
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %mbedtls_xor.exit63, label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %.1.i6273 = phi i64 [ %i.bc, %.lr.ph74 ], [ %.1.i6273.unr, %.lr.ph74.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i6273 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i6273
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aj = xor i8 %i.ai, %i.ag
  store i8 %i.aj, ptr %i.af, align 1, !tbaa !16
  %i.ak = add nuw nsw i64 %.1.i6273, 1            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = xor i8 %i.ao, %i.am
  store i8 %i.ap, ptr %i.al, align 1, !tbaa !16
  %i.aq = add nuw nsw i64 %.1.i6273, 2            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = xor i8 %i.au, %i.as
  store i8 %i.av, ptr %i.ar, align 1, !tbaa !16
  %i.aw = add nuw nsw i64 %.1.i6273, 3            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = xor i8 %i.ba, %i.ay
  store i8 %i.bb, ptr %i.ax, align 1, !tbaa !16
  %i.bc = add nuw nsw i64 %.1.i6273, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bc, %spec.select
  br i1 %exitcond.not.3, label %mbedtls_xor.exit63, label %.lr.ph74, !llvm.loop !42

mbedtls_xor.exit63:                               ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %vec.epilog.middle.block, %.preheader70
  %i.bd = add nuw nsw i64 %spec.select, %i.e
  %i.be = icmp eq i64 %i.bd, 16
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %mbedtls_xor.exit63
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mbedtls_xor.exit63
  %i.bf = phi i64 [ %.pre, %bb.d ], [ %i.b, %mbedtls_xor.exit63 ]
  %i.bg = sub i64 %2, %spec.select
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %.pre94 = add i64 %i.bf, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.pre-phi = phi i64 [ %.pre94, %bb.e ], [ %i.c, %bb.b ]
  %.047 = phi ptr [ %i.bh, %bb.e ], [ %1, %bb.b ] ; 2 uses
  %.045 = phi i64 [ %i.bg, %bb.e ], [ %2, %bb.b ] ; 3 uses
  store i64 %.pre-phi, ptr %i.a, align 8, !tbaa !34
  %i.bi = icmp ugt i64 %.045, 15
  br i1 %i.bi, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  br label %mbedtls_xor.exit59

mbedtls_xor.exit59:                               ; preds = %mbedtls_xor.exit59, %.lr.ph80
  %.179 = phi i64 [ %.045, %.lr.ph80 ], [ %i.bo, %mbedtls_xor.exit59 ]
  %.14878 = phi ptr [ %.047, %.lr.ph80 ], [ %i.bp, %mbedtls_xor.exit59 ] ; 3 uses
  %.0.copyload.i66 = load i64, ptr %i.bj, align 8
  %.0.copyload.i65 = load i64, ptr %.14878, align 1
  %i.bl = xor i64 %.0.copyload.i65, %.0.copyload.i66
  store i64 %i.bl, ptr %i.bj, align 8
  %.0.copyload.i66.1 = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.14878, i64 8
  %.0.copyload.i65.1 = load i64, ptr %i.bm, align 1
  %i.bn = xor i64 %.0.copyload.i65.1, %.0.copyload.i66.1
  store i64 %i.bn, ptr %i.bk, align 8
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bj)
  %i.bo = add i64 %.179, -16                      ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.14878, i64 16 ; 2 uses
  %i.bq = icmp ugt i64 %i.bo, 15
  br i1 %i.bq, label %mbedtls_xor.exit59, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %mbedtls_xor.exit59, %bb.f
  %.148.lcssa = phi ptr [ %.047, %bb.f ], [ %i.bp, %mbedtls_xor.exit59 ] ; 9 uses
  %.1.lcssa = phi i64 [ %.045, %bb.f ], [ %i.bo, %mbedtls_xor.exit59 ] ; 10 uses
  %.not55 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not55, label %mbedtls_xor.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %.not.i83 = icmp samesign ult i64 %.1.lcssa, 8
  br i1 %.not.i83, label %.preheader, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %bb.g
  %.0.copyload.i68 = load i64, ptr %i.br, align 8
  %.0.copyload.i67 = load i64, ptr %.148.lcssa, align 1
  %i.bs = xor i64 %.0.copyload.i67, %.0.copyload.i68
  store i64 %i.bs, ptr %i.br, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.g
  %.0.i.lcssa = phi i64 [ 0, %bb.g ], [ 8, %.preheader.loopexit ] ; 8 uses
  %i.bt = icmp samesign ult i64 %.0.i.lcssa, %.1.lcssa
  br i1 %i.bt, label %iter.check138, label %mbedtls_xor.exit

iter.check138:                                    ; preds = %.preheader
  %i.bu = sub nuw nsw i64 %.1.lcssa, %.0.i.lcssa  ; 2 uses
  %min.iters.check123 = icmp samesign ult i64 %i.bu, 8
  br i1 %min.iters.check123, label %.lr.ph89.preheader, label %vector.memcheck115

vector.memcheck115:                               ; preds = %iter.check138
  %i.bv = getelementptr i8, ptr %0, i64 %.0.i.lcssa
  %scevgep116 = getelementptr i8, ptr %i.bv, i64 408
  %i.bw = getelementptr i8, ptr %0, i64 %.1.lcssa
  %scevgep117 = getelementptr i8, ptr %i.bw, i64 408
  %scevgep118 = getelementptr i8, ptr %.148.lcssa, i64 %.0.i.lcssa
  %scevgep119 = getelementptr i8, ptr %.148.lcssa, i64 %.1.lcssa
  %bound0120 = icmp ult ptr %scevgep116, %scevgep119
  %bound1121 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict122 = and i1 %bound0120, %bound1121
  br i1 %found.conflict122, label %.lr.ph89.preheader, label %vec.epilog.ph142

vec.epilog.ph142:                                 ; preds = %vector.memcheck115
  %i.bx = and i64 %.1.lcssa, 7                    ; 2 uses
  %n.vec143 = sub nsw i64 %i.bu, %i.bx            ; 2 uses
  %i.by = add nsw i64 %.0.i.lcssa, %n.vec143
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph142
  %index145 = phi i64 [ 0, %vec.epilog.ph142 ], [ %index.next148, %vec.epilog.vector.body144 ] ; 2 uses
  %i.bz = add nuw i64 %.0.i.lcssa, %index145      ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bz ; 2 uses
  %wide.load146 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !16, !alias.scope !44, !noalias !47
  %i.cb = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %i.bz
  %wide.load147 = load <8 x i8>, ptr %i.cb, align 1, !tbaa !16, !alias.scope !47
  %i.cc = xor <8 x i8> %wide.load147, %wide.load146
  store <8 x i8> %i.cc, ptr %i.ca, align 1, !tbaa !16, !alias.scope !44, !noalias !47
  %index.next148 = add nuw i64 %index145, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.cd, label %vec.epilog.middle.block149, label %vec.epilog.vector.body144, !llvm.loop !49

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body144
  %cmp.n150 = icmp eq i64 %i.bx, 0
  br i1 %cmp.n150, label %mbedtls_xor.exit, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %vector.memcheck115, %iter.check138, %vec.epilog.middle.block149
  %.1.i88.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck115 ], [ %.0.i.lcssa, %iter.check138 ], [ %i.by, %vec.epilog.middle.block149 ] ; 4 uses
  %i.ce = sub i64 %.1.lcssa, %.1.i88.ph
  %xtraiter153 = and i64 %i.ce, 3                 ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %.lr.ph89.prol.loopexit, label %.lr.ph89.prol

.lr.ph89.prol:                                    ; preds = %.lr.ph89.preheader, %.lr.ph89.prol
  %.1.i88.prol = phi i64 [ %i.ck, %.lr.ph89.prol ], [ %.1.i88.ph, %.lr.ph89.preheader ] ; 3 uses
  %prol.iter155 = phi i64 [ %prol.iter155.next, %.lr.ph89.prol ], [ 0, %.lr.ph89.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 %.1.i88.prol ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %.1.i88.prol
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = xor i8 %i.ci, %i.cg
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !16
  %i.ck = add nuw i64 %.1.i88.prol, 1             ; 2 uses
  %prol.iter155.next = add i64 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i64 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %.lr.ph89.prol.loopexit, label %.lr.ph89.prol, !llvm.loop !50

.lr.ph89.prol.loopexit:                           ; preds = %.lr.ph89.prol, %.lr.ph89.preheader
  %.1.i88.unr = phi i64 [ %.1.i88.ph, %.lr.ph89.preheader ], [ %i.ck, %.lr.ph89.prol ]
  %i.cl = sub i64 %.1.i88.ph, %.1.lcssa
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %mbedtls_xor.exit, label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89
  %.1.i88 = phi i64 [ %i.dk, %.lr.ph89 ], [ %.1.i88.unr, %.lr.ph89.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.br, i64 %.1.i88 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %.1.i88
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !16
  %i.cr = xor i8 %i.cq, %i.co
  store i8 %i.cr, ptr %i.cn, align 1, !tbaa !16
  %i.cs = add nuw i64 %.1.i88, 1                  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %i.cs
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !16
  %i.cx = xor i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %i.ct, align 1, !tbaa !16
  %i.cy = add nuw i64 %.1.i88, 2                  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cy ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !16
  %i.dd = xor i8 %i.dc, %i.da
  store i8 %i.dd, ptr %i.cz, align 1, !tbaa !16
  %i.de = add nuw i64 %.1.i88, 3                  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.de ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !16
  %i.dh = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %i.de
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !16
  %i.dj = xor i8 %i.di, %i.dg
  store i8 %i.dj, ptr %i.df, align 1, !tbaa !16
  %i.dk = add nuw i64 %.1.i88, 4                  ; 2 uses
  %exitcond93.not.3 = icmp eq i64 %i.dk, %.1.lcssa
  br i1 %exitcond93.not.3, label %mbedtls_xor.exit, label %.lr.ph89, !llvm.loop !51

mbedtls_xor.exit:                                 ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89, %vec.epilog.middle.block149, %.preheader, %._crit_edge, %bb.a
  %.0 = phi i32 [ -135, %bb.a ], [ 0, %._crit_edge ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block149 ], [ 0, %.lr.ph89 ], [ 0, %.lr.ph89.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = icmp ult i64 %4, %2
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %5, align 8, !tbaa !8
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt ptr %3, %1
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, %2
  %or.cond = and i1 %i.d, %i.h
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52   ; 4 uses
  %i.k = add i64 %i.j, %2                         ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.k, 68719476704
  %or.cond96 = or i1 %i.l, %i.m
  br i1 %or.cond96, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = and i64 %i.p, 15
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r)
  %.pre = load i64, ptr %i.i, align 8, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.s = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.e ] ; 2 uses
  %i.t = and i64 %i.s, 15                         ; 4 uses
  %.not88 = icmp eq i64 %i.t, 0
  br i1 %.not88, label %.thread, label %bb.i

end_hunk_0
