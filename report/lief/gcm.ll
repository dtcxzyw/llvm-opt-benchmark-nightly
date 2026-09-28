Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/gcm?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mbedtls_gcm_setkey:bb.a
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
  %sh.diff59.i = lshr i64 %i.ag, 49
  %tr.sh.diff60.i = trunc i64 %sh.diff59.i to i8
  %i.aq = and i8 %tr.sh.diff60.i, -128
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
  %sh.diff61.i = lshr i64 %i.av, 49
  %tr.sh.diff62.i = trunc i64 %sh.diff61.i to i8
  %i.bf = and i8 %tr.sh.diff62.i, -128
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
  %i.bp = load i64, ptr %i.ba, align 8, !tbaa !9
  %i.bq = call i64 @llvm.bswap.i64(i64 %i.bp)     ; 4 uses
  store i64 %i.bq, ptr %i.ba, align 8
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !9
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
  store i64 0, ptr %i.a, align 8, !tbaa !9
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
  %scevgep71 = getelementptr i8, ptr %0, i64 392
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  br label %.lr.ph62

.preheader53:                                     ; preds = %mbedtls_xor.exit49
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.0.copyload.i52.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %4 = xor i64 %i.j, %.0.copyload.i52.1.pre
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %4, ptr %5, align 8
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c)
  br label %bb.d

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %mbedtls_xor.exit49
  %.061 = phi ptr [ %i.bg, %mbedtls_xor.exit49 ], [ %2, %.lr.ph62.preheader ] ; 11 uses
  %.04060 = phi i64 [ %i.bf, %mbedtls_xor.exit49 ], [ %3, %.lr.ph62.preheader ] ; 4 uses
  %i.l = tail call i64 @llvm.umin.i64(i64 %.04060, i64 16) ; 10 uses
  %.not.i4755 = icmp ult i64 %.04060, 8
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
  %scevgep70 = getelementptr i8, ptr %scevgep, i64 %.0.i46.lcssa
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.l
  %scevgep73 = getelementptr i8, ptr %.061, i64 %.0.i46.lcssa
  %scevgep74 = getelementptr i8, ptr %.061, i64 %i.l
  %bound0 = icmp ult ptr %scevgep70, %scevgep74
  %bound1 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph58.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.o = and i64 %i.l, 7                          ; 2 uses
  %n.vec79 = sub nsw i64 %i.n, %i.o               ; 2 uses
  %i.p = add nsw i64 %.0.i46.lcssa, %n.vec79
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 2 uses
  %i.q = add nuw i64 %.0.i46.lcssa, %index80      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q ; 2 uses
  %wide.load81 = load <8 x i8>, ptr %i.r, align 1, !tbaa !16, !alias.scope !31, !noalias !32
  %i.s = getelementptr inbounds nuw i8, ptr %.061, i64 %i.q
  %wide.load82 = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !32
  %i.t = xor <8 x i8> %wide.load82, %wide.load81
  store <8 x i8> %i.t, ptr %i.r, align 1, !tbaa !16, !alias.scope !31, !noalias !32
  %index.next83 = add nuw i64 %index80, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %i.o, 0
  br i1 %cmp.n84, label %mbedtls_xor.exit49, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
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
  %i.y = getelementptr inbounds nuw i8, ptr %.061, i64 %.1.i4857.prol
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = xor i8 %i.z, %i.x
  store i8 %i.aa, ptr %i.w, align 1, !tbaa !16
  %i.ab = add nuw nsw i64 %.1.i4857.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol, !llvm.loop !28

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %.1.i4857.unr = phi i64 [ %.1.i4857.ph, %.lr.ph58.preheader ], [ %i.ab, %.lr.ph58.prol ]
  %i.ac = sub nsw i64 %.1.i4857.ph, %i.l
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %mbedtls_xor.exit49, label %.lr.ph58

.lr.ph:                                           ; preds = %.lr.ph62
  %.0.copyload.i50 = load i64, ptr %i.c, align 8
  %.0.copyload.i = load i64, ptr %.061, align 1
  %i.ae = xor i64 %.0.copyload.i, %.0.copyload.i50
  store i64 %i.ae, ptr %i.c, align 8
  %.not.i47 = icmp ult i64 %.04060, 16
  br i1 %.not.i47, label %.preheader54, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %.0.copyload.i50.1 = load i64, ptr %i.k, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.061, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.af, align 1
  %i.ag = xor i64 %.0.copyload.i.1, %.0.copyload.i50.1
  store i64 %i.ag, ptr %i.k, align 8
  br label %.preheader54

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %.1.i4857 = phi i64 [ %i.be, %.lr.ph58 ], [ %.1.i4857.unr, %.lr.ph58.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4857 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %.061, i64 %.1.i4857
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = xor i8 %i.ak, %i.ai
  store i8 %i.al, ptr %i.ah, align 1, !tbaa !16
  %i.am = add nuw nsw i64 %.1.i4857, 1            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %.061, i64 %i.am
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = xor i8 %i.aq, %i.ao
  store i8 %i.ar, ptr %i.an, align 1, !tbaa !16
  %i.as = add nuw nsw i64 %.1.i4857, 2            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %.061, i64 %i.as
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  %i.ax = xor i8 %i.aw, %i.au
  store i8 %i.ax, ptr %i.at, align 1, !tbaa !16
  %i.ay = add nuw nsw i64 %.1.i4857, 3            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.061, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = xor i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.az, align 1, !tbaa !16
  %i.be = add nuw nsw i64 %.1.i4857, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.be, %i.l
  br i1 %exitcond.not.3, label %mbedtls_xor.exit49, label %.lr.ph58, !llvm.loop !29

mbedtls_xor.exit49:                               ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %vec.epilog.middle.block, %.preheader54
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c)
  %i.bf = sub nuw i64 %.04060, %i.l               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.061, i64 %i.l
  %.not44 = icmp eq i64 %i.bf, 0
  br i1 %.not44, label %.preheader53, label %.lr.ph62, !llvm.loop !30

bb.d:                                             ; preds = %.preheader53, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bi = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.041 = phi i32 [ -135, %bb.a ], [ %i.bi, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @gcm_mult(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 425
  %i.b = load i8, ptr %i.a, align 1, !tbaa !15
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
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !9    ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.p, i64 60)
  %i.r = xor i64 %i.q, %.0.copyload.i.1.i
  %.0.copyload.i.i = load i64, ptr %i.i, align 1
  %i.s = and i64 %i.p, 15
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @last4, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !35
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
end_hunk_0
